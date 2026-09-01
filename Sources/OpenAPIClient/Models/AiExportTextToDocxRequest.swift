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

public struct AiExportTextToDocxRequest: Sendable, Codable, Hashable {

    /** Document title (also the file name). */
    public var title: String
    /** Markdown content to convert. */
    public var content: String
    public var folderId: AiExportTextToDocxRequestFolderId

    public init(title: String, content: String, folderId: AiExportTextToDocxRequestFolderId) {
        self.title = title
        self.content = content
        self.folderId = folderId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case title
        case content
        case folderId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(title, forKey: .title)
        try container.encode(content, forKey: .content)
        try container.encode(folderId, forKey: .folderId)
    }
}

