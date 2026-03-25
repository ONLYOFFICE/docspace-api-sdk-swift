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

/** The authentication token parameters. */
public struct AuthenticationTokenDto: Sendable, Codable, Hashable {

    /** The authentication token. */
    public var token: String?
    /** The token expiration time. */
    public var expires: Date?
    /** Specifies if the authentication code is sent by SMS or not. */
    public var sms: Bool?
    /** The phone number. */
    public var phoneNoise: String?
    /** Specifies if the two-factor application is used or not. */
    public var tfa: Bool?
    /** The two-factor authentication key. */
    public var tfaKey: String?
    /** The confirmation email URL. */
    public var confirmUrl: String?

    public init(token: String? = nil, expires: Date? = nil, sms: Bool? = nil, phoneNoise: String? = nil, tfa: Bool? = nil, tfaKey: String? = nil, confirmUrl: String? = nil) {
        self.token = token
        self.expires = expires
        self.sms = sms
        self.phoneNoise = phoneNoise
        self.tfa = tfa
        self.tfaKey = tfaKey
        self.confirmUrl = confirmUrl
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case token
        case expires
        case sms
        case phoneNoise
        case tfa
        case tfaKey
        case confirmUrl
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(token, forKey: .token)
        try container.encodeIfPresent(expires, forKey: .expires)
        try container.encodeIfPresent(sms, forKey: .sms)
        try container.encodeIfPresent(phoneNoise, forKey: .phoneNoise)
        try container.encodeIfPresent(tfa, forKey: .tfa)
        try container.encodeIfPresent(tfaKey, forKey: .tfaKey)
        try container.encodeIfPresent(confirmUrl, forKey: .confirmUrl)
    }
}

