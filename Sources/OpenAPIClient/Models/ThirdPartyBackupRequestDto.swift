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

/** The third-party backup request parameters. */
public struct ThirdPartyBackupRequestDto: Sendable, Codable, Hashable {

    /** The connection URL for the sharepoint. */
    public var url: String?
    /** The login. */
    public var login: String?
    /** The password. */
    public var password: String?
    /** The authentication token. */
    public var token: String?
    /** The customer title. */
    public var customerTitle: String?
    /** The provider key. */
    public var providerKey: String?

    public init(url: String? = nil, login: String? = nil, password: String? = nil, token: String? = nil, customerTitle: String? = nil, providerKey: String? = nil) {
        self.url = url
        self.login = login
        self.password = password
        self.token = token
        self.customerTitle = customerTitle
        self.providerKey = providerKey
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case url
        case login
        case password
        case token
        case customerTitle
        case providerKey
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(url, forKey: .url)
        try container.encodeIfPresent(login, forKey: .login)
        try container.encodeIfPresent(password, forKey: .password)
        try container.encodeIfPresent(token, forKey: .token)
        try container.encodeIfPresent(customerTitle, forKey: .customerTitle)
        try container.encodeIfPresent(providerKey, forKey: .providerKey)
    }
}

