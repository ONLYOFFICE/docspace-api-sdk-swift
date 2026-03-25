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

public struct UpdateRoomGroupRequest: Sendable, Codable, Hashable {

    public static let groupNameRule = StringRule(minLength: 0, maxLength: 128, pattern: nil)
    /** The list of room IDs to add to the group. */
    public var roomsToAdd: [DuplicateRequestDtoAllOfFileIds]?
    /** The list of room IDs to remove from the group. */
    public var roomsToRemove: [DuplicateRequestDtoAllOfFileIds]?
    /** The group name. */
    public var groupName: String?

    public init(roomsToAdd: [DuplicateRequestDtoAllOfFileIds]? = nil, roomsToRemove: [DuplicateRequestDtoAllOfFileIds]? = nil, groupName: String? = nil) {
        self.roomsToAdd = roomsToAdd
        self.roomsToRemove = roomsToRemove
        self.groupName = groupName
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case roomsToAdd
        case roomsToRemove
        case groupName
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(roomsToAdd, forKey: .roomsToAdd)
        try container.encodeIfPresent(roomsToRemove, forKey: .roomsToRemove)
        try container.encodeIfPresent(groupName, forKey: .groupName)
    }
}

