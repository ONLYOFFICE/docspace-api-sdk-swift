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

/** The files and folders to move or copy, the folder they go to, and the way name clashes are settled. */
public struct BatchRequestDto: Sendable, Codable, Hashable {

    /** Which operations the answer carries: `true` returns the operation this call started and nothing else, `false`  returns every operation of the same kind that the caller has running or unread. When nothing was queued, which  happens for an empty selection, `true` falls back to the full list. */
    public var returnSingleOperation: Bool?
    /** The folders to move or copy, by id. A number addresses a folder stored in the portal itself, a string  addresses a folder on a connected third-party account, and both kinds may be sent in one list. */
    public var folderIds: [BatchRequestDtoAllOfFolderIds]?
    /** The files to move or copy, by id. A number addresses a file stored in the portal itself, a string addresses a  file on a connected third-party account, and both kinds may be sent in one list. */
    public var fileIds: [BatchRequestDtoAllOfFileIds]?
    public var destFolderId: BatchRequestDtoAllOfDestFolderId?
    /** What happens to an item whose name is already taken in the destination folder: `skip` leaves it where it is,  `overwrite` replaces the entry at the destination, and `duplicate` places it beside that entry under a name  with a numeric suffix. `GET api/2.0/files/fileops/move` reports which items would clash. */
    public var conflictResolveType: FileConflictResolveType?
    /** Whether the finished operation is still reported: `false` keeps its final record readable through  `GET api/2.0/files/fileops` until it has been read once, `true` drops the record as soon as the work is done.  It deletes nothing: a move takes the sources away in any case, and a copy always leaves them. */
    public var deleteAfter: Bool?
    /** What is taken from a listed folder: `false` moves or copies the folder itself, `true` takes only what it  contains, so its files and subfolders land in the destination and the folder is not recreated there. */
    public var content: Bool?
    /** Marks every copied PDF form as a draft prepared for filling, which is how such a copy reports its filling  status in a virtual data room. Files that are not forms are left unaffected. */
    public var toFillOut: Bool?

    public init(returnSingleOperation: Bool? = nil, folderIds: [BatchRequestDtoAllOfFolderIds]? = nil, fileIds: [BatchRequestDtoAllOfFileIds]? = nil, destFolderId: BatchRequestDtoAllOfDestFolderId? = nil, conflictResolveType: FileConflictResolveType? = nil, deleteAfter: Bool? = nil, content: Bool? = nil, toFillOut: Bool? = nil) {
        self.returnSingleOperation = returnSingleOperation
        self.folderIds = folderIds
        self.fileIds = fileIds
        self.destFolderId = destFolderId
        self.conflictResolveType = conflictResolveType
        self.deleteAfter = deleteAfter
        self.content = content
        self.toFillOut = toFillOut
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case returnSingleOperation
        case folderIds
        case fileIds
        case destFolderId
        case conflictResolveType
        case deleteAfter
        case content
        case toFillOut
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(returnSingleOperation, forKey: .returnSingleOperation)
        try container.encodeIfPresent(folderIds, forKey: .folderIds)
        try container.encodeIfPresent(fileIds, forKey: .fileIds)
        try container.encodeIfPresent(destFolderId, forKey: .destFolderId)
        try container.encodeIfPresent(conflictResolveType, forKey: .conflictResolveType)
        try container.encodeIfPresent(deleteAfter, forKey: .deleteAfter)
        try container.encodeIfPresent(content, forKey: .content)
        try container.encodeIfPresent(toFillOut, forKey: .toFillOut)
    }
}

