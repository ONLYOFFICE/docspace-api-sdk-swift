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

/** The chat settings. */
public struct ChatSettings: Sendable, Codable, Hashable {

    /** The provider ID. */
    public var providerId: Int?
    /** The model ID. */
    public var modelId: String?
    /** The prompt. */
    public var prompt: String?
    /** Specifies whether the provider is internal or not. */
    public var _internal: Bool?

    public init(providerId: Int? = nil, modelId: String? = nil, prompt: String? = nil, _internal: Bool? = nil) {
        self.providerId = providerId
        self.modelId = modelId
        self.prompt = prompt
        self._internal = _internal
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case providerId
        case modelId
        case prompt
        case _internal = "internal"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(providerId, forKey: .providerId)
        try container.encodeIfPresent(modelId, forKey: .modelId)
        try container.encodeIfPresent(prompt, forKey: .prompt)
        try container.encodeIfPresent(_internal, forKey: ._internal)
    }
}

