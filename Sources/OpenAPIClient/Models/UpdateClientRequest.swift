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

/** Client update request containing modified client details */
public struct UpdateClientRequest: Sendable, Codable, Hashable {

    public static let nameRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    public static let descriptionRule = StringRule(minLength: 0, maxLength: 255, pattern: nil)
    public static let logoRule = StringRule(minLength: 1, maxLength: nil, pattern: "/^data:image\/(?:png|jpeg|jpg|svg\\+xml);base64,.*.{1,}/")
    public static let allowedOriginsRule = ArrayRule(minItems: 1, maxItems: 12, uniqueItems: true)
    /** The name of the client */
    public var name: String?
    /** The description of the client */
    public var description: String?
    /** The logo of the client in base64 format */
    public var logo: String?
    public var _public: Bool?
    /** Indicates whether PKCE is allowed for the client */
    public var allowPkce: Bool?
    /** Indicates whether client is accessible by third-party tenants */
    public var isPublic: Bool?
    /** The allowed origins for the client */
    public var allowedOrigins: Set<String>?

    public init(name: String? = nil, description: String? = nil, logo: String? = nil, _public: Bool? = nil, allowPkce: Bool? = nil, isPublic: Bool? = nil, allowedOrigins: Set<String>? = nil) {
        self.name = name
        self.description = description
        self.logo = logo
        self._public = _public
        self.allowPkce = allowPkce
        self.isPublic = isPublic
        self.allowedOrigins = allowedOrigins
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case description
        case logo
        case _public = "public"
        case allowPkce = "allow_pkce"
        case isPublic = "is_public"
        case allowedOrigins = "allowed_origins"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(logo, forKey: .logo)
        try container.encodeIfPresent(_public, forKey: ._public)
        try container.encodeIfPresent(allowPkce, forKey: .allowPkce)
        try container.encodeIfPresent(isPublic, forKey: .isPublic)
        try container.encodeIfPresent(allowedOrigins, forKey: .allowedOrigins)
    }
}

