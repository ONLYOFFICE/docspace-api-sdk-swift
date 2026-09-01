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

/** The response containing public client information. */
public struct ClientInfoResponse: Sendable, Codable, Hashable {

    public static let scopesRule = ArrayRule(minItems: nil, maxItems: nil, uniqueItems: true)
    public static let authenticationMethodsRule = ArrayRule(minItems: nil, maxItems: nil, uniqueItems: true)
    /** The client name. */
    public var name: String?
    /** The client description. */
    public var description: String?
    /** The client scopes. */
    public var scopes: Set<String>?
    public var _public: Bool?
    /** The client ID. */
    public var clientId: String?
    /** The URL to the client's website */
    public var websiteUrl: String?
    /** The URL to the client's terms of service. */
    public var termsUrl: String?
    /** The URL to the client's privacy policy. */
    public var policyUrl: String?
    /** The client logo in base64 format. */
    public var logo: String?
    /** The authentication methods supported by the client. */
    public var authenticationMethods: Set<String>?
    /** Indicates whether the client is accessible by third-party tenants. */
    public var isPublic: Bool?
    /** The date and time when the client was created. */
    public var createdOn: Date?
    /** The user who created the client. */
    public var createdBy: String?
    /** The date and time when the client was last modified. */
    public var modifiedOn: Date?
    /** The user who last modified the client. */
    public var modifiedBy: String?

    public init(name: String? = nil, description: String? = nil, scopes: Set<String>? = nil, _public: Bool? = nil, clientId: String? = nil, websiteUrl: String? = nil, termsUrl: String? = nil, policyUrl: String? = nil, logo: String? = nil, authenticationMethods: Set<String>? = nil, isPublic: Bool? = nil, createdOn: Date? = nil, createdBy: String? = nil, modifiedOn: Date? = nil, modifiedBy: String? = nil) {
        self.name = name
        self.description = description
        self.scopes = scopes
        self._public = _public
        self.clientId = clientId
        self.websiteUrl = websiteUrl
        self.termsUrl = termsUrl
        self.policyUrl = policyUrl
        self.logo = logo
        self.authenticationMethods = authenticationMethods
        self.isPublic = isPublic
        self.createdOn = createdOn
        self.createdBy = createdBy
        self.modifiedOn = modifiedOn
        self.modifiedBy = modifiedBy
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case description
        case scopes
        case _public = "public"
        case clientId = "client_id"
        case websiteUrl = "website_url"
        case termsUrl = "terms_url"
        case policyUrl = "policy_url"
        case logo
        case authenticationMethods = "authentication_methods"
        case isPublic = "is_public"
        case createdOn = "created_on"
        case createdBy = "created_by"
        case modifiedOn = "modified_on"
        case modifiedBy = "modified_by"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(scopes, forKey: .scopes)
        try container.encodeIfPresent(_public, forKey: ._public)
        try container.encodeIfPresent(clientId, forKey: .clientId)
        try container.encodeIfPresent(websiteUrl, forKey: .websiteUrl)
        try container.encodeIfPresent(termsUrl, forKey: .termsUrl)
        try container.encodeIfPresent(policyUrl, forKey: .policyUrl)
        try container.encodeIfPresent(logo, forKey: .logo)
        try container.encodeIfPresent(authenticationMethods, forKey: .authenticationMethods)
        try container.encodeIfPresent(isPublic, forKey: .isPublic)
        try container.encodeIfPresent(createdOn, forKey: .createdOn)
        try container.encodeIfPresent(createdBy, forKey: .createdBy)
        try container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
        try container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
    }
}

