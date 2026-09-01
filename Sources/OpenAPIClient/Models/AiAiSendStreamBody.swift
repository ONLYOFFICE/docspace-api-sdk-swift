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

/** Shared body of the two streaming send endpoints (`sendWithStream` and its OpenAI-framed twin) — the `Chat` action is implied, so there is no `actionType`. */
public struct AiAiSendStreamBody: Sendable, Codable, Hashable {

    /** Target thread; a new one is created (with an auto title) when omitted. */
    public var threadId: String?
    /** The user turn to send. */
    public var userMessage: AiThreadMessageLike
    /** Per-request engine options: extra tools, reasoning, prompt override. */
    public var actionArgs: AiAiActionArgs?
    /** Optional entity (room) scope for profile resolution. */
    public var entityId: String?
    /** Session-level profile override for this request only. */
    public var profileId: String?

    public init(threadId: String? = nil, userMessage: AiThreadMessageLike, actionArgs: AiAiActionArgs? = nil, entityId: String? = nil, profileId: String? = nil) {
        self.threadId = threadId
        self.userMessage = userMessage
        self.actionArgs = actionArgs
        self.entityId = entityId
        self.profileId = profileId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case threadId
        case userMessage
        case actionArgs
        case entityId
        case profileId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(threadId, forKey: .threadId)
        try container.encode(userMessage, forKey: .userMessage)
        try container.encodeIfPresent(actionArgs, forKey: .actionArgs)
        try container.encodeIfPresent(entityId, forKey: .entityId)
        try container.encodeIfPresent(profileId, forKey: .profileId)
    }
}

