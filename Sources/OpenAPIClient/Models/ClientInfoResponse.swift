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

/** The consent-facing subset of a client: everything needed to render a consent screen, and nothing that would let a caller act as the client. */
public struct ClientInfoResponse: Sendable, Codable, Hashable {

    public static let scopesRule = ArrayRule(minItems: nil, maxItems: nil, uniqueItems: true)
    public static let authenticationMethodsRule = ArrayRule(minItems: nil, maxItems: nil, uniqueItems: true)
    /** The display name shown to the user on the consent screen, between 3 and 256 characters. */
    public var name: String?
    /** The free-text description shown next to the name on the consent screen, at most 255 characters. */
    public var description: String?
    /** The permissions the client may ask for, named as they appear in the tenant scope catalogue - for example files:read, rooms:write or openid. A client cannot request a scope that is not listed here. */
    public var scopes: Set<String>?
    /** The generated identifier of the client, sent as client_id in every OAuth2 request. It is assigned when the client is registered and never changes afterwards. */
    public var clientId: String?
    /** The URL of the client home page, offered to the user before they consent. */
    public var websiteUrl: String?
    /** The URL of the client terms of service, linked from the consent screen. */
    public var termsUrl: String?
    /** The URL of the client privacy policy, linked from the consent screen. */
    public var policyUrl: String?
    /** The client logo as a data URI carrying base64 image data, shown on the consent screen. Only png, jpeg, jpg and svg+xml are accepted, the whole string may not exceed 2000000 characters and the decoded image may not exceed 256000 bytes. */
    public var logo: String?
    /** How the client authenticates itself at the token endpoint: client_secret_post for a confidential client that sends its secret, none for a public client that proves itself with PKCE instead. */
    public var authenticationMethods: Set<String>?
    /** When the client was registered, as an ISO-8601 timestamp with a zone offset. */
    public var createdOn: Date?
    /** The identifier of the user who registered the client. A plain user may read and change only the clients where this is their own identifier. */
    public var createdBy: String?
    /** When the client was last changed, as an ISO-8601 timestamp with a zone offset. */
    public var modifiedOn: Date?
    /** The identifier of the user who last changed the client. */
    public var modifiedBy: String?
    /** Whether the client is offered to third-party tenants rather than only to the tenant that registered it. */
    public var isPublic: Bool?

    public init(name: String? = nil, description: String? = nil, scopes: Set<String>? = nil, clientId: String? = nil, websiteUrl: String? = nil, termsUrl: String? = nil, policyUrl: String? = nil, logo: String? = nil, authenticationMethods: Set<String>? = nil, createdOn: Date? = nil, createdBy: String? = nil, modifiedOn: Date? = nil, modifiedBy: String? = nil, isPublic: Bool? = nil) {
        self.name = name
        self.description = description
        self.scopes = scopes
        self.clientId = clientId
        self.websiteUrl = websiteUrl
        self.termsUrl = termsUrl
        self.policyUrl = policyUrl
        self.logo = logo
        self.authenticationMethods = authenticationMethods
        self.createdOn = createdOn
        self.createdBy = createdBy
        self.modifiedOn = modifiedOn
        self.modifiedBy = modifiedBy
        self.isPublic = isPublic
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case description
        case scopes
        case clientId = "client_id"
        case websiteUrl = "website_url"
        case termsUrl = "terms_url"
        case policyUrl = "policy_url"
        case logo
        case authenticationMethods = "authentication_methods"
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
        try container.encodeIfPresent(scopes, forKey: .scopes)
        try container.encodeIfPresent(clientId, forKey: .clientId)
        try container.encodeIfPresent(websiteUrl, forKey: .websiteUrl)
        try container.encodeIfPresent(termsUrl, forKey: .termsUrl)
        try container.encodeIfPresent(policyUrl, forKey: .policyUrl)
        try container.encodeIfPresent(logo, forKey: .logo)
        try container.encodeIfPresent(authenticationMethods, forKey: .authenticationMethods)
        try container.encodeIfPresent(createdOn, forKey: .createdOn)
        try container.encodeIfPresent(createdBy, forKey: .createdBy)
        try container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
        try container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
        try container.encodeIfPresent(isPublic, forKey: .isPublic)
    }
}

