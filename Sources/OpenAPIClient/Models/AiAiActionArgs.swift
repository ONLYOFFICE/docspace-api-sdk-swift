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

public struct AiAiActionArgs: Sendable, Codable, Hashable {

    /** Extra tools offered to the model for this request. */
    public var tools: [AiTMCPItem]?
    /** Legacy extended-thinking switch; stands for `medium`. `reasoningLevel` wins when both are set. */
    public var isReasoning: Bool?
    /** Depth of extended thinking for the round; providers clamp it to what the model accepts. */
    public var reasoningLevel: AiAiReasoningLevel?
    public var prompt: AiAiActionArgsPrompt?

    public init(tools: [AiTMCPItem]? = nil, isReasoning: Bool? = nil, reasoningLevel: AiAiReasoningLevel? = nil, prompt: AiAiActionArgsPrompt? = nil) {
        self.tools = tools
        self.isReasoning = isReasoning
        self.reasoningLevel = reasoningLevel
        self.prompt = prompt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case tools
        case isReasoning
        case reasoningLevel
        case prompt
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(tools, forKey: .tools)
        try container.encodeIfPresent(isReasoning, forKey: .isReasoning)
        try container.encodeIfPresent(reasoningLevel, forKey: .reasoningLevel)
        try container.encodeIfPresent(prompt, forKey: .prompt)
    }
}

