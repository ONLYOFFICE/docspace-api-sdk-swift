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

/** Identifies a pending tool call to resume — mirrors the library `ToolCallData` (its serializable fields). */
public struct AiAiToolCallData: Sendable, Codable, Hashable {

    /** Thread the assistant message belongs to. */
    public var threadId: String
    /** Storage id of the assistant message holding the tool call. */
    public var messageId: String
    /** Index of the tool-call content part inside `message.content`. */
    public var idx: Double
    /** Snapshot of the assistant message at the time the tool call surfaced. */
    public var message: AiThreadMessageLike
    /** Per-request engine options: extra tools, reasoning, prompt override. */
    public var actionArgs: AiAiActionArgs?
    /** Optional entity (room) scope for profile resolution. */
    public var entityId: String?
    /** Session-level profile override for this request only. */
    public var profileId: String?

    public init(threadId: String, messageId: String, idx: Double, message: AiThreadMessageLike, actionArgs: AiAiActionArgs? = nil, entityId: String? = nil, profileId: String? = nil) {
        self.threadId = threadId
        self.messageId = messageId
        self.idx = idx
        self.message = message
        self.actionArgs = actionArgs
        self.entityId = entityId
        self.profileId = profileId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case threadId
        case messageId
        case idx
        case message
        case actionArgs
        case entityId
        case profileId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(threadId, forKey: .threadId)
        try container.encode(messageId, forKey: .messageId)
        try container.encode(idx, forKey: .idx)
        try container.encode(message, forKey: .message)
        try container.encodeIfPresent(actionArgs, forKey: .actionArgs)
        try container.encodeIfPresent(entityId, forKey: .entityId)
        try container.encodeIfPresent(profileId, forKey: .profileId)
    }
}

