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

/** The webhook configuration parameters. */
public struct WebhooksConfigDto: Sendable, Codable, Hashable {

    /** The webhook ID. */
    public var id: Int
    /** The webhook name. */
    public var name: String?
    /** The webhook URI. */
    public var uri: String?
    /** Specifies if the webhooks are enabled or not. */
    public var enabled: Bool?
    /** The webhook SSL verification (enabled or not). */
    public var ssl: Bool?
    public var triggers: WebhookTrigger?
    /** The webhook target ID. */
    public var targetId: String?
    public var createdBy: EmployeeDto?
    /** The date and time when the webhook was created. */
    public var createdOn: Date?
    public var modifiedBy: EmployeeDto?
    /** The date and time when the webhook was modified. */
    public var modifiedOn: Date?
    /** The date and time of the webhook last failure. */
    public var lastFailureOn: Date?
    /** The webhook last failure content. */
    public var lastFailureContent: String?
    /** The date and time of the webhook last success. */
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
