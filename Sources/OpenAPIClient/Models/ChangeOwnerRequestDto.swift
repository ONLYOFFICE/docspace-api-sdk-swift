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

/** The request parameters for changing the file owner. */
public struct ChangeOwnerRequestDto: Sendable, Codable, Hashable {

    /** The list of folder IDs to change the owner. */
    public var folderIds: [BatchRequestDtoAllOfFileIds]?
    /** The list of file IDs to change the owner. */
    public var fileIds: [BatchRequestDtoAllOfFileIds]?
    /** The new file owner ID. */
    public var userId: UUID

    public init(folderIds: [BatchRequestDtoAllOfFileIds]? = nil, fileIds: [BatchRequestDtoAllOfFileIds]? = nil, userId: UUID) {
        self.folderIds = folderIds
        self.fileIds = fileIds
        self.userId = userId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case folderIds
        case fileIds
        case userId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(folderIds, forKey: .folderIds)
        try container.encodeIfPresent(fileIds, forKey: .fileIds)
        try container.encode(userId, forKey: .userId)
    }
}

