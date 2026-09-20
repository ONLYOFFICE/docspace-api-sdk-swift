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

/** The sign-in methods this portal offers, as a login client needs them before anyone has signed in. */
public struct CapabilitiesDto: Sendable, Codable, Hashable {

    /** Whether members may sign in with their directory credentials. It is `false` both when LDAP sign-in is  switched off and when the pricing plan or the installation does not include it, and also when the settings  could not be read at all - a `false` here means the method is not offered, never that it is unknown. */
    public var ldapEnabled: Bool
    /** The directory domain members authenticate against, to be shown next to the login field. It is empty  whenever `ldapEnabled` is `false`, and also while the portal has not completed a directory synchronisation. */
    public var ldapDomain: String?
    /** The keys of the external identity providers to offer, ordered for the country the caller's IP address  resolves to and reduced to those this installation has credentials for. Pass one of them as `provider` to  `POST api/2.0/authentication`. An empty list means external sign-in is not on offer. */
    public var providers: [String]?
    /** The caption for the single sign-on button in the portal language, empty whenever `ssoUrl` is. */
    public var ssoLabel: String?
    /** Whether external identity providers may be used on this portal at all. While it is `false`, `providers` is  empty because the list is not even assembled. */
    public var oauthEnabled: Bool
    /** The address to send the browser to for SAML single sign-on. It is empty when single sign-on is not on  offer, which is the one thing to test - there is no separate flag for it. */
    public var ssoUrl: String?
    /** Whether the installation exposes its built-in identity server, which is what the portal's own OAuth  applications authenticate against. It concerns third-party applications signing in to the portal, not  portal members signing in to an external provider - that is `providers`. */
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

