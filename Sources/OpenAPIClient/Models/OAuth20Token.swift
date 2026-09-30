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

/** The OAuth 2.0 token issued by a third-party provider. */
public struct OAuth20Token: Sendable, Codable, Hashable {

    /** The token sent to the provider with every request made on behalf of the account. */
    public var accessToken: String?
    /** The token used to obtain a new access token when the current one expires. A provider that issues no refresh  token leaves it empty, and the account then has to be connected again to keep working. */
    public var refreshToken: String?
    /** How long the access token stays usable, in seconds counted from `timestamp`. Zero means the provider did not  say, and the token is then treated as expired. */
    public var expiresIn: Int64?
    /** The OAuth 2.0 client ID of the application the token was issued to. */
    public var clientId: String?
    /** The client secret of the application the token was issued to, needed when the token is refreshed. */
    public var clientSecret: String?
    /** The redirect URL the authorization code behind this token was obtained with; providers require the same value  again when the token is refreshed. */
    public var redirectUri: String?
    /** When the token was issued, in UTC. This is the point `expires_in` is counted from. */
    public var timestamp: Date?
    /** Whether the access token can no longer be used and has to be refreshed. It is also true when the provider did  not say how long the token lives. */
    public var isExpired: Bool?

    public init(accessToken: String? = nil, refreshToken: String? = nil, expiresIn: Int64? = nil, clientId: String? = nil, clientSecret: String? = nil, redirectUri: String? = nil, timestamp: Date? = nil, isExpired: Bool? = nil) {
        self.accessToken = accessToken
        self.refreshToken = refreshToken
        self.expiresIn = expiresIn
        self.clientId = clientId
        self.clientSecret = clientSecret
        self.redirectUri = redirectUri
        self.timestamp = timestamp
        self.isExpired = isExpired
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case accessToken = "access_token"
        case refreshToken = "refresh_token"
        case expiresIn = "expires_in"
        case clientId = "client_id"
        case clientSecret = "client_secret"
        case redirectUri = "redirect_uri"
        case timestamp
        case isExpired
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(accessToken, forKey: .accessToken)
        try container.encodeIfPresent(refreshToken, forKey: .refreshToken)
        try container.encodeIfPresent(expiresIn, forKey: .expiresIn)
        try container.encodeIfPresent(clientId, forKey: .clientId)
        try container.encodeIfPresent(clientSecret, forKey: .clientSecret)
        try container.encodeIfPresent(redirectUri, forKey: .redirectUri)
        try container.encodeIfPresent(timestamp, forKey: .timestamp)
        try container.encodeIfPresent(isExpired, forKey: .isExpired)
    }
}

