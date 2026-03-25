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

/** The request parameters for updating the webhook configuration. */
public struct UpdateWebhooksConfigRequestsDto: Sendable, Codable, Hashable {

    public static let nameRule = StringRule(minLength: 0, maxLength: 50, pattern: nil)
    public static let uriRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    public static let secretKeyRule = StringRule(minLength: 0, maxLength: 50, pattern: nil)
    public static let targetIdRule = StringRule(minLength: 0, maxLength: 255, pattern: nil)
    /** The human-readable name of the webhook configuration. */
    public var name: String
    /** The destination URL where the webhook events will be sent. */
    public var uri: String
    /** The webhook secret key used to sign the webhook payloads for the security verification. */
    public var secretKey: String?
    /** Specifies whether the webhook configuration is active or not. */
    public var enabled: Bool?
    /** Specifies whether the SSL certificate verification is required or not. */
    public var ssl: Bool?
    public var triggers: WebhookTrigger?
    /** Target ID */
    public var targetId: String?
    /** The webhook configuration ID. */
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
