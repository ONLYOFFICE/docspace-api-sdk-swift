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

    public static let nameRule = StringRule(minLength: 3, maxLength: 256, pattern: nil)
    public static let descriptionRule = StringRule(minLength: 0, maxLength: 255, pattern: nil)
    public static let logoRule = StringRule(minLength: 1, maxLength: nil, pattern: "/^data:image\/(?:png|jpeg|jpg|svg\\+xml);base64,.*.{1,}/")
    public static let scopesRule = ArrayRule(minItems: 1, maxItems: nil, uniqueItems: true)
    public static let allowedOriginsRule = ArrayRule(minItems: 1, maxItems: 12, uniqueItems: true)
    public static let redirectUrisRule = ArrayRule(minItems: 1, maxItems: 12, uniqueItems: true)
    /** The display name shown to the user on the consent screen. It has to be between 3 and 256 characters long. */
    public var name: String
    /** The free-text description shown next to the name on the consent screen, at most 255 characters. */
    public var description: String?
    /** The client logo as a data URI carrying base64 image data, shown on the consent screen. Only png, jpeg, jpg and svg+xml are accepted. */
    public var logo: String
    /** The permissions the client may ask for, named as they appear in the tenant scope catalogue - for example files:read, rooms:write or openid. A client cannot request a scope that is not listed here. */
    public var scopes: Set<String>
    /** Whether the client may use PKCE. Turning it on lets the client authenticate with the none method and prove itself with a code verifier instead of sending a secret, which is what a client that cannot keep a secret needs. */
    public var allowPkce: Bool?
    /** The web origins allowed to call the portal on behalf of this client, used for the CORS check. The set holds between 1 and 12 addresses. */
    public var allowedOrigins: Set<String>
    /** The URIs an authorization code may be delivered to. An authorization request naming any other URI is refused, and the set holds between 1 and 12 addresses. */
    public var redirectUris: Set<String>
    /** Whether the client is offered to third-party tenants rather than only to the tenant that registers it. */
    public var isPublic: Bool?

    public init(name: String, description: String? = nil, logo: String, scopes: Set<String>, allowPkce: Bool? = nil, allowedOrigins: Set<String>, redirectUris: Set<String>, isPublic: Bool? = nil) {
        self.name = name
        self.description = description
        self.logo = logo
        self.scopes = scopes
        self.allowPkce = allowPkce
        self.allowedOrigins = allowedOrigins
        self.redirectUris = redirectUris
        self.isPublic = isPublic
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case description
        case logo
        case scopes
        case allowPkce = "allow_pkce"
        case allowedOrigins = "allowed_origins"
        case redirectUris = "redirect_uris"
        case isPublic = "is_public"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encode(logo, forKey: .logo)
        try container.encode(scopes, forKey: .scopes)
        try container.encodeIfPresent(allowPkce, forKey: .allowPkce)
        try container.encode(allowedOrigins, forKey: .allowedOrigins)
        try container.encode(redirectUris, forKey: .redirectUris)
        try container.encodeIfPresent(isPublic, forKey: .isPublic)
    }
}

