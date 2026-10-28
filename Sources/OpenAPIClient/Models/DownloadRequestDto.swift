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

/** The files and folders to pack into one archive, together with the formats they are converted to. */
public struct DownloadRequestDto: Sendable, Codable, Hashable {

    /** Which operations the answer carries: `true` returns the operation this call started and nothing else, `false`  returns every operation of the same kind that the caller has running or unread. When nothing was queued, which  happens for an empty selection, `true` falls back to the full list. */
    public var returnSingleOperation: Bool?
    /** The folders to pack, by id; everything inside them that the caller may read goes into the archive. A number  addresses a folder stored in the portal itself, a string addresses a folder on a connected third-party  account, and both kinds may be sent in one list. */
    public var folderIds: [DownloadRequestDtoAllOfFolderIds]?
    /** The files to pack as they are, by id, without conversion. A number addresses a file stored in the portal  itself, a string addresses a file on a connected third-party account, and both kinds may be sent in one list. */
    public var fileIds: [DownloadRequestDtoAllOfFileIds]?
    /** The files to convert before they are packed, each named together with the format it is converted to. A file  listed here does not have to be repeated in `fileIds`. */
    public var fileConvertIds: [DownloadRequestItemDto]?

    public init(returnSingleOperation: Bool? = nil, folderIds: [DownloadRequestDtoAllOfFolderIds]? = nil, fileIds: [DownloadRequestDtoAllOfFileIds]? = nil, fileConvertIds: [DownloadRequestItemDto]? = nil) {
        self.returnSingleOperation = returnSingleOperation
        self.folderIds = folderIds
        self.fileIds = fileIds
        self.fileConvertIds = fileConvertIds
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case returnSingleOperation
        case folderIds
        case fileIds
        case fileConvertIds
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(returnSingleOperation, forKey: .returnSingleOperation)
        try container.encodeIfPresent(folderIds, forKey: .folderIds)
        try container.encodeIfPresent(fileIds, forKey: .fileIds)
        try container.encodeIfPresent(fileConvertIds, forKey: .fileConvertIds)
    }
}

