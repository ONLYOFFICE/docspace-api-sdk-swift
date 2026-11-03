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

/** Delivery/generation status of the message. */
public struct AiThreadMessageLikeStatus: Sendable, Codable, Hashable {

    /** `running`, `requires-action`, `complete` or `incomplete`. */
    public var type: String
    /** Why the message is in that state: `tool-calls` or `interrupt` for `requires-action`; `stop` or `unknown` for `complete`; `cancelled`, `tool-calls`, `length`, `content-filter`, `other` or `error` for `incomplete`. An `incomplete` message the chat stored carries `cancelled` (the round was stopped) or `error`. */
    public var reason: String?
    /** What failed, on an `incomplete` message whose `reason` is `error`. */
    public var error: AiChatErrorPayload?

    public init(type: String, reason: String? = nil, error: AiChatErrorPayload? = nil) {
        self.type = type
        self.reason = reason
        self.error = error
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case reason
        case error
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(type, forKey: .type)
        try container.encodeIfPresent(reason, forKey: .reason)
        try container.encodeIfPresent(error, forKey: .error)
    }
}

