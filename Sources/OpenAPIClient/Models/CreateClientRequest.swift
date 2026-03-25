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

/** The request parameters for creating a client. */
public struct CreateClientRequest: Sendable, Codable, Hashable {

    public static let nameRule = StringRule(minLength: 3, maxLength: 256, pattern: nil)
    public static let descriptionRule = StringRule(minLength: 0, maxLength: 255, pattern: nil)
    public static let logoRule = StringRule(minLength: 1, maxLength: nil, pattern: "/^data:image\/(?:png|jpeg|jpg|svg\\+xml);base64,.*.{1,}/")
    public static let scopesRule = ArrayRule(minItems: 1, maxItems: nil, uniqueItems: true)
    public static let websiteUrlRule = StringRule(minLength: 1, maxLength: nil, pattern: "/^(https?:\/\/)?(([a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,}|localhost|[a-zA-Z0-9-]+)(:\\d+)?(\/[a-zA-Z0-9-._~:\/?#\\[\\]@!$&'()*+,;=]*)?$|^https?:\/\/(\\d{1,3}\\.){3}\\d{1,3}(:\\d+)?(\/[a-zA-Z0-9-._~:\/?#\\[\\]@!$&'()*+,;=]*)?$/")
    public static let termsUrlRule = StringRule(minLength: 1, maxLength: nil, pattern: "/^(https?:\/\/)?(([a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,}|localhost|[a-zA-Z0-9-]+)(:\\d+)?(\/[a-zA-Z0-9-._~:\/?#\\[\\]@!$&'()*+,;=]*)?$|^https?:\/\/(\\d{1,3}\\.){3}\\d{1,3}(:\\d+)?(\/[a-zA-Z0-9-._~:\/?#\\[\\]@!$&'()*+,;=]*)?$/")
    public static let policyUrlRule = StringRule(minLength: 1, maxLength: nil, pattern: "/^(https?:\/\/)?(([a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,}|localhost|[a-zA-Z0-9-]+)(:\\d+)?(\/[a-zA-Z0-9-._~:\/?#\\[\\]@!$&'()*+,;=]*)?$|^https?:\/\/(\\d{1,3}\\.){3}\\d{1,3}(:\\d+)?(\/[a-zA-Z0-9-._~:\/?#\\[\\]@!$&'()*+,;=]*)?$/")
    public static let redirectUrisRule = ArrayRule(minItems: nil, maxItems: nil, uniqueItems: true)
    public static let allowedOriginsRule = ArrayRule(minItems: nil, maxItems: nil, uniqueItems: true)
    public static let logoutRedirectUriRule = StringRule(minLength: 1, maxLength: nil, pattern: "/^(https?:\/\/)?(([a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,}|localhost|[a-zA-Z0-9-]+)(:\\d+)?(\/[a-zA-Z0-9-._~:\/?#\\[\\]@!$&'()*+,;=]*)?$|^https?:\/\/(\\d{1,3}\\.){3}\\d{1,3}(:\\d+)?(\/[a-zA-Z0-9-._~:\/?#\\[\\]@!$&'()*+,;=]*)?$/")
    /** The client name. */
    public var name: String?
    /** The client description. */
    public var description: String?
    /** The client logo in base64 format. */
    public var logo: String?
    /** The client scopes. */
    public var scopes: Set<String>?
    /** Indicates whether PKCE is allowed for the client. */
    public var allowPkce: Bool?
    /** Indicates whether the client is accessible by third-party tenants. */
    public var isPublic: Bool?
    /** The URL to the client's website. */
    public var websiteUrl: String?
    /** The URL to the client's terms of service. */
    public var termsUrl: String?
    /** The URL to the client's privacy policy. */
    public var policyUrl: String?
    /** The list of allowed redirect URIs. */
    public var redirectUris: Set<String>
    /** The list of allowed CORS origins. */
    public var allowedOrigins: Set<String>
    /** The list of allowed logout redirect URIs. */
    public var logoutRedirectUri: String?

    public init(name: String? = nil, description: String? = nil, logo: String? = nil, scopes: Set<String>? = nil, allowPkce: Bool? = nil, isPublic: Bool? = nil, websiteUrl: String? = nil, termsUrl: String? = nil, policyUrl: String? = nil, redirectUris: Set<String>, allowedOrigins: Set<String>, logoutRedirectUri: String? = nil) {
        self.name = name
        self.description = description
        self.logo = logo
        self.scopes = scopes
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

