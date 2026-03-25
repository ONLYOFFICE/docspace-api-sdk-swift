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

/** The form role parameters. */
public struct FormRoleDto: Sendable, Codable, Hashable {

    /** The role name. */
    public var roleName: String?
    /** The role color. */
    public var roleColor: String?
    public var user: EmployeeFullDto?
    /** The role sequence. */
    public var sequence: Int
    /** Specifies if the role is submitted. */
    public var submitted: Bool
    public var stopedBy: EmployeeFullDto?
    /** The role history. */
    public var history: [String: Date]?
    public var roleStatus: FormFillingStatus?

    public init(roleName: String?, roleColor: String? = nil, user: EmployeeFullDto? = nil, sequence: Int, submitted: Bool, stopedBy: EmployeeFullDto? = nil, history: [String: Date]? = nil, roleStatus: FormFillingStatus? = nil) {
        self.roleName = roleName
        self.roleColor = roleColor
        self.user = user
        self.sequence = sequence
        self.submitted = submitted
        self.stopedBy = stopedBy
        self.history = history
        self.roleStatus = roleStatus
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case roleName
        case roleColor
        case user
        case sequence
        case submitted
        case stopedBy
        case history
        case roleStatus
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(roleName, forKey: .roleName)
        try container.encodeIfPresent(roleColor, forKey: .roleColor)
        try container.encodeIfPresent(user, forKey: .user)
        try container.encode(sequence, forKey: .sequence)
        try container.encode(submitted, forKey: .submitted)
        try container.encodeIfPresent(stopedBy, forKey: .stopedBy)
        try container.encodeIfPresent(history, forKey: .history)
        try container.encodeIfPresent(roleStatus, forKey: .roleStatus)
    }
}

