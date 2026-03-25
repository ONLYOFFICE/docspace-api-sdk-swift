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

/** The confirmation parameters. */
public struct ConfirmDto: Sendable, Codable, Hashable {

    public var result: ValidationResult
    /** The confirmation room ID. */
    public var roomId: String?
    /** The confirmation title. */
    public var title: String?
    /** The confirmation email. */
    public var email: String?
    /** The confirmation is agent. */
    public var isAgent: Bool?

    public init(result: ValidationResult, roomId: String? = nil, title: String? = nil, email: String? = nil, isAgent: Bool? = nil) {
        self.result = result
        self.roomId = roomId
        self.title = title
        self.email = email
        self.isAgent = isAgent
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case result
        case roomId
        case title
        case email
        case isAgent
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(result, forKey: .result)
        try container.encodeIfPresent(roomId, forKey: .roomId)
        try container.encodeIfPresent(title, forKey: .title)
        try container.encodeIfPresent(email, forKey: .email)
        try container.encodeIfPresent(isAgent, forKey: .isAgent)
    }
}

