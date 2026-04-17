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

/** AI model settings information. */
public struct ModelSettingsDto: Sendable, Codable, Hashable {

    /** The model identifier. */
    public var id: String?
    /** The display name for the model. */
    public var alias: String?
    /** Whether the model is enabled for use in chat. */
    public var isEnabled: Bool?
    /** Whether the model is recommended (defined in configuration). */
    public var isRecommended: Bool?
    public var capabilities: AiModelCapabilities

    public init(id: String?, alias: String? = nil, isEnabled: Bool? = nil, isRecommended: Bool? = nil, capabilities: AiModelCapabilities) {
        self.id = id
        self.alias = alias
        self.isEnabled = isEnabled
        self.isRecommended = isRecommended
        self.capabilities = capabilities
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case alias
        case isEnabled
        case isRecommended
        case capabilities
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encodeIfPresent(alias, forKey: .alias)
        try container.encodeIfPresent(isEnabled, forKey: .isEnabled)
        try container.encodeIfPresent(isRecommended, forKey: .isRecommended)
        try container.encode(capabilities, forKey: .capabilities)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension ModelSettingsDto: Identifiable {}
