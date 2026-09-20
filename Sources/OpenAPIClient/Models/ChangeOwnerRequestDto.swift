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

/** The rooms and files to hand over, together with the account that takes them. */
public struct ChangeOwnerRequestDto: Sendable, Codable, Hashable {

    /** The rooms to hand over, identified as `GET api/2.0/files/rooms` returns them - a number for a room stored on  the portal and a string for one that lives on a connected third-party account. Only rooms belong here; a  folder inside a room is refused. */
    public var folderIds: [BatchRequestDtoAllOfFileIds]?
    /** The files to hand over, identified as a listing operation returns them - a number for a file stored on the  portal and a string for one on a connected third-party account. Only a file kept in the portal's common  section is accepted. */
    public var fileIds: [BatchRequestDtoAllOfFileIds]?
    /** The account that becomes the owner of every listed entry. It has to be an active member allowed to manage  rooms, so a deactivated account, a guest or a plain member is rejected, and for a private room the account  must have set up its encryption keys beforehand. */
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

