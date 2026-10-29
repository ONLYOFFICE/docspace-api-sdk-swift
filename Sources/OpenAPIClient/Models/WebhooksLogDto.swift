//
//  Copyright (c) Ascensio System SIA 2026
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
import Foundation

/** One delivery of a webhook event, updated in place by its automatic retries: what was sent where, and what came  back the last time. A manual retry is a delivery record of its own for the same event. */
public struct WebhooksLogDto: Sendable, Codable, Hashable {

    /** The identifier of this delivery record, which is what `PUT api/2.0/settings/webhook/{id}/retry` re-sends.  The automatic retries of the delivery update this same record, while a manual retry gets a record and an  identifier of its own. */
    public var id: Int
    /** The identifier of the event the delivery is for, which the receiver sees as `event.id` and in the  `x-docspace-event-id` header. It is the `id` of the event's first delivery record, so it equals `id` there and  stays the same on every manual retry, which makes it the value to group the records of one event by. */
    public var eventId: Int?
    /** The member who asked for this delivery with a manual retry. It is empty on the first delivery of an event,  which the portal sends by itself. */
    public var retriedBy: EmployeeDto?
    /** The name of the subscription the delivery belongs to. It is the name as it stands now, so it follows a  later rename of the subscription rather than recording what it was called at the time. */
    public var configName: String?
    /** The event that caused the delivery, as a single bit rather than a mask - a delivery is always for one  event, even though a subscription covers several. */
    public var trigger: WebhookTrigger?
    /** When this delivery record was queued, as a UTC instant ending in `Z`. For the first delivery that is when the  event happened; for a manual retry it is the  moment of the retry. Records come back newest first by this moment. */
    public var creationTime: Date?
    /** The HTTP method the delivery was sent with, which is `POST` for every webhook the portal sends. */
    public var method: String?
    /** The address the delivery is sent to: the subscription's URL as it stands now. The journal does not keep the  address of each attempt, so after the subscription's URL changes, an older record names the new one too. */
    public var route: String?
    /** The headers the portal sent, serialised as one string, including the signature header a receiver verifies  the payload with. */
    public var requestHeaders: String?
    /** The body the portal sent, which is the event payload as JSON text. It is stored as it was sent, so it  still describes the entity as it looked at the time of the event. */
    public var requestPayload: String?
    /** The headers the target answered with on the latest attempt, serialised the same way as `requestHeaders`. It  is empty until an attempt is answered, and when the target was not reached. */
    public var responseHeaders: String?
    /** The body the target answered with on the latest attempt, truncated for storage. Empty under the same  conditions as `responseHeaders`, and also for a target that answers with no body at all. A record the portal  stopped without sending holds the portal's own note here instead - a text that starts with `Not sent:` and  gives the reason - which is not an answer of the target: on a record that never went out `status` is then `0`  and `responseHeaders` is empty, while on one stopped after failed attempts they still describe the last of them. */
    public var responsePayload: String?
    /** The HTTP status code the target answered on the latest attempt. It is `0` while the first attempt is still  on its way and on one that never reached the target, so `0` is not a failure code - it is the absence of an  answer. While `nextAttemptOn` is set it is the status of the failed attempt that caused the retry. */
    public var status: Int?
    /** When the successful answer came back, as a UTC instant ending in `Z` like `creationTime`. It stays empty until an  attempt succeeds, and for good once the portal has given up retrying. */
    public var delivery: Date?
    /** How many times the portal has tried to deliver this record so far. A failed attempt is retried with  growing pauses - on the default schedule about 1 minute, 5 minutes, 30 minutes, 2, 5 and 10 hours, though  an installation may configure its own - all of them under the same record and the same  `x-docspace-event-id` header, so a receiver can drop a delivery it has already processed. The one exception  is a portal moved to another region while retries are pending: the moved records get new IDs, so the attempts  made there carry a new `x-docspace-event-id`. */
    public var attempts: Int?
    /** When the next attempt is due, as a UTC instant ending in `Z` like `creationTime`. While an attempt is being sent  right now it holds the moment that attempt's lease expires, a few minutes ahead, rather than a scheduled retry;  it changes again once the attempt ends. Empty means no attempt will follow: the record is delivered, its retries  ran out, a manual retry of the same event took over from it, or the portal stopped it - because the subscription  was disabled or removed or its address rejected, the subscription's creator may no longer receive the event,  the stored body cannot be read or is in the payload format of a previous version, the portal is removed, the  record waited longer than the retry schedule allows, the portal was restored from a backup taken before the  record was answered, or the portal was moved to another region while the record was being sent. A stopped  record that was never attempted says why in `responsePayload`; one that was keeps the target's last answer there. */
    public var nextAttemptOn: Date?

    public init(id: Int, eventId: Int? = nil, retriedBy: EmployeeDto? = nil, configName: String? = nil, trigger: WebhookTrigger? = nil, creationTime: Date? = nil, method: String? = nil, route: String? = nil, requestHeaders: String? = nil, requestPayload: String? = nil, responseHeaders: String? = nil, responsePayload: String? = nil, status: Int? = nil, delivery: Date? = nil, attempts: Int? = nil, nextAttemptOn: Date? = nil) {
        self.id = id
        self.eventId = eventId
        self.retriedBy = retriedBy
        self.configName = configName
        self.trigger = trigger
        self.creationTime = creationTime
        self.method = method
        self.route = route
        self.requestHeaders = requestHeaders
        self.requestPayload = requestPayload
        self.responseHeaders = responseHeaders
        self.responsePayload = responsePayload
        self.status = status
        self.delivery = delivery
        self.attempts = attempts
        self.nextAttemptOn = nextAttemptOn
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case eventId
        case retriedBy
        case configName
        case trigger
        case creationTime
        case method
        case route
        case requestHeaders
        case requestPayload
        case responseHeaders
        case responsePayload
        case status
        case delivery
        case attempts
        case nextAttemptOn
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encodeIfPresent(eventId, forKey: .eventId)
        try container.encodeIfPresent(retriedBy, forKey: .retriedBy)
        try container.encodeIfPresent(configName, forKey: .configName)
        try container.encodeIfPresent(trigger, forKey: .trigger)
        try container.encodeIfPresent(creationTime, forKey: .creationTime)
        try container.encodeIfPresent(method, forKey: .method)
        try container.encodeIfPresent(route, forKey: .route)
        try container.encodeIfPresent(requestHeaders, forKey: .requestHeaders)
        try container.encodeIfPresent(requestPayload, forKey: .requestPayload)
        try container.encodeIfPresent(responseHeaders, forKey: .responseHeaders)
        try container.encodeIfPresent(responsePayload, forKey: .responsePayload)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(delivery, forKey: .delivery)
        try container.encodeIfPresent(attempts, forKey: .attempts)
        try container.encodeIfPresent(nextAttemptOn, forKey: .nextAttemptOn)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension WebhooksLogDto: Identifiable {}
