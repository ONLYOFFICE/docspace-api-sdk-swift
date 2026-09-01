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

/** The SSO IdP settings. */
public struct SsoIdpSettings: Sendable, Codable, Hashable {

    /** The entity ID. */
    public var entityId: String?
    /** The SSO URL. */
    public var ssoUrl: String?
    /** The SSO binding. */
    public var ssoBinding: String?
    /** The SLO URL. */
    public var sloUrl: String?
    /** The SLO binding. */
    public var sloBinding: String?
    /** The name ID format. */
    public var nameIdFormat: String?

    public init(entityId: String? = nil, ssoUrl: String? = nil, ssoBinding: String? = nil, sloUrl: String? = nil, sloBinding: String? = nil, nameIdFormat: String? = nil) {
        self.entityId = entityId
        self.ssoUrl = ssoUrl
        self.ssoBinding = ssoBinding
        self.sloUrl = sloUrl
        self.sloBinding = sloBinding
        self.nameIdFormat = nameIdFormat
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case entityId
        case ssoUrl
        case ssoBinding
        case sloUrl
        case sloBinding
        case nameIdFormat
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(entityId, forKey: .entityId)
        try container.encodeIfPresent(ssoUrl, forKey: .ssoUrl)
        try container.encodeIfPresent(ssoBinding, forKey: .ssoBinding)
        try container.encodeIfPresent(sloUrl, forKey: .sloUrl)
        try container.encodeIfPresent(sloBinding, forKey: .sloBinding)
        try container.encodeIfPresent(nameIdFormat, forKey: .nameIdFormat)
    }
}

