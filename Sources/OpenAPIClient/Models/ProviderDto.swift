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

/** One storage service this portal can connect, with the values a connection form needs. */
public struct ProviderDto: Sendable, Codable, Hashable {

    /** The display name of the service, and the only thing that tells the WebDAV presets apart: `kDrive`, `Yandex`,  `WebDav`, `Nextcloud` and `ownCloud` all report the same key. */
    public var name: String?
    /** The value to send as `providerKey` when an account of this service is connected. */
    public var key: String?
    /** Whether the service can be used on this portal: it is enabled in the configuration and, for an OAuth service,  its application is registered. It says nothing about whether an account of it is connected. */
    public var connected: Bool?
    /** Whether an account of this service is connected with an OAuth 2.0 authorization code in `token`; when false,  it is connected with `login` and `password`. */
    public var oauth: Bool?
    /** The redirect URL this portal is registered with at the service, to build the consent screen URL from. It comes  back as null for the services that do not use OAuth. */
    public var redirectUrl: String?
    /** Whether an account of this service cannot be connected without `url`, which is the case for the WebDAV servers  whose address is not known in advance. The presets with a fixed address and the OAuth services do not need it. */
    public var requiredConnectionUrl: Bool?
    /** The OAuth 2.0 client ID this portal is registered with at the service, to build the consent screen URL from.  It comes back as null for the services that do not use OAuth. */
    public var clientId: String?

    public init(name: String? = nil, key: String? = nil, connected: Bool? = nil, oauth: Bool? = nil, redirectUrl: String? = nil, requiredConnectionUrl: Bool? = nil, clientId: String? = nil) {
        self.name = name
        self.key = key
        self.connected = connected
        self.oauth = oauth
        self.redirectUrl = redirectUrl
        self.requiredConnectionUrl = requiredConnectionUrl
        self.clientId = clientId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case key
        case connected
        case oauth
        case redirectUrl
        case requiredConnectionUrl
        case clientId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(key, forKey: .key)
        try container.encodeIfPresent(connected, forKey: .connected)
        try container.encodeIfPresent(oauth, forKey: .oauth)
        try container.encodeIfPresent(redirectUrl, forKey: .redirectUrl)
        try container.encodeIfPresent(requiredConnectionUrl, forKey: .requiredConnectionUrl)
        try container.encodeIfPresent(clientId, forKey: .clientId)
    }
}

