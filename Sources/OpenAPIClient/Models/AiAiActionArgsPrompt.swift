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

/** Override the action's baked-in system prompt (replace or append). */
public struct AiAiActionArgsPrompt: Sendable, Codable, Hashable {

    public enum Mode: String, Sendable, Codable, CaseIterable {
        case replace = "replace"
        case append = "append"
    }
    public var mode: Mode
    public var text: String

    public init(mode: Mode, text: String) {
        self.mode = mode
        self.text = text
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case mode
        case text
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(mode, forKey: .mode)
        try container.encode(text, forKey: .text)
    }
}

