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

/** One entry of the recent-documents list the editor offers. */
public struct RecentConfig: Sendable, Codable, Hashable {

    /** The folder shown next to the entry, as a readable name rather than an id. */
    public var folder: String?
    /** The name shown for the entry. */
    public var title: String?
    /** Where the entry opens. */
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

