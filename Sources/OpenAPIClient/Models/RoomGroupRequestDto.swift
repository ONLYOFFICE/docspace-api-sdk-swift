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

/** The name, the icon and the rooms of a room group to create. */
public struct RoomGroupRequestDto: Sendable, Codable, Hashable {

    public static let nameRule = StringRule(minLength: 0, maxLength: 128, pattern: nil)
    public static let iconRule = StringRule(minLength: 0, maxLength: 50, pattern: nil)
    /** The name to show the group under. Surrounding spaces are trimmed before it is stored, a name that is blank  once trimmed is refused, and the name does not have to differ from the names of the caller's other groups. */
    public var name: String
    /** The icon of the group, given as the identifier of one of the built-in covers listed by  `GET api/2.0/files/rooms/covers`. An uploaded image cannot be used, and any value that is not one of those  identifiers is refused. */
    public var icon: String
    /** The rooms to gather in the group, each given as a number for a room stored in the portal or as a string for a  room on a connected third-party account. Every identifier has to name a room the caller can read; repeats are  collapsed, and an element of any other shape - a decimal number, a number sent as a string, null - is refused. */
    public var rooms: [DuplicateRequestDtoAllOfFileIds]

    public init(name: String, icon: String, rooms: [DuplicateRequestDtoAllOfFileIds]) {
        self.name = name
        self.icon = icon
        self.rooms = rooms
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case icon
        case rooms
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encode(icon, forKey: .icon)
        try container.encode(rooms, forKey: .rooms)
    }
}

