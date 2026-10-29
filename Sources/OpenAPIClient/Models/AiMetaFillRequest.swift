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

public struct AiMetaFillRequest: Sendable, Codable, Hashable {

    public enum Kind: String, Sendable, Codable, CaseIterable {
        case file = "file"
    }
    /** The entry's table. Only `file` for now: a folder or a room answers 400. */
    public var kind: Kind
    public var id: AiMetaGenerateRequestId
    /** What to pay attention to; a hint for the model. */
    public var prompt: String?
    /** Also replace the fields that already carry a value. Default false. */
    public var overwrite: Bool?
    /** Resolve the values but write nothing; the caller writes what the user confirms. Default true: a write needs an explicit false. */
    public var dryRun: Bool?

    public init(kind: Kind, id: AiMetaGenerateRequestId, prompt: String? = nil, overwrite: Bool? = nil, dryRun: Bool? = nil) {
        self.kind = kind
        self.id = id
        self.prompt = prompt
        self.overwrite = overwrite
        self.dryRun = dryRun
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case kind
        case id
        case prompt
        case overwrite
        case dryRun
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(kind, forKey: .kind)
        try container.encode(id, forKey: .id)
        try container.encodeIfPresent(prompt, forKey: .prompt)
        try container.encodeIfPresent(overwrite, forKey: .overwrite)
        try container.encodeIfPresent(dryRun, forKey: .dryRun)
    }
}

