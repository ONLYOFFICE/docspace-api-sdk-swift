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

/** The presence or absence of the documents in the Open Recent... menu option. */
public struct RecentConfig: Sendable, Codable, Hashable {

    /** The folder where the document is stored. */
    public var folder: String?
    /** The document title that will be displayed in the Open Recent... menu option. */
    public var title: String?
    /** The absolute URL to the document where it is stored. */
    public var url: String?

    public init(folder: String? = nil, title: String? = nil, url: String? = nil) {
        self.folder = folder
        self.title = title
        self.url = url
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case folder
        case title
        case url
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(folder, forKey: .folder)
        try container.encodeIfPresent(title, forKey: .title)
        try container.encodeIfPresent(url, forKey: .url)
    }
}

