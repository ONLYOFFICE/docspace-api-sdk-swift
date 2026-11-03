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

/** One event of a chat stream, told apart by `type`: `message-start`, `message-delta` and `message-end` frame the assistant reply, `message-incomplete` reports a provider error or an unfinished answer, `thread-title` carries a generated title, and `tool-call-pending` pauses the round until the call is approved (`POST api/2.0/ai/ai/approve-tool-call`) or denied (`POST api/2.0/ai/ai/deny-tool-call`). */
public struct AiChatEvent: Sendable, Codable, Hashable {

    public enum ModelType: String, Sendable, Codable, CaseIterable {
        case userMessageStored = "user-message-stored"
        case messageStart = "message-start"
        case messageDelta = "message-delta"
        case messageEnd = "message-end"
        case messageIncomplete = "message-incomplete"
        case toolCallPending = "tool-call-pending"
        case threadTitle = "thread-title"
    }
    /** Emitted once per `sendWithStream` call, immediately after the user message has been persisted by storage and before the assistant stream starts. Carries the storage-assigned `id` and `createdAt`. The UI uses it to render the user bubble — no client-side optimistic placeholder is needed, which keeps the runtime tree free of phantom nodes from index-fallback ids. */
    public var type: ModelType
    /** The message the event is about, in the state it has reached. */
    public var message: AiThreadMessageLike?
    /** The storage identifier of that message. */
    public var messageId: String?
    /** The zero-based position of the pending tool call within the message. */
    public var idx: Double?
    /** The thread the event belongs to. */
    public var threadId: String?
    /** The tool runs without asking the user, as the user's tool permission mode decides: under `ask` never - the always-allow list, `requireApproval` and the annotations are all ignored; under `auto` a tool on the always-allow list, one with `requireApproval: false`, or one annotated `readOnlyHint: true` or `destructiveHint: false`; under `allow` every tool. */
    public var autoAllow: Bool?
    /** The tool is run by the service itself: the client must not run it, only ask for approval (unless `autoAllow`) and approve or deny the call - an approval needs no `result`. */
    public var serverExecuted: Bool?
    /** The generated thread title. */
    public var title: String?
    /** The profile that generated the title, when one was used. */
    public var profileId: String?

    public init(type: ModelType, message: AiThreadMessageLike? = nil, messageId: String? = nil, idx: Double? = nil, threadId: String? = nil, autoAllow: Bool? = nil, serverExecuted: Bool? = nil, title: String? = nil, profileId: String? = nil) {
        self.type = type
        self.message = message
        self.messageId = messageId
        self.idx = idx
        self.threadId = threadId
        self.autoAllow = autoAllow
        self.serverExecuted = serverExecuted
        self.title = title
        self.profileId = profileId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case message
        case messageId
        case idx
        case threadId
        case autoAllow
        case serverExecuted
        case title
        case profileId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(type, forKey: .type)
        try container.encodeIfPresent(message, forKey: .message)
        try container.encodeIfPresent(messageId, forKey: .messageId)
        try container.encodeIfPresent(idx, forKey: .idx)
        try container.encodeIfPresent(threadId, forKey: .threadId)
        try container.encodeIfPresent(autoAllow, forKey: .autoAllow)
        try container.encodeIfPresent(serverExecuted, forKey: .serverExecuted)
        try container.encodeIfPresent(title, forKey: .title)
        try container.encodeIfPresent(profileId, forKey: .profileId)
    }
}

