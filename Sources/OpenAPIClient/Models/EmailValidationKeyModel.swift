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

/** The confirmation email parameters. */
public struct EmailValidationKeyModel: Sendable, Codable, Hashable {

    /** The email validation key. */
    public var key: String?
    public var emplType: EmployeeType?
    /** The email address. */
    public var email: String?
    /** The encrypted email address. */
    public var encEmail: String?
    /** The user ID. */
    public var uiD: UUID?
    public var type: ConfirmType?
    /** Specifies whether it is the first time account access or not. */
    public var first: String?
    /** The room ID. */
    public var roomId: String?

    public init(key: String? = nil, emplType: EmployeeType? = nil, email: String? = nil, encEmail: String? = nil, uiD: UUID? = nil, type: ConfirmType? = nil, first: String? = nil, roomId: String? = nil) {
        self.key = key
        self.emplType = emplType
        self.email = email
        self.encEmail = encEmail
        self.uiD = uiD
        self.type = type
        self.first = first
        self.roomId = roomId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case key
        case emplType
        case email
        case encEmail
        case uiD
        case type
        case first
        case roomId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(key, forKey: .key)
        try container.encodeIfPresent(emplType, forKey: .emplType)
        try container.encodeIfPresent(email, forKey: .email)
        try container.encodeIfPresent(encEmail, forKey: .encEmail)
        try container.encodeIfPresent(uiD, forKey: .uiD)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(first, forKey: .first)
        try container.encodeIfPresent(roomId, forKey: .roomId)
    }
}

