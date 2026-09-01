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

public struct AiAiSendRequest: Sendable, Codable, Hashable {

    /** Which AI action to run — selects the assignment slot and action. */
    public var actionType: AiActionType
    /** The user turn to send. */
    public var userMessage: AiThreadMessageLike
    /** Per-request engine options: extra tools, reasoning, prompt override. */
    public var actionArgs: AiAiActionArgs?
    /** Optional entity (room) scope for profile resolution. */
    public var entityId: String?

    public init(actionType: AiActionType, userMessage: AiThreadMessageLike, actionArgs: AiAiActionArgs? = nil, entityId: String? = nil) {
        self.actionType = actionType
        self.userMessage = userMessage
        self.actionArgs = actionArgs
        self.entityId = entityId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case actionType
        case userMessage
        case actionArgs
        case entityId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(actionType, forKey: .actionType)
        try container.encode(userMessage, forKey: .userMessage)
        try container.encodeIfPresent(actionArgs, forKey: .actionArgs)
        try container.encodeIfPresent(entityId, forKey: .entityId)
    }
}

