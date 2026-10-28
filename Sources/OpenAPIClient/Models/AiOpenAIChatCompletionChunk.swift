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

/** One `chat.completion.chunk` of an OpenAI-compatible streaming response. Only the fields this service can populate are emitted - an OpenAI client tolerates the rest as absent. */
public struct AiOpenAIChatCompletionChunk: Sendable, Codable, Hashable {

    public enum Object: String, Sendable, Codable, CaseIterable {
        case chatPeriodCompletionPeriodChunk = "chat.completion.chunk"
    }
    /** The completion identifier, stable across every chunk of one response. */
    public var id: String
    /** Always `chat.completion.chunk`. */
    public var object: Object
    /** When the completion started, in Unix seconds. */
    public var created: Double
    /** The model that produced the completion - the resolved profile's model. */
    public var model: String
    /** The choices carried by this chunk. This service emits exactly one. */
    public var choices: [AiOpenAIChunkChoice]

    public init(id: String, object: Object, created: Double, model: String, choices: [AiOpenAIChunkChoice]) {
        self.id = id
        self.object = object
        self.created = created
        self.model = model
        self.choices = choices
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case object
        case created
        case model
        case choices
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(object, forKey: .object)
        try container.encode(created, forKey: .created)
        try container.encode(model, forKey: .model)
        try container.encode(choices, forKey: .choices)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension AiOpenAIChatCompletionChunk: Identifiable {}
