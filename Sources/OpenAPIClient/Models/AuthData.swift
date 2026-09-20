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

/** The credentials of a third-party storage account. The portal takes them when an account is connected and does not  give them back afterwards. */
public struct AuthData: Sendable, Codable, Hashable {

    /** The account name at the storage service. */
    public var login: String?
    /** The password of the account at the storage service. */
    public var password: String?
    /** The token of the account, kept as the raw JSON document the storage service issued it in. */
    public var rawToken: String?
    /** The address of the storage server the account lives on. */
    public var url: String?
    /** The storage service the credentials belong to, as the provider key the account was connected with. */
    public var provider: String?
    /** The same token as in `rawToken`, parsed into its OAuth 2.0 fields. */
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

