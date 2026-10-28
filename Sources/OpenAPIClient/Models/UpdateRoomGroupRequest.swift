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

/** The changes to apply to a room group: a new name, rooms to attach and rooms to detach, in any combination. */
public struct UpdateRoomGroupRequest: Sendable, Codable, Hashable {

    public static let groupNameRule = StringRule(minLength: 0, maxLength: 128, pattern: nil)
    /** The rooms to attach to the group, each given as a number for a room stored in the portal or as a string for a  room on a connected third-party account. Every identifier has to name a room the caller can read; repeats and  rooms the group already holds are collapsed rather than refused. */
    public var roomsToAdd: [DuplicateRequestDtoAllOfFileIds]?
    /** The rooms to detach from the group, in the same two forms. Detaching leaves the room and its content  untouched, and a room the group already holds can be detached even when the caller has lost access to it in  the meantime. */
    public var roomsToRemove: [DuplicateRequestDtoAllOfFileIds]?
    /** The new name of the group, trimmed of surrounding spaces before it is stored. Leaving the member out keeps the  current name, and a name that is blank once trimmed is refused. */
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

