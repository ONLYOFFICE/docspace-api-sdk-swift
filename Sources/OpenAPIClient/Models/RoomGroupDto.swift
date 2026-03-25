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

/** The room security parameters. */
public struct RoomGroupDto: Sendable, Codable, Hashable {

    /** The group ID. */
    public var id: Int?
    /** Group name */
    public var name: String?
    public var icon: MultiSizeLogoCover?
    /** The user ID. */
    public var userId: UUID?
    /** The list of rooms in the group. */
    public var rooms: [FileEntryBaseDto]?
    /** Total number of rooms in the group. */
    public var totalRooms: Int?

    public init(id: Int? = nil, name: String? = nil, icon: MultiSizeLogoCover? = nil, userId: UUID? = nil, rooms: [FileEntryBaseDto]? = nil, totalRooms: Int? = nil) {
        self.id = id
        self.name = name
        self.icon = icon
        self.userId = userId
        self.rooms = rooms
        self.totalRooms = totalRooms
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case icon
        case userId
        case rooms
        case totalRooms
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(icon, forKey: .icon)
        try container.encodeIfPresent(userId, forKey: .userId)
        try container.encodeIfPresent(rooms, forKey: .rooms)
        try container.encodeIfPresent(totalRooms, forKey: .totalRooms)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension RoomGroupDto: Identifiable {}
