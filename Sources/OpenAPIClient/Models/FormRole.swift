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

/** The form role. */
public struct FormRole: Sendable, Codable, Hashable {

    /** The room ID. */
    public var roomId: Int?
    /** The role name. */
    public var roleName: String?
    /** The role color. */
    public var roleColor: String?
    /** The user ID. */
    public var userId: UUID?
    /** The role sequence. */
    public var sequence: Int?
    /** Specifies if the role was submitted or not. */
    public var submitted: Bool?
    /** The date and time when the role was opened. */
    public var openedAt: Date?
    /** The date and time when the role was submitted. */
    public var submissionDate: Date?

    public init(roomId: Int? = nil, roleName: String? = nil, roleColor: String? = nil, userId: UUID? = nil, sequence: Int? = nil, submitted: Bool? = nil, openedAt: Date? = nil, submissionDate: Date? = nil) {
        self.roomId = roomId
        self.roleName = roleName
        self.roleColor = roleColor
        self.userId = userId
        self.sequence = sequence
        self.submitted = submitted
        self.openedAt = openedAt
        self.submissionDate = submissionDate
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case roomId
        case roleName
        case roleColor
        case userId
        case sequence
        case submitted
        case openedAt
        case submissionDate
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(roomId, forKey: .roomId)
        try container.encodeIfPresent(roleName, forKey: .roleName)
        try container.encodeIfPresent(roleColor, forKey: .roleColor)
        try container.encodeIfPresent(userId, forKey: .userId)
        try container.encodeIfPresent(sequence, forKey: .sequence)
        try container.encodeIfPresent(submitted, forKey: .submitted)
        try container.encodeIfPresent(openedAt, forKey: .openedAt)
        try container.encodeIfPresent(submissionDate, forKey: .submissionDate)
    }
}

