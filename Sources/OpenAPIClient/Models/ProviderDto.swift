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

/** The provider information. */
public struct ProviderDto: Sendable, Codable, Hashable {

    /** The provider name. */
    public var name: String?
    /** The provider key. */
    public var key: String?
    /** Specifies whether the provider is connected. */
    public var connected: Bool?
    /** Specifies if the provider is OAuth. */
    public var oauth: Bool?
    /** The provider redirect URL. */
    public var redirectUrl: String?
    /** The required connection URL flag. */
    public var requiredConnectionUrl: Bool?
    /** The provider OAuth client ID. */
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

