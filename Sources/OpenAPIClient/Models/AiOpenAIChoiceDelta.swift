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

/** The incremental part of one choice - what this chunk adds to the assistant message. */
public struct AiOpenAIChoiceDelta: Sendable, Codable, Hashable {

    public enum Role: String, Sendable, Codable, CaseIterable {
        case assistant = "assistant"
    }
    /** Sent on the first chunk only, always `assistant`. */
    public var role: Role?
    /** The text this chunk appends. Null when the chunk carries no text. */
    public var content: String?
    /** The tool calls the model requested, emitted in place of text. */
    public var toolCalls: [AiOpenAIToolCallDelta]?

    public init(role: Role? = nil, content: String? = nil, toolCalls: [AiOpenAIToolCallDelta]? = nil) {
        self.role = role
        self.content = content
        self.toolCalls = toolCalls
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case role
        case content
        case toolCalls = "tool_calls"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(role, forKey: .role)
        try container.encodeIfPresent(content, forKey: .content)
        try container.encodeIfPresent(toolCalls, forKey: .toolCalls)
    }
}

