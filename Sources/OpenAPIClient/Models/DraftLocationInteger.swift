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

/** The file draft parameters. */
public struct DraftLocationInteger: Sendable, Codable, Hashable {

    /** The InProcess folder ID of the draft. */
    public var folderId: Int?
    /** The InProcess folder title of the draft. */
    public var folderTitle: String?
    /** The draft ID. */
    public var fileId: Int?
    /** The draft title. */
    public var fileTitle: String?

    public init(folderId: Int? = nil, folderTitle: String? = nil, fileId: Int? = nil, fileTitle: String? = nil) {
        self.folderId = folderId
        self.folderTitle = folderTitle
        self.fileId = fileId
        self.fileTitle = fileTitle
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case folderId
        case folderTitle
        case fileId
        case fileTitle
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(folderId, forKey: .folderId)
        try container.encodeIfPresent(folderTitle, forKey: .folderTitle)
        try container.encodeIfPresent(fileId, forKey: .fileId)
        try container.encodeIfPresent(fileTitle, forKey: .fileTitle)
    }
}

