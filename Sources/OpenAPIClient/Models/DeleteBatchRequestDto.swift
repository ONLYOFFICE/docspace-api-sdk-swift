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

/** The request parameters for deleting files. */
public struct DeleteBatchRequestDto: Sendable, Codable, Hashable {

    /** Specifies whether to return only the current operation */
    public var returnSingleOperation: Bool?
    /** The list of folder IDs to be deleted. */
    public var folderIds: [DeleteBatchRequestDtoAllOfFolderIds]?
    /** The list of file IDs to be deleted. */
    public var fileIds: [DeleteBatchRequestDtoAllOfFileIds]?
    /** Specifies whether to delete a file after the editing session is finished or not */
    public var deleteAfter: Bool?
    /** Specifies whether to move a file to the \\Trash\\ folder or delete it immediately. */
    public var immediately: Bool?

    public init(returnSingleOperation: Bool? = nil, folderIds: [DeleteBatchRequestDtoAllOfFolderIds]? = nil, fileIds: [DeleteBatchRequestDtoAllOfFileIds]? = nil, deleteAfter: Bool? = nil, immediately: Bool? = nil) {
        self.returnSingleOperation = returnSingleOperation
        self.folderIds = folderIds
        self.fileIds = fileIds
        self.deleteAfter = deleteAfter
        self.immediately = immediately
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case returnSingleOperation
        case folderIds
        case fileIds
        case deleteAfter
        case immediately
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(returnSingleOperation, forKey: .returnSingleOperation)
        try container.encodeIfPresent(folderIds, forKey: .folderIds)
        try container.encodeIfPresent(fileIds, forKey: .fileIds)
        try container.encodeIfPresent(deleteAfter, forKey: .deleteAfter)
        try container.encodeIfPresent(immediately, forKey: .immediately)
    }
}

