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

/** Per-request options of an AI round: extra tools, the depth of reasoning, a system prompt override and the rooms and folder connected as context. */
public struct AiActionArgs: Sendable, Codable, Hashable {

    /** Extra tools offered to the model for this request. */
    public var tools: [AiMCPItem]?
    /** Legacy extended-thinking switch; stands for `medium`. `reasoningLevel` wins when both are set. */
    public var isReasoning: Bool?
    /** Depth of extended thinking for the round; providers clamp it to what the model accepts. */
    public var reasoningLevel: AiReasoningLevel?
    public var prompt: AiActionArgsPrompt?
    /** Usage notes of the MCP servers the caller holds the connection to, keyed by server type; folded into the system prompt as advisory text. */
    public var toolInstructions: [String: String]?
    /** Instructions rooms connected to the chat as context, each with the skills the round may use. */
    public var contextRooms: [AiContextRoomRef]?
    /** Knowledge rooms connected to the chat; the knowledge search tool of the round is limited to them. Each `id` has to be a DocSpace room id. */
    public var knowledgeRooms: [AiKnowledgeRoomRef]?
    /** A single knowledge room, as an older client sends it. Read only when `knowledgeRooms` is absent; send `knowledgeRooms` instead. */
    @available(*, deprecated, message: "This property is deprecated.")
    public var knowledgeRoom: AiKnowledgeRoomRef?
    /** The folder connected to the chat as the round's context. It becomes the location the model is told the user works in, and the entry the round is attributed to. */
    public var folderContext: AiFolderContextRef?
    /** The entry the round is attributed to. A hint, resolved against the caller's own access. */
    public var entityId: String?

    public init(tools: [AiMCPItem]? = nil, isReasoning: Bool? = nil, reasoningLevel: AiReasoningLevel? = nil, prompt: AiActionArgsPrompt? = nil, toolInstructions: [String: String]? = nil, contextRooms: [AiContextRoomRef]? = nil, knowledgeRooms: [AiKnowledgeRoomRef]? = nil, knowledgeRoom: AiKnowledgeRoomRef? = nil, folderContext: AiFolderContextRef? = nil, entityId: String? = nil) {
        self.tools = tools
        self.isReasoning = isReasoning
        self.reasoningLevel = reasoningLevel
        self.prompt = prompt
        self.toolInstructions = toolInstructions
        self.contextRooms = contextRooms
        self.knowledgeRooms = knowledgeRooms
        self.knowledgeRoom = knowledgeRoom
        self.folderContext = folderContext
        self.entityId = entityId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case tools
        case isReasoning
        case reasoningLevel
        case prompt
        case toolInstructions
        case contextRooms
        case knowledgeRooms
        case knowledgeRoom
        case folderContext
        case entityId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(tools, forKey: .tools)
        try container.encodeIfPresent(isReasoning, forKey: .isReasoning)
        try container.encodeIfPresent(reasoningLevel, forKey: .reasoningLevel)
        try container.encodeIfPresent(prompt, forKey: .prompt)
        try container.encodeIfPresent(toolInstructions, forKey: .toolInstructions)
        try container.encodeIfPresent(contextRooms, forKey: .contextRooms)
        try container.encodeIfPresent(knowledgeRooms, forKey: .knowledgeRooms)
        try container.encodeIfPresent(knowledgeRoom, forKey: .knowledgeRoom)
        try container.encodeIfPresent(folderContext, forKey: .folderContext)
        try container.encodeIfPresent(entityId, forKey: .entityId)
    }
}

