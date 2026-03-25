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

/** Parameters for configuring the embedding provider. */
public struct SetEmbeddingConfigRequestBody: Sendable, Codable, Hashable {

    public var type: EmbeddingProviderType?
    /** The API key for the selected embedding provider. Pass null to keep the existing key unchanged. */
    public var key: String?

    public init(type: EmbeddingProviderType? = nil, key: String? = nil) {
        self.type = type
        self.key = key
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case key
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(key, forKey: .key)
    }
}

