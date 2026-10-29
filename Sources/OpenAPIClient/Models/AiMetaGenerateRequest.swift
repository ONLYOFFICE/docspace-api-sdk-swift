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

public struct AiMetaGenerateRequest: Sendable, Codable, Hashable {

    public enum Kind: String, Sendable, Codable, CaseIterable {
        case file = "file"
    }
    /** The entry's table. Only `file` for now: a folder or a room answers 400. */
    public var kind: Kind
    public var id: AiMetaGenerateRequestId
    /** What kind of metadata fields the caller is interested in; a hint for the model. */
    public var prompt: String?

    public init(kind: Kind, id: AiMetaGenerateRequestId, prompt: String? = nil) {
        self.kind = kind
        self.id = id
        self.prompt = prompt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case kind
        case id
        case prompt
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(kind, forKey: .kind)
        try container.encode(id, forKey: .id)
        try container.encodeIfPresent(prompt, forKey: .prompt)
    }
}

