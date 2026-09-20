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

/** The pair of values that names a document across portals, as it is written into a spreadsheet formula. */
public struct FileReferenceData: Sendable, Codable, Hashable {

    /** The id of the document inside the portal named below. */
    public var fileKey: String?
    /** The portal the document lives in. A reference whose value is not this portal cannot be resolved by the file  key and falls back to the path or the link. */
    public var instanceId: String?
    /** The room the document lies in. It is filled in only for a document opened in a virtual data room, and stays  empty everywhere else. */
    public var roomId: String?
    /** Whether the caller may manage the room named above; it is only meaningful together with it. */
    public var canEditRoom: Bool?

    public init(fileKey: String? = nil, instanceId: String? = nil, roomId: String? = nil, canEditRoom: Bool? = nil) {
        self.fileKey = fileKey
        self.instanceId = instanceId
        self.roomId = roomId
        self.canEditRoom = canEditRoom
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case fileKey
        case instanceId
        case roomId
        case canEditRoom
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(fileKey, forKey: .fileKey)
        try container.encodeIfPresent(instanceId, forKey: .instanceId)
        try container.encodeIfPresent(roomId, forKey: .roomId)
        try container.encodeIfPresent(canEditRoom, forKey: .canEditRoom)
    }
}

