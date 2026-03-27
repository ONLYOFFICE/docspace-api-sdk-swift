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

/** Parameters for updating an AI provider's configuration. */
public struct UpdateProviderBody: Sendable, Codable, Hashable {

    /** The new display title for the AI provider. If null, the title is not changed. */
    public var title: String?
    /** The new API endpoint URL for the AI provider. If null, the URL is not changed. */
    public var url: String?
    /** The new authentication API key for the AI provider. If null, the key is not changed. */
    public var key: String?

    public init(title: String? = nil, url: String? = nil, key: String? = nil) {
        self.title = title
        self.url = url
        self.key = key
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case title
        case url
        case key
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(title, forKey: .title)
        try container.encodeIfPresent(url, forKey: .url)
        try container.encodeIfPresent(key, forKey: .key)
    }
}

