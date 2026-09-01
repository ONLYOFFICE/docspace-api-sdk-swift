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

/** The additional confirmation data required for authentication. */
public struct ConfirmData: Sendable, Codable, Hashable {

    /** The email address to confirm the user's identity. */
    public var email: String?
    /** Specifies whether this is the first access to the user's account. */
    public var first: Bool?
    /** The unique confirmation key for validating user identity. */
    public var key: String?

    public init(email: String? = nil, first: Bool? = nil, key: String? = nil) {
        self.email = email
        self.first = first
        self.key = key
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case email
        case first
        case key
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(email, forKey: .email)
        try container.encodeIfPresent(first, forKey: .first)
        try container.encodeIfPresent(key, forKey: .key)
    }
}

