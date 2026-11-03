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

/** Why a round failed or stopped early, as the message status and the stream report it: a stable `code`, a message safe to show the user, and the cause when there is one. */
public struct AiChatErrorPayload: Sendable, Codable, Hashable {

    /** Stable machine-readable code. One of a canonical set — `auth`, `model_not_found`, `rate_limit`, `timeout`, `network`, `bad_request`, `server`, `not_found`, `insufficient_funds`, `aborted`, `unknown` — or a provider-specific string when the SDK supplies one verbatim. */
    public var code: String
    /** Human-readable, end-user-safe message. */
    public var message: String
    /** Optional nested cause, normalized through the same helper. */
    public var cause: AiChatErrorPayload?

    public init(code: String, message: String, cause: AiChatErrorPayload? = nil) {
        self.code = code
        self.message = message
        self.cause = cause
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case code
        case message
        case cause
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(code, forKey: .code)
        try container.encode(message, forKey: .message)
        try container.encodeIfPresent(cause, forKey: .cause)
    }
}

