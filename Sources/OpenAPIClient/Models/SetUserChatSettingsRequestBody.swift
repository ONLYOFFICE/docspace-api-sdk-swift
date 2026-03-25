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

/** Parameters for updating user chat settings. */
public struct SetUserChatSettingsRequestBody: Sendable, Codable, Hashable {

    /** Indicates whether the AI assistant is allowed to perform web searches when generating responses. */
    public var webSearchEnabled: Bool?
    public var reasoningEffort: ChatReasoningEffort?

    public init(webSearchEnabled: Bool? = nil, reasoningEffort: ChatReasoningEffort? = nil) {
        self.webSearchEnabled = webSearchEnabled
        self.reasoningEffort = reasoningEffort
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case webSearchEnabled
        case reasoningEffort
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(webSearchEnabled, forKey: .webSearchEnabled)
        try container.encodeIfPresent(reasoningEffort, forKey: .reasoningEffort)
    }
}

