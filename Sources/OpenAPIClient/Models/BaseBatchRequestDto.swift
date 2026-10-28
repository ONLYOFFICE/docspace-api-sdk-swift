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

/** The files and folders a background operation is applied to. */
public struct BaseBatchRequestDto: Sendable, Codable, Hashable {

    /** Which operations the answer carries: `true` returns the operation this call started and nothing else, `false`  returns every operation of the same kind that the caller has running or unread. When nothing was queued, which  happens for an empty selection, `true` falls back to the full list. */
    public var returnSingleOperation: Bool?
    /** The folders to act on, by id, as reported by a folder listing such as `GET api/2.0/files/{folderId}`. A number  addresses a folder stored in the portal itself, a string addresses a folder on a connected third-party  account, and both kinds may be sent in one list. */
    public var folderIds: [BaseBatchRequestDtoAllOfFolderIds]?
    /** The files to act on, by id, as reported by a folder listing such as `GET api/2.0/files/{folderId}`. A number  addresses a file stored in the portal itself, a string addresses a file on a connected third-party account,  and both kinds may be sent in one list. */
    public var fileIds: [BaseBatchRequestDtoAllOfFileIds]?

    public init(returnSingleOperation: Bool? = nil, folderIds: [BaseBatchRequestDtoAllOfFolderIds]? = nil, fileIds: [BaseBatchRequestDtoAllOfFileIds]? = nil) {
        self.returnSingleOperation = returnSingleOperation
        self.folderIds = folderIds
        self.fileIds = fileIds
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case returnSingleOperation
        case folderIds
        case fileIds
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(returnSingleOperation, forKey: .returnSingleOperation)
        try container.encodeIfPresent(folderIds, forKey: .folderIds)
        try container.encodeIfPresent(fileIds, forKey: .fileIds)
    }
}

