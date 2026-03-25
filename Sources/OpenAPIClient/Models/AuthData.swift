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

/** The authentication data. */
public struct AuthData: Sendable, Codable, Hashable {

    /** The authentication login. */
    public var login: String?
    /** The authentication password. */
    public var password: String?
    /** The authentication raw token. */
    public var rawToken: String?
    /** The authentication URL. */
    public var url: String?
    /** The authentication provider. */
    public var provider: String?
    public var token: OAuth20Token?

    public init(login: String? = nil, password: String? = nil, rawToken: String? = nil, url: String? = nil, provider: String? = nil, token: OAuth20Token? = nil) {
        self.login = login
        self.password = password
        self.rawToken = rawToken
        self.url = url
        self.provider = provider
        self.token = token
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case login
        case password
        case rawToken
        case url
        case provider
        case token
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(login, forKey: .login)
        try container.encodeIfPresent(password, forKey: .password)
        try container.encodeIfPresent(rawToken, forKey: .rawToken)
        try container.encodeIfPresent(url, forKey: .url)
        try container.encodeIfPresent(provider, forKey: .provider)
        try container.encodeIfPresent(token, forKey: .token)
    }
}

