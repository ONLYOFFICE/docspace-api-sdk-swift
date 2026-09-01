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

/** Minimal provider connection configuration. Used to connect to a provider API. */
public struct AiTProvider: Sendable, Codable, Hashable {

    /** Provider type identifier. */
    public var type: AiProviderType
    /** User-defined display name for this provider connection. */
    public var name: String
    /** API key or token. Optional for local providers (Ollama, LM Studio). */
    public var key: String?
    /** Base URL of the provider API. */
    public var baseUrl: String

    public init(type: AiProviderType, name: String, key: String? = nil, baseUrl: String) {
        self.type = type
        self.name = name
        self.key = key
        self.baseUrl = baseUrl
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case name
        case key
        case baseUrl
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(type, forKey: .type)
        try container.encode(name, forKey: .name)
        try container.encodeIfPresent(key, forKey: .key)
        try container.encode(baseUrl, forKey: .baseUrl)
    }
}

