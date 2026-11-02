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

/** Rooms to unlink from the AI project. */
public struct UnlinkAiProjectSourcesRequest: Sendable, Codable, Hashable {

    public static let roomIdsRule = ArrayRule(minItems: 1, maxItems: 40, uniqueItems: true)
    /** IDs of the rooms to unlink. IDs that are not linked to the project are ignored. */
    public var roomIds: Set<Int>?

    public init(roomIds: Set<Int>?) {
        self.roomIds = roomIds
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case roomIds
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(roomIds, forKey: .roomIds)
    }
}

