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

/** The file editing history URL parameters. */
public struct EditHistoryUrl: Sendable, Codable, Hashable {

    /** The document identifier of the previous version of the document. */
    public var key: String?
    /** The url address of the previous version of the document. */
    public var url: String?
    /** The document extension. */
    public var fileType: String?

    public init(key: String? = nil, url: String? = nil, fileType: String? = nil) {
        self.key = key
        self.url = url
        self.fileType = fileType
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case key
        case url
        case fileType
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(key, forKey: .key)
        try container.encodeIfPresent(url, forKey: .url)
        try container.encodeIfPresent(fileType, forKey: .fileType)
    }
}

