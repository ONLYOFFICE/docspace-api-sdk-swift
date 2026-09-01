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

/** The request parameters for the administrator message configuration. */
public struct AdminMessageBaseSettingsRequestsDto: Sendable, Codable, Hashable {

    public static let emailRule = StringRule(minLength: 0, maxLength: 255, pattern: nil)
    /** The email address used for sending administrator messages. */
    public var email: String?
    /** The locale identifier for message localization. */
    public var culture: String?

    public init(email: String?, culture: String? = nil) {
        self.email = email
        self.culture = culture
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case email
        case culture
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(email, forKey: .email)
        try container.encodeIfPresent(culture, forKey: .culture)
    }
}

