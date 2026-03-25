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

/** The capabilities parameters. */
public struct CapabilitiesDto: Sendable, Codable, Hashable {

    /** Specifies if the LDAP settings are enabled or not. */
    public var ldapEnabled: Bool
    /** The LDAP domain. */
    public var ldapDomain: String?
    /** The list of providers. */
    public var providers: [String]?
    /** The SP login label. */
    public var ssoLabel: String?
    /** Specifies if OAuth is enabled or not. */
    public var oauthEnabled: Bool
    /** The SSO URL. If this parameter is empty, then the SSO settings are disabled. */
    public var ssoUrl: String?
    /** Specifies if an identity server is enabled or not. */
    public var identityServerEnabled: Bool

    public init(ldapEnabled: Bool, ldapDomain: String? = nil, providers: [String]?, ssoLabel: String?, oauthEnabled: Bool, ssoUrl: String?, identityServerEnabled: Bool) {
        self.ldapEnabled = ldapEnabled
        self.ldapDomain = ldapDomain
        self.providers = providers
        self.ssoLabel = ssoLabel
        self.oauthEnabled = oauthEnabled
        self.ssoUrl = ssoUrl
        self.identityServerEnabled = identityServerEnabled
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case ldapEnabled
        case ldapDomain
        case providers
        case ssoLabel
        case oauthEnabled
        case ssoUrl
        case identityServerEnabled
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(ldapEnabled, forKey: .ldapEnabled)
        try container.encodeIfPresent(ldapDomain, forKey: .ldapDomain)
        try container.encode(providers, forKey: .providers)
        try container.encode(ssoLabel, forKey: .ssoLabel)
        try container.encode(oauthEnabled, forKey: .oauthEnabled)
        try container.encode(ssoUrl, forKey: .ssoUrl)
        try container.encode(identityServerEnabled, forKey: .identityServerEnabled)
    }
}

