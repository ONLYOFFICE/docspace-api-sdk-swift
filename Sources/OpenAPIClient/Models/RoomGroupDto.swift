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

/** A personal collection of rooms: the name and icon it was given, the account that owns it, and the rooms it gathers  at the moment it was read. */
public struct RoomGroupDto: Sendable, Codable, Hashable {

    /** The identifier of the group, which addresses it in every other group operation and is kept for as long as the  group exists. */
    public var id: Int?
    /** The name its owner gave the group, stored trimmed of surrounding spaces. Names are not unique, so two groups  of the same account can be told apart only by their identifier. */
    public var name: String?
    /** The built-in cover chosen for the group, carrying the cover identifier and its rendering in each available  size. Null when the group has no icon, either because it was never given one or because the icon was cleared  by setting it to an empty value. */
    public var icon: MultiSizeLogoCover?
    /** The account that created the group and the only one able to read, change or delete it; for any other member of  the portal the group does not exist. */
    public var userId: UUID?
    /** The rooms the group gathers, those stored in the portal first and those on connected third-party accounts  after them. Null when the group was asked for without its members, and an empty array when the group holds no  room the caller can still see. A room moved to the archive is left out until it is taken out of the archive. */
    public var rooms: [FileEntryBaseDto]?
    /** How many rooms the group shows: the same rooms `rooms` lists, so archived ones are not counted either. It is  filled even when the rooms themselves were not asked for, which makes it the cheap way to tell an empty group  from a populated one. */
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
