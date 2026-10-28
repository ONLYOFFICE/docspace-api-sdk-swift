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

/** The request parameters for updating a user email. */
public struct ChangeEmailRequest: Sendable, Codable, Hashable {

    public static let emailRule = StringRule(minLength: 0, maxLength: 255, pattern: nil)
    /** The new address in plain text, up to 255 characters. It is stored in lowercase, and one of this field and  `encEmail` is required. */
    public var email: String?
    /** The new address in the encrypted form the confirmation link carries. Pass the value from the link unchanged;  it is used only when `email` is empty. */
    public var encEmail: String?

    public init(email: String? = nil, encEmail: String? = nil) {
        self.email = email
        self.encEmail = encEmail
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case email
        case encEmail
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(email, forKey: .email)
        try container.encodeIfPresent(encEmail, forKey: .encEmail)
    }
}

