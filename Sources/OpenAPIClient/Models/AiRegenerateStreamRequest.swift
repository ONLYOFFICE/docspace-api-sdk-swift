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

public struct AiRegenerateStreamRequest: Sendable, Codable, Hashable {

    /** Target thread (must already exist). */
    public var threadId: String
    /** The user message to re-roll from: everything stored after it is deleted. When omitted, or no longer in the thread, the last user message is used. */
    public var messageId: String?
    /** How many messages from the start of the thread to keep, used when `messageId` does not resolve. The message at `keepCount - 1` has to be a user message; otherwise the value is ignored. */
    public var keepCount: Int?
    /** The thread length the caller saw when it computed `keepCount`. When it differs from the stored length, `keepCount` is discarded and the last user message is used instead. */
    public var expectedLength: Int?
    /** Per-request options of the round: extra tools, reasoning, a prompt override and the connected context. */
    public var actionArgs: AiActionArgs?
    /** Optional entity (room) scope for profile resolution. */
    public var entityId: String?
    /** The folder or room the user is in. Tools run against it and the model is told it is the user's location; falls back to `entityId` when omitted. */
    public var contextEntityId: String?
    /** Session-level profile override for this request only. */
    public var profileId: String?

    public init(threadId: String, messageId: String? = nil, keepCount: Int? = nil, expectedLength: Int? = nil, actionArgs: AiActionArgs? = nil, entityId: String? = nil, contextEntityId: String? = nil, profileId: String? = nil) {
        self.threadId = threadId
        self.messageId = messageId
        self.keepCount = keepCount
        self.expectedLength = expectedLength
        self.actionArgs = actionArgs
        self.entityId = entityId
        self.contextEntityId = contextEntityId
        self.profileId = profileId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case threadId
        case messageId
        case keepCount
        case expectedLength
        case actionArgs
        case entityId
        case contextEntityId
        case profileId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(threadId, forKey: .threadId)
        try container.encodeIfPresent(messageId, forKey: .messageId)
        try container.encodeIfPresent(keepCount, forKey: .keepCount)
        try container.encodeIfPresent(expectedLength, forKey: .expectedLength)
        try container.encodeIfPresent(actionArgs, forKey: .actionArgs)
        try container.encodeIfPresent(entityId, forKey: .entityId)
        try container.encodeIfPresent(contextEntityId, forKey: .contextEntityId)
        try container.encodeIfPresent(profileId, forKey: .profileId)
    }
}

