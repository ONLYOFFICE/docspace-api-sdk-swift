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

/** Where one produced file goes. */
public struct RunBuilderScriptOutputRequest: Sendable, Codable, Hashable {

    /** The id of a portal file to store the result in as a new version, as reported by a folder listing such as  `GET api/2.0/files/{folderId}`. */
    public var fileId: Int?
    /** The id of a folder to save the result in as a new file, as reported by a folder listing such as  `GET api/2.0/files/{folderId}`. */
    public var folderId: Int?
    /** The title of the new file, when it has to differ from the name the script saved the result under. */
    public var title: String?

    public init(fileId: Int? = nil, folderId: Int? = nil, title: String? = nil) {
        self.fileId = fileId
        self.folderId = folderId
        self.title = title
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case fileId
        case folderId
        case title
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(fileId, forKey: .fileId)
        try container.encodeIfPresent(folderId, forKey: .folderId)
        try container.encodeIfPresent(title, forKey: .title)
    }
}

