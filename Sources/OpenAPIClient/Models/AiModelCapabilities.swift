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

/** The AI model capabilities. */
public struct AiModelCapabilities: Sendable, Codable, Hashable {

    /** Indicates whether the model supports image and vision input. */
    public var vision: Bool?
    /** Indicates whether the model supports tool (function) calling. */
    public var toolCalling: Bool?
    /** Indicates whether the model supports extended thinking and reasoning. */
    public var thinking: Bool?

    public init(vision: Bool? = nil, toolCalling: Bool? = nil, thinking: Bool? = nil) {
        self.vision = vision
        self.toolCalling = toolCalling
        self.thinking = thinking
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case vision
        case toolCalling
        case thinking
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(vision, forKey: .vision)
        try container.encodeIfPresent(toolCalling, forKey: .toolCalling)
        try container.encodeIfPresent(thinking, forKey: .thinking)
    }
}

