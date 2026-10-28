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

/** One webhook subscription of the portal: where deliveries go, which events they cover, and how they have fared. */
public struct WebhooksConfigDto: Sendable, Codable, Hashable {

    /** The identifier of the subscription, which is what `PUT api/2.0/settings/webhook`,  `DELETE api/2.0/settings/webhook/{id}` and the `configId` filter of the delivery log address it by. */
    public var id: Int
    /** The label the subscription was given, free text with no meaning to the portal. */
    public var name: String?
    /** The address every delivery is posted to. The signing secret that lets the receiver verify a delivery is  never part of this answer, so it has to be kept from the moment the subscription was created. */
    public var uri: String?
    /** Whether the subscription is delivering. While it is `false` events are dropped rather than queued, so  nothing arrives late after it is switched back on. */
    public var enabled: Bool?
    /** Whether the certificate of `uri` is verified before a delivery. While it is `false` a self-signed  certificate is accepted as well. */
    public var ssl: Bool?
    /** The events the subscription covers, as the bits of `GET api/2.0/settings/webhook/triggers` added  together. `0` is the catch-all and means every event, not none. */
    public var triggers: WebhookTrigger?
    /** The single room or file the subscription is narrowed to, empty for a subscription that covers the whole  portal. It is kept as an opaque value, so both a numeric and a third-party identifier can appear. */
    public var targetId: String?
    /** The member who created the subscription, which is also who a non-administrator is limited to seeing. It is  empty for a subscription created by a portal background job. */
    public var createdBy: EmployeeDto?
    /** When the subscription was created, in the portal time zone. */
    public var createdOn: Date?
    /** The member who last changed the subscription, empty while nobody has changed it since it was created. */
    public var modifiedBy: EmployeeDto?
    /** When it was last changed, in the portal time zone, and empty under the same condition as `modifiedBy`. */
    public var modifiedOn: Date?
    /** When a delivery last failed, in the portal time zone. It is empty for a subscription that has never  failed, and it is not cleared by a later success - compare it with `lastSuccessOn` to see which came last. */
    public var lastFailureOn: Date?
    /** What the target answered on that failure, truncated, for diagnosing without opening the delivery log. It  is empty when the failure produced no body at all, a timeout for instance. */
    public var lastFailureContent: String?
    /** When a delivery last succeeded, in the portal time zone, empty for a subscription that has never  delivered. Both this and `lastFailureOn` being empty means nothing has been attempted yet. */
    public var lastSuccessOn: Date?

    public init(id: Int, name: String? = nil, uri: String? = nil, enabled: Bool? = nil, ssl: Bool? = nil, triggers: WebhookTrigger? = nil, targetId: String? = nil, createdBy: EmployeeDto? = nil, createdOn: Date? = nil, modifiedBy: EmployeeDto? = nil, modifiedOn: Date? = nil, lastFailureOn: Date? = nil, lastFailureContent: String? = nil, lastSuccessOn: Date? = nil) {
        self.id = id
        self.name = name
        self.uri = uri
        self.enabled = enabled
        self.ssl = ssl
        self.triggers = triggers
        self.targetId = targetId
        self.createdBy = createdBy
        self.createdOn = createdOn
        self.modifiedBy = modifiedBy
        self.modifiedOn = modifiedOn
        self.lastFailureOn = lastFailureOn
        self.lastFailureContent = lastFailureContent
        self.lastSuccessOn = lastSuccessOn
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case uri
        case enabled
        case ssl
        case triggers
        case targetId
        case createdBy
        case createdOn
        case modifiedBy
        case modifiedOn
        case lastFailureOn
        case lastFailureContent
        case lastSuccessOn
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(uri, forKey: .uri)
        try container.encodeIfPresent(enabled, forKey: .enabled)
        try container.encodeIfPresent(ssl, forKey: .ssl)
        try container.encodeIfPresent(triggers, forKey: .triggers)
        try container.encodeIfPresent(targetId, forKey: .targetId)
        try container.encodeIfPresent(createdBy, forKey: .createdBy)
        try container.encodeIfPresent(createdOn, forKey: .createdOn)
        try container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
        try container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
        try container.encodeIfPresent(lastFailureOn, forKey: .lastFailureOn)
        try container.encodeIfPresent(lastFailureContent, forKey: .lastFailureContent)
        try container.encodeIfPresent(lastSuccessOn, forKey: .lastSuccessOn)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension WebhooksConfigDto: Identifiable {}
