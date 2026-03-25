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

/** The group request parameters. */
public struct GroupRequestDto: Sendable, Codable, Hashable {

    public static let groupNameRule = StringRule(minLength: 0, maxLength: 128, pattern: nil)
    /** The list of group member IDs. */
    public var members: [UUID]?
    /** The group manager ID. */
    public var groupManager: UUID
    /** The group name. */
    public var groupName: String?

    public init(members: [UUID]? = nil, groupManager: UUID, groupName: String? = nil) {
        self.members = members
        self.groupManager = groupManager
        self.groupName = groupName
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case members
        case groupManager
        case groupName
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(members, forKey: .members)
        try container.encode(groupManager, forKey: .groupManager)
        try container.encodeIfPresent(groupName, forKey: .groupName)
    }
}

