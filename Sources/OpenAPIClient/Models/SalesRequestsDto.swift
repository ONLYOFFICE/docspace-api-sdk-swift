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

/** Who is writing to the ONLYOFFICE sales team, and what about. */
public struct SalesRequestsDto: Sendable, Codable, Hashable {

    public static let userNameRule = StringRule(minLength: 1, maxLength: 255, pattern: nil)
    public static let emailRule = StringRule(minLength: 1, maxLength: 64, pattern: nil)
    public static let messageRule = StringRule(minLength: 1, maxLength: 255, pattern: nil)
    /** The name the sales team should address the reply to. It is sent as written and is not matched against any  portal account; an empty value fails the request with 400. */
    public var userName: String
    /** The address the answer is sent to. It has to be a well-formed email address and need not be the caller portal  address; an empty or malformed value fails the request with 400. */
    public var email: String
    /** What is being asked of the sales team - a quote, an invoice, or a plan that cannot be bought online. An empty  value fails the request with 400. */
    public var message: String

    public init(userName: String, email: String, message: String) {
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
        try container.encode(userName, forKey: .userName)
        try container.encode(email, forKey: .email)
        try container.encode(message, forKey: .message)
    }
}

