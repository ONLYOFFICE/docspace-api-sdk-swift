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

/** The request parameters for handling sales and payment inquiries in the portal. */
public struct SalesRequestsDto: Sendable, Codable, Hashable {

    public static let userNameRule = StringRule(minLength: nil, maxLength: 255, pattern: nil)
    public static let emailRule = StringRule(minLength: nil, maxLength: 64, pattern: nil)
    public static let messageRule = StringRule(minLength: nil, maxLength: 255, pattern: nil)
    /** The name of the user submitting the sales request. */
    public var userName: String?
    /** The contact email address for the sales inquiry. */
    public var email: String?
    /** The details of the sales inquiry or payment request. */
    public var message: String?

    public init(userName: String? = nil, email: String?, message: String?) {
        self.userName = userName
        self.email = email
        self.message = message
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case userName
        case email
        case message
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(userName, forKey: .userName)
        try container.encode(email, forKey: .email)
        try container.encode(message, forKey: .message)
    }
}

