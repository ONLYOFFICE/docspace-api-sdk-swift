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

/** The parameters required for the user two-factor authentication requests. */
public struct AuthWithCodeRequestsDto: Sendable, Codable, Hashable {

    /** The username or email used for authentication. */
    public var userName: String?
    /** The password in plain text for user authentication. */
    public var password: String?
    /** The hashed password for secure verification. */
    public var passwordHash: String?
    /** The type of authentication provider (e.g., internal, Google, Azure). */
    public var provider: String?
    /** The access token used for authentication with external providers. */
    public var accessToken: String?
    /** The serialized user profile data, if applicable. */
    public var serializedProfile: String?
    /** The authorization code used for obtaining OAuth tokens. */
    public var codeOAuth: String?
    /** Specifies whether the authentication is session-based. */
    public var session: Bool?
    public var confirmData: ConfirmData?
    public var recaptchaType: RecaptchaType?
    /** The user's response to the CAPTCHA challenge. */
    public var recaptchaResponse: String?
    /** The culture code for localization during authentication. */
    public var culture: String?
    /** The code for two-factor authentication. */
    public var code: String?

    public init(userName: String? = nil, password: String? = nil, passwordHash: String? = nil, provider: String? = nil, accessToken: String? = nil, serializedProfile: String? = nil, codeOAuth: String? = nil, session: Bool? = nil, confirmData: ConfirmData? = nil, recaptchaType: RecaptchaType? = nil, recaptchaResponse: String? = nil, culture: String? = nil, code: String? = nil) {
        self.userName = userName
        self.password = password
        self.passwordHash = passwordHash
        self.provider = provider
        self.accessToken = accessToken
        self.serializedProfile = serializedProfile
        self.codeOAuth = codeOAuth
        self.session = session
        self.confirmData = confirmData
        self.recaptchaType = recaptchaType
        self.recaptchaResponse = recaptchaResponse
        self.culture = culture
        self.code = code
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case userName
        case password
        case passwordHash
        case provider
        case accessToken
        case serializedProfile
        case codeOAuth
        case session
        case confirmData
        case recaptchaType
        case recaptchaResponse
        case culture
        case code
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(userName, forKey: .userName)
        try container.encodeIfPresent(password, forKey: .password)
        try container.encodeIfPresent(passwordHash, forKey: .passwordHash)
        try container.encodeIfPresent(provider, forKey: .provider)
        try container.encodeIfPresent(accessToken, forKey: .accessToken)
        try container.encodeIfPresent(serializedProfile, forKey: .serializedProfile)
        try container.encodeIfPresent(codeOAuth, forKey: .codeOAuth)
        try container.encodeIfPresent(session, forKey: .session)
        try container.encodeIfPresent(confirmData, forKey: .confirmData)
        try container.encodeIfPresent(recaptchaType, forKey: .recaptchaType)
        try container.encodeIfPresent(recaptchaResponse, forKey: .recaptchaResponse)
        try container.encodeIfPresent(culture, forKey: .culture)
        try container.encodeIfPresent(code, forKey: .code)
    }
}

