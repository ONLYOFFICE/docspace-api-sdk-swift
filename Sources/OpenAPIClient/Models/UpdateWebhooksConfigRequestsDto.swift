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

/** The webhook subscription being changed, with the parameters it is to have afterwards. */
public struct UpdateWebhooksConfigRequestsDto: Sendable, Codable, Hashable {

    public static let nameRule = StringRule(minLength: 0, maxLength: 50, pattern: nil)
    public static let uriRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    public static let secretKeyRule = StringRule(minLength: 0, maxLength: 50, pattern: nil)
    public static let targetIdRule = StringRule(minLength: 0, maxLength: 255, pattern: nil)
    /** The label the subscription is listed under. It is for the administrator reading the list and is never sent to  the target; it does not have to be unique. */
    public var name: String
    /** The address the portal posts the event payload to. It has to be an absolute `http` or `https` address outside  the installation own network, and it is probed before anything is stored: it must answer a HEAD request with  a success code, and a redirect does not count as one. */
    public var uri: String
    /** The shared secret the payload signature is computed with, so the receiver can tell a genuine call from a  forged one. It has to satisfy the portal password rules published by  `GET api/2.0/settings/security/password`, and it is never echoed back by any operation. On an update an empty  value keeps the secret already stored. */
    public var secretKey: String?
    /** Whether the subscription delivers at all. While it is off the matching events are dropped rather than queued,  so nothing from that period arrives once it is switched on again. */
    public var enabled: Bool?
    /** Whether the target certificate is verified. Setting it demands an `https` target with a valid certificate;  leaving it off delivers without checking the certificate at all. */
    public var ssl: Bool?
    /** The events the subscription listens for, as a bitmask combining the flags; 0 subscribes to all of them. Take  the flags the caller role is allowed to use from `GET api/2.0/settings/webhook/triggers`, since a flag beyond  that set is refused with 400. A subscription still only fires for events its creator may see. */
    public var triggers: WebhookTrigger?
    /** The single entity the subscription is narrowed to, by its identifier - a room or a file, for instance.  Leaving it out delivers events about every entity the subscribed triggers cover. */
    public var targetId: String?
    /** The subscription to act on, by the `id` that `GET api/2.0/settings/webhook` reports. It travels in the body  rather than in the path, and an id that exists in no portal subscription answers 404. */
    public var id: Int

    public init(name: String, uri: String, secretKey: String? = nil, enabled: Bool? = nil, ssl: Bool? = nil, triggers: WebhookTrigger? = nil, targetId: String? = nil, id: Int) {
        self.name = name
        self.uri = uri
        self.secretKey = secretKey
        self.enabled = enabled
        self.ssl = ssl
        self.triggers = triggers
        self.targetId = targetId
        self.id = id
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case uri
        case secretKey
        case enabled
        case ssl
        case triggers
        case targetId
        case id
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encode(uri, forKey: .uri)
        try container.encodeIfPresent(secretKey, forKey: .secretKey)
        try container.encodeIfPresent(enabled, forKey: .enabled)
        try container.encodeIfPresent(ssl, forKey: .ssl)
        try container.encodeIfPresent(triggers, forKey: .triggers)
        try container.encodeIfPresent(targetId, forKey: .targetId)
        try container.encode(id, forKey: .id)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension UpdateWebhooksConfigRequestsDto: Identifiable {}
