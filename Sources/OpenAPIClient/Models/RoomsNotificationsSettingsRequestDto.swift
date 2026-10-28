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

/** Which single room the calling user silences, and which way. */
public struct RoomsNotificationsSettingsRequestDto: Sendable, Codable, Hashable {

    public var roomsId: JSONValue?
    /** Which way the room goes: `true` adds it to the caller silenced list, `false` takes it off again. While a room  is silenced its activity is left out of the hourly and daily digests, the letters it would send at once are  not sent, and its new-item counters are hidden. */
    public var mute: Bool?

    public init(roomsId: JSONValue? = nil, mute: Bool? = nil) {
        self.roomsId = roomsId
        self.mute = mute
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case roomsId
        case mute
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(roomsId, forKey: .roomsId)
        try container.encodeIfPresent(mute, forKey: .mute)
    }
}

