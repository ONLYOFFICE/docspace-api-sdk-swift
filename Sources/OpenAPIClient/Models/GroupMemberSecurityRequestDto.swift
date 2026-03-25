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

/** The group member security information. */
public struct GroupMemberSecurityRequestDto: Sendable, Codable, Hashable {

    public var user: EmployeeFullDto
    public var groupAccess: FileShare
    public var userAccess: FileShare?
    /** Specifies if the group access rights are overridden or not. */
    public var overridden: Bool
    /** Specifies if the group member can edit the group access rights or not. */
    public var canEditAccess: Bool
    /** Specifies if the group member is a group owner or not. */
    public var owner: Bool

    public init(user: EmployeeFullDto, groupAccess: FileShare, userAccess: FileShare? = nil, overridden: Bool, canEditAccess: Bool, owner: Bool) {
        self.user = user
        self.groupAccess = groupAccess
        self.userAccess = userAccess
        self.overridden = overridden
        self.canEditAccess = canEditAccess
        self.owner = owner
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case user
        case groupAccess
        case userAccess
        case overridden
        case canEditAccess
        case owner
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(user, forKey: .user)
        try container.encode(groupAccess, forKey: .groupAccess)
        try container.encodeIfPresent(userAccess, forKey: .userAccess)
        try container.encode(overridden, forKey: .overridden)
        try container.encode(canEditAccess, forKey: .canEditAccess)
        try container.encode(owner, forKey: .owner)
    }
}

