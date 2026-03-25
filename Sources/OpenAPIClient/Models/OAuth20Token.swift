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

public struct OAuth20Token: Sendable, Codable, Hashable {

    public var accessToken: String?
    public var refreshToken: String?
    public var expiresIn: Int64?
    public var clientId: String?
    public var clientSecret: String?
    public var redirectUri: String?
    public var timestamp: Date?
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

