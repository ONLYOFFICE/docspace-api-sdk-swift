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

/** Parameters for configuring web search settings. */
public struct SetWebSearchSettingsRequestBody: Sendable, Codable, Hashable {

    /** Indicates whether web search is enabled for AI chat sessions. */
    public var enabled: Bool?
    public var type: EngineType?
    /** The API key for the selected web search engine. Pass null to keep the existing key unchanged. */
    public var key: String?

    public init(enabled: Bool? = nil, type: EngineType? = nil, key: String? = nil) {
        self.enabled = enabled
        self.type = type
        self.key = key
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case enabled
        case type
        case key
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(enabled, forKey: .enabled)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(key, forKey: .key)
    }
}

