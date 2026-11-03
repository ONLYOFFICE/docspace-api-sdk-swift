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

/** The rooms of one account the caller can connect as context, grouped under the account. */
public struct AiContextFolder: Sendable, Codable, Hashable {

    /** The account the rooms belong to; `docspace` for this portal. */
    public var cloud: String
    /** The rooms of that account the caller can connect. */
    public var rooms: [AiContextRoom]

    public init(cloud: String, rooms: [AiContextRoom]) {
        self.cloud = cloud
        self.rooms = rooms
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case cloud
        case rooms
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(cloud, forKey: .cloud)
        try container.encode(rooms, forKey: .rooms)
    }
}

