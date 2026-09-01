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

/** The request parameters for creating a room group */
public struct RoomGroupRequestDto: Sendable, Codable, Hashable {

    public static let nameRule = StringRule(minLength: 0, maxLength: 128, pattern: nil)
    public static let iconRule = StringRule(minLength: 0, maxLength: 50, pattern: nil)
    /** Group name */
    public var name: String
    /** Group icon */
    public var icon: String
    /** The list of room IDs. */
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

