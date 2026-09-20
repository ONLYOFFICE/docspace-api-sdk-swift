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

/** The place and the name the PDF copy of a file is stored under. */
public struct SaveAsPdf: Sendable, Codable, Hashable {

    /** The folder the PDF is created in; the caller has to be allowed to create files there. */
    public var folderId: Int
    /** The name of the PDF, without an extension - `.pdf` is appended. Left empty, the name of the source file is  reused with its extension replaced. */
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

