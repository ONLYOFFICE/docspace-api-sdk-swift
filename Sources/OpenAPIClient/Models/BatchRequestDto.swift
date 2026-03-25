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

/** The request parameters for copying/moving files. */
public struct BatchRequestDto: Sendable, Codable, Hashable {

    /** Specifies whether to return only the current operation */
    public var returnSingleOperation: Bool?
    /** The list of folder IDs to be copied/moved. */
    public var folderIds: [BatchRequestDtoAllOfFolderIds]?
    /** The list of file IDs to be copied/moved. */
    public var fileIds: [BatchRequestDtoAllOfFileIds]?
    public var destFolderId: BatchRequestDtoAllOfDestFolderId?
    public var conflictResolveType: FileConflictResolveType?
    /** Specifies whether to delete the source files/folders after they are moved or copied to the destination folder. */
    public var deleteAfter: Bool?
    /** Specifies whether to copy or move the folder content or not. */
    public var content: Bool?
    /** Specifies whether the file is copied for filling out */
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

