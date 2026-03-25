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

/** Available AI provider type settings. */
public struct ProviderSettingsDto: Sendable, Codable, Hashable {

    public var type: ProviderType?
    /** Default API endpoint URL for the provider type. */
    public var url: String?

    public init(type: ProviderType? = nil, url: String? = nil) {
        self.type = type
        self.url = url
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case url
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(url, forKey: .url)
    }
}

