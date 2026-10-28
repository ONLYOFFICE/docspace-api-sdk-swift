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

/** One role of a form and the account that fills it. */
public struct FormRoleRequest: Sendable, Codable, Hashable {

    /** The ID of the room the form is in. It is stored with the role as sent, so pass the room the form lives in. */
    public var roomId: Int?
    /** The name of a role the form defines, such as the one the form author gave a group of fields. */
    public var roleName: String?
    /** The color the editor marks the fields of this role with, as a hex code. */
    public var roleColor: String?
    /** The account that fills this role. It is notified once filling starts, unless it is the caller. */
    public var userId: UUID?
    /** Accepted for compatibility and ignored: the position of the role in the list sets the filling order. */
    public var sequence: Int?
    /** Whether this role counts as already submitted. It is stored as sent; send false when filling starts. */
    public var submitted: Bool?
    /** Accepted for compatibility and ignored: the portal records when the role is opened. */
    public var openedAt: Date?
    /** Accepted for compatibility and ignored: the portal records when the role is submitted. */
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

