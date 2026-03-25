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

/** Request parameters for creating a new AI provider. */
public struct CreateProviderRequestDto: Sendable, Codable, Hashable {

    public var type: ProviderType?
    /** The display title for the AI provider. */
    public var title: String?
    /** The API endpoint URL for the AI provider. Required for OpenAiCompatible type; optional for other types that have default URLs. */
    public var url: String?
    /** The authentication API key for the AI provider. */
    public var key: String?

    public init(type: ProviderType? = nil, title: String?, url: String? = nil, key: String?) {
        self.type = type
        self.title = title
        self.url = url
        self.key = key
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case title
        case url
        case key
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encode(title, forKey: .title)
        try container.encodeIfPresent(url, forKey: .url)
        try container.encode(key, forKey: .key)
    }
}

