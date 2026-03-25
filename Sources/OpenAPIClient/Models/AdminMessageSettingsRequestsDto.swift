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

/** The request parameters for configuring the administrator message content. */
public struct AdminMessageSettingsRequestsDto: Sendable, Codable, Hashable {

    public static let messageRule = StringRule(minLength: 0, maxLength: 255, pattern: nil)
    public static let emailRule = StringRule(minLength: 0, maxLength: 255, pattern: nil)
    /** The content of the administrator message to be sent. */
    public var message: String?
    /** Email */
    public var email: String?
    /** Culture */
    public var culture: String?
    public var recaptchaType: RecaptchaType?
    /** The user's response to the CAPTCHA challenge. */
    public var recaptchaResponse: String?

    public init(message: String?, email: String?, culture: String? = nil, recaptchaType: RecaptchaType? = nil, recaptchaResponse: String? = nil) {
        self.message = message
        self.email = email
        self.culture = culture
        self.recaptchaType = recaptchaType
        self.recaptchaResponse = recaptchaResponse
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case message
        case email
        case culture
        case recaptchaType
        case recaptchaResponse
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(message, forKey: .message)
        try container.encode(email, forKey: .email)
        try container.encodeIfPresent(culture, forKey: .culture)
        try container.encodeIfPresent(recaptchaType, forKey: .recaptchaType)
        try container.encodeIfPresent(recaptchaResponse, forKey: .recaptchaResponse)
    }
}

