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

/** One delivery attempt of a webhook: what was sent where, and what came back. */
public struct WebhooksLogDto: Sendable, Codable, Hashable {

    /** The identifier of this attempt, which is what the `eventId` filter of  `GET api/2.0/settings/webhooks/log` picks one record by and what  `PUT api/2.0/settings/webhook/{id}/retry` re-sends. A retry produces a new record with a new identifier  and leaves this one as it is. */
    public var id: Int
    /** The name of the subscription the attempt belongs to. It is the name as it stands now, so it follows a  later rename of the subscription rather than recording what it was called at the time. */
    public var configName: String?
    /** The event that caused the attempt, as a single bit rather than a mask - a delivery is always for one  event, even though a subscription covers several. */
    public var trigger: WebhookTrigger?
    /** When the attempt was queued, as a UTC instant - unlike the dates of the subscription itself, which come  in the portal time zone. Records come back newest first by this moment. */
    public var creationTime: Date?
    /** The HTTP method the delivery was sent with, which is `POST` for every webhook the portal sends. */
    public var method: String?
    /** The address the delivery was sent to, which is the subscription's URL as it stood at the time - so an  older record can name an address the subscription no longer uses. */
    public var route: String?
    /** The headers the portal sent, serialised as one string, including the signature header a receiver verifies  the payload with. */
    public var requestHeaders: String?
    /** The body the portal sent, which is the event payload as JSON text. It is stored as it was sent, so it  still describes the entity as it looked at the time of the event. */
    public var requestPayload: String?
    /** The headers the target answered with, serialised the same way as `requestHeaders`. It is empty while the  attempt is still on its way and on an attempt that never reached the target. */
    public var responseHeaders: String?
    /** The body the target answered with, truncated for storage. Empty under the same conditions as  `responseHeaders`, and also for a target that answers with no body at all. */
    public var responsePayload: String?
    /** The HTTP status code the target answered. It is `0` while the attempt is still on its way and on one that  never reached the target, so `0` is not a failure code - it is the absence of an answer. */
    public var status: Int?
    /** When the answer came back, as a UTC instant like `creationTime`. It is empty while the attempt is still on  its way, which together with `status` is how a pending record is told from a finished one. */
    public var delivery: Date?

    public init(id: Int, configName: String? = nil, trigger: WebhookTrigger? = nil, creationTime: Date? = nil, method: String? = nil, route: String? = nil, requestHeaders: String? = nil, requestPayload: String? = nil, responseHeaders: String? = nil, responsePayload: String? = nil, status: Int? = nil, delivery: Date? = nil) {
        self.id = id
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
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
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
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
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
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension WebhooksLogDto: Identifiable {}
