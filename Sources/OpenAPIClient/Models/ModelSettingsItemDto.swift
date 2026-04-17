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

/** A single model settings entry within a provider create or update request. */
public struct ModelSettingsItemDto: Sendable, Codable, Hashable {

    public static let modelIdRule = StringRule(minLength: 1, maxLength: 255, pattern: nil)
    public static let aliasRule = StringRule(minLength: nil, maxLength: 255, pattern: nil)
    /** The model identifier. */
    public var modelId: String
    /** Whether the model is enabled for use in chat. */
    public var isEnabled: Bool?
    /** The display name for the model. Only applies to non-recommended models. */
    public var alias: String?
    public var capabilities: AiModelCapabilities?

    public init(modelId: String, isEnabled: Bool? = nil, alias: String? = nil, capabilities: AiModelCapabilities? = nil) {
        self.modelId = modelId
        self.isEnabled = isEnabled
        self.alias = alias
        self.capabilities = capabilities
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case modelId
        case isEnabled
        case alias
        case capabilities
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(modelId, forKey: .modelId)
        try container.encodeIfPresent(isEnabled, forKey: .isEnabled)
        try container.encodeIfPresent(alias, forKey: .alias)
        try container.encodeIfPresent(capabilities, forKey: .capabilities)
    }
}

