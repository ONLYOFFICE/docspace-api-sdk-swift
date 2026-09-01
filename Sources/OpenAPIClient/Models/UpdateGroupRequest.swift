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

/** The request for updating a group. */
public struct UpdateGroupRequest: Sendable, Codable, Hashable {

    public static let groupNameRule = StringRule(minLength: 0, maxLength: 128, pattern: nil)
    /** The list of user IDs to add to the group. */
    public var membersToAdd: [UUID]?
    /** The list of user IDs to remove from the group. */
    public var membersToRemove: [UUID]?
    /** The group manager ID. */
    public var groupManager: UUID?
    /** The group name. */
    public var groupName: String?

    public init(membersToAdd: [UUID]? = nil, membersToRemove: [UUID]? = nil, groupManager: UUID? = nil, groupName: String? = nil) {
        self.membersToAdd = membersToAdd
        self.membersToRemove = membersToRemove
        self.groupManager = groupManager
        self.groupName = groupName
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case membersToAdd
        case membersToRemove
        case groupManager
        case groupName
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(membersToAdd, forKey: .membersToAdd)
        try container.encodeIfPresent(membersToRemove, forKey: .membersToRemove)
        try container.encodeIfPresent(groupManager, forKey: .groupManager)
        try container.encodeIfPresent(groupName, forKey: .groupName)
    }
}

