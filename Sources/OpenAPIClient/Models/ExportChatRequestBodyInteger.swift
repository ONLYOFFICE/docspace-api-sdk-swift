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

/** Parameters for exporting an AI chat session to a document. */
public struct ExportChatRequestBodyInteger: Sendable, Codable, Hashable {

    /** The identifier of the destination folder where the exported document will be saved. */
    public var folderId: Int
    /** The file name (without extension) to use for the exported document. */
    public var title: String?

    public init(folderId: Int, title: String?) {
        self.folderId = folderId
        self.title = title
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case folderId
        case title
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(folderId, forKey: .folderId)
        try container.encode(title, forKey: .title)
    }
}

