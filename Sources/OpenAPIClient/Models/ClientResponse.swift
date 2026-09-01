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

public struct ClientResponse: Sendable, Codable, Hashable {

    public static let scopesRule = ArrayRule(minItems: nil, maxItems: nil, uniqueItems: true)
    public static let authenticationMethodsRule = ArrayRule(minItems: nil, maxItems: nil, uniqueItems: true)
    public static let redirectUrisRule = ArrayRule(minItems: nil, maxItems: nil, uniqueItems: true)
    public static let allowedOriginsRule = ArrayRule(minItems: nil, maxItems: nil, uniqueItems: true)
    public static let logoutRedirectUrisRule = ArrayRule(minItems: nil, maxItems: nil, uniqueItems: true)
    /** The client name. */
    public var name: String?
    /** The client description. */
    public var description: String?
    /** The tenant ID associated with the client. */
    public var tenant: Int64?
    /** The client scopes. */
    public var scopes: Set<String>?
    /** Specifies if the client is currently enabled or not. */
    public var enabled: Bool?
    /** The client identifier issued to the client during registration. */
    public var clientId: String?
    /** The client secret issued to the client during registration. */
    public var clientSecret: String?
    /** The URL to the client's website. */
    public var websiteUrl: String?
    /** The URL to the client's terms of service. */
    public var termsUrl: String?
    /** The URL to the client's privacy policy. */
    public var policyUrl: String?
    /** The URL to the client's logo. */
    public var logo: String?
    /** The authentication methods supported by the client. */
    public var authenticationMethods: Set<String>?
    /** The list of allowed redirect URIs. */
    public var redirectUris: Set<String>?
    /** The list of allowed CORS origins. */
    public var allowedOrigins: Set<String>?
    /** The list of allowed logout redirect URIs. */
    public var logoutRedirectUris: Set<String>?
    /** The date and time when the client was created. */
    public var createdOn: Date?
    /** The user who created the client. */
    public var createdBy: String?
    /** The date and time when the client was last modified. */
    public var modifiedOn: Date?
    /** The user who last modified the client. */
    public var modifiedBy: String?
    /** Indicates whether the client is accessible by third-party tenants. */
    public var isPublic: Bool?

    public init(name: String? = nil, description: String? = nil, tenant: Int64? = nil, scopes: Set<String>? = nil, enabled: Bool? = nil, clientId: String? = nil, clientSecret: String? = nil, websiteUrl: String? = nil, termsUrl: String? = nil, policyUrl: String? = nil, logo: String? = nil, authenticationMethods: Set<String>? = nil, redirectUris: Set<String>? = nil, allowedOrigins: Set<String>? = nil, logoutRedirectUris: Set<String>? = nil, createdOn: Date? = nil, createdBy: String? = nil, modifiedOn: Date? = nil, modifiedBy: String? = nil, isPublic: Bool? = nil) {
        self.name = name
        self.description = description
        self.tenant = tenant
        self.scopes = scopes
        self.enabled = enabled
        self.clientId = clientId
        self.clientSecret = clientSecret
        self.websiteUrl = websiteUrl
        self.termsUrl = termsUrl
        self.policyUrl = policyUrl
        self.logo = logo
        self.authenticationMethods = authenticationMethods
        self.redirectUris = redirectUris
        self.allowedOrigins = allowedOrigins
        self.logoutRedirectUris = logoutRedirectUris
        self.createdOn = createdOn
        self.createdBy = createdBy
        self.modifiedOn = modifiedOn
        self.modifiedBy = modifiedBy
        self.isPublic = isPublic
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case description
        case tenant
        case scopes
        case enabled
        case clientId = "client_id"
        case clientSecret = "client_secret"
        case websiteUrl = "website_url"
        case termsUrl = "terms_url"
        case policyUrl = "policy_url"
        case logo
        case authenticationMethods = "authentication_methods"
        case redirectUris = "redirect_uris"
        case allowedOrigins = "allowed_origins"
        case logoutRedirectUris = "logout_redirect_uris"
        case createdOn = "created_on"
        case createdBy = "created_by"
        case modifiedOn = "modified_on"
        case modifiedBy = "modified_by"
        case isPublic = "is_public"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(tenant, forKey: .tenant)
        try container.encodeIfPresent(scopes, forKey: .scopes)
        try container.encodeIfPresent(enabled, forKey: .enabled)
        try container.encodeIfPresent(clientId, forKey: .clientId)
        try container.encodeIfPresent(clientSecret, forKey: .clientSecret)
        try container.encodeIfPresent(websiteUrl, forKey: .websiteUrl)
        try container.encodeIfPresent(termsUrl, forKey: .termsUrl)
        try container.encodeIfPresent(policyUrl, forKey: .policyUrl)
        try container.encodeIfPresent(logo, forKey: .logo)
        try container.encodeIfPresent(authenticationMethods, forKey: .authenticationMethods)
        try container.encodeIfPresent(redirectUris, forKey: .redirectUris)
        try container.encodeIfPresent(allowedOrigins, forKey: .allowedOrigins)
        try container.encodeIfPresent(logoutRedirectUris, forKey: .logoutRedirectUris)
        try container.encodeIfPresent(createdOn, forKey: .createdOn)
        try container.encodeIfPresent(createdBy, forKey: .createdBy)
        try container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
        try container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
        try container.encodeIfPresent(isPublic, forKey: .isPublic)
    }
}

