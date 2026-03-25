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

/** The chat settings parameters. */
public struct ChatSettingsDto: Sendable, Codable, Hashable {

    /** The AI provider ID. */
    public var providerId: Int?
    /** The AI model ID used for chat completions. */
    public var modelId: String?
    /** The AI model display alias. */
    public var modelAlias: String?
    /** The system prompt for the chat. */
    public var prompt: String?
    public var multimodal: ChatMultimodalSettingsDto?
    /** Indicates whether the model supports extended thinking mode. */
    public var thinking: Bool?
    /** Indicates whether this is an internal AI gateway provider. */
    public var _internal: Bool?

    public init(providerId: Int? = nil, modelId: String? = nil, modelAlias: String? = nil, prompt: String? = nil, multimodal: ChatMultimodalSettingsDto? = nil, thinking: Bool? = nil, _internal: Bool? = nil) {
        self.providerId = providerId
        self.modelId = modelId
        self.modelAlias = modelAlias
        self.prompt = prompt
        self.multimodal = multimodal
        self.thinking = thinking
        self._internal = _internal
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case providerId
        case modelId
        case modelAlias
        case prompt
        case multimodal
        case thinking
        case _internal = "internal"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(providerId, forKey: .providerId)
        try container.encodeIfPresent(modelId, forKey: .modelId)
        try container.encodeIfPresent(modelAlias, forKey: .modelAlias)
        try container.encodeIfPresent(prompt, forKey: .prompt)
        try container.encodeIfPresent(multimodal, forKey: .multimodal)
        try container.encodeIfPresent(thinking, forKey: .thinking)
        try container.encodeIfPresent(_internal, forKey: ._internal)
    }
}

