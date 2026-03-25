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

/** The mention message parameters. */
public struct MentionMessageWrapper: Sendable, Codable, Hashable {

    public static let messageRule = StringRule(minLength: 0, maxLength: 255, pattern: nil)
    public var actionLink: ActionLinkConfig?
    /** A list of emails that will receive the mention message. */
    public var emails: [String]?
    /** The mention message. */
    public var message: String?

    public init(actionLink: ActionLinkConfig? = nil, emails: [String]? = nil, message: String? = nil) {
        self.actionLink = actionLink
        self.emails = emails
        self.message = message
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case actionLink
        case emails
        case message
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(actionLink, forKey: .actionLink)
        try container.encodeIfPresent(emails, forKey: .emails)
        try container.encodeIfPresent(message, forKey: .message)
    }
}

