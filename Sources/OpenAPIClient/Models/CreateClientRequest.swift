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

/** Client creation request containing client details */
public struct CreateClientRequest: Sendable, Codable, Hashable {

    public static let nameRule = StringRule(minLength: 3, maxLength: 256, pattern: nil)
    public static let descriptionRule = StringRule(minLength: 0, maxLength: 255, pattern: nil)
    public static let logoRule = StringRule(minLength: 1, maxLength: nil, pattern: "/^data:image\/(?:png|jpeg|jpg|svg\\+xml);base64,.*.{1,}/")
    public static let scopesRule = ArrayRule(minItems: 1, maxItems: nil, uniqueItems: true)
    public static let websiteUrlRule = StringRule(minLength: 1, maxLength: nil, pattern: "/^(https?:\/\/)?([a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,}(:\\d+)?(\/[a-zA-Z0-9-._~:\/?#\\[\\]@!$&'()*+,;=]*)?$|^https?:\/\/(\\d{1,3}\\.){3}\\d{1,3}(:\\d+)?(\/[a-zA-Z0-9-._~:\/?#\\[\\]@!$&'()*+,;=]*)?$/")
    public static let termsUrlRule = StringRule(minLength: 1, maxLength: nil, pattern: "/^(https?:\/\/)?([a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,}(:\\d+)?(\/[a-zA-Z0-9-._~:\/?#\\[\\]@!$&'()*+,;=]*)?$|^https?:\/\/(\\d{1,3}\\.){3}\\d{1,3}(:\\d+)?(\/[a-zA-Z0-9-._~:\/?#\\[\\]@!$&'()*+,;=]*)?$/")
    public static let policyUrlRule = StringRule(minLength: 1, maxLength: nil, pattern: "/^(https?:\/\/)?([a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,}(:\\d+)?(\/[a-zA-Z0-9-._~:\/?#\\[\\]@!$&'()*+,;=]*)?$|^https?:\/\/(\\d{1,3}\\.){3}\\d{1,3}(:\\d+)?(\/[a-zA-Z0-9-._~:\/?#\\[\\]@!$&'()*+,;=]*)?$/")
    public static let redirectUrisRule = ArrayRule(minItems: 1, maxItems: 12, uniqueItems: true)
    public static let allowedOriginsRule = ArrayRule(minItems: 1, maxItems: 12, uniqueItems: true)
    public static let logoutRedirectUriRule = StringRule(minLength: 1, maxLength: nil, pattern: "/^(https?:\/\/)?([a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,}(:\\d+)?(\/[a-zA-Z0-9-._~:\/?#\\[\\]@!$&'()*+,;=]*)?$|^https?:\/\/(\\d{1,3}\\.){3}\\d{1,3}(:\\d+)?(\/[a-zA-Z0-9-._~:\/?#\\[\\]@!$&'()*+,;=]*)?$/")
    /** The client name. */
    public var name: String?
    /** The description of the client */
    public var description: String?
    /** The logo of the client in base64 format */
    public var logo: String?
    /** The scopes for the client */
    public var scopes: Set<String>?
    public var _public: Bool?
    /** Indicates whether PKCE is allowed for the client */
    public var allowPkce: Bool?
    /** Indicates if the client is public */
    public var isPublic: Bool?
    /** The website URL of the client */
    public var websiteUrl: String?
    /** The terms URL of the client */
    public var termsUrl: String?
    /** The policy URL of the client */
    public var policyUrl: String?
    /** The redirect URIs for the client */
    public var redirectUris: Set<String>
    /** The allowed origins for the client */
    public var allowedOrigins: Set<String>
    /** The logout redirect URI for the client */
    public var logoutRedirectUri: String?

    public init(name: String? = nil, description: String? = nil, logo: String? = nil, scopes: Set<String>? = nil, _public: Bool? = nil, allowPkce: Bool? = nil, isPublic: Bool? = nil, websiteUrl: String? = nil, termsUrl: String? = nil, policyUrl: String? = nil, redirectUris: Set<String>, allowedOrigins: Set<String>, logoutRedirectUri: String? = nil) {
        self.name = name
        self.description = description
        self.logo = logo
        self.scopes = scopes
        self._public = _public
        self.allowPkce = allowPkce
        self.isPublic = isPublic
        self.websiteUrl = websiteUrl
        self.termsUrl = termsUrl
        self.policyUrl = policyUrl
        self.redirectUris = redirectUris
        self.allowedOrigins = allowedOrigins
        self.logoutRedirectUri = logoutRedirectUri
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case description
        case logo
        case scopes
        case _public = "public"
        case allowPkce = "allow_pkce"
        case isPublic = "is_public"
        case websiteUrl = "website_url"
        case termsUrl = "terms_url"
        case policyUrl = "policy_url"
        case redirectUris = "redirect_uris"
        case allowedOrigins = "allowed_origins"
        case logoutRedirectUri = "logout_redirect_uri"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(logo, forKey: .logo)
        try container.encodeIfPresent(scopes, forKey: .scopes)
        try container.encodeIfPresent(_public, forKey: ._public)
        try container.encodeIfPresent(allowPkce, forKey: .allowPkce)
        try container.encodeIfPresent(isPublic, forKey: .isPublic)
        try container.encodeIfPresent(websiteUrl, forKey: .websiteUrl)
        try container.encodeIfPresent(termsUrl, forKey: .termsUrl)
        try container.encodeIfPresent(policyUrl, forKey: .policyUrl)
        try container.encode(redirectUris, forKey: .redirectUris)
        try container.encode(allowedOrigins, forKey: .allowedOrigins)
        try container.encodeIfPresent(logoutRedirectUri, forKey: .logoutRedirectUri)
    }
}

