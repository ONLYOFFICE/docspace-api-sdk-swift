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

/** Per-entry error reported by `PromptsEngine.importBundle`. */
public struct AiImportError: Sendable, Codable, Hashable {

    public enum Kind: String, Sendable, Codable, CaseIterable {
        case folder = "folder"
        case prompt = "prompt"
    }
    /** `folder` or `prompt`, plus the offending name or id. */
    public var kind: Kind
    /** The offending entry - its name or its id. */
    public var ref: String
    /** Why the entry was rejected. */
    public var error: AiTErrorData

    public init(kind: Kind, ref: String, error: AiTErrorData) {
        self.kind = kind
        self.ref = ref
        self.error = error
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case kind
        case ref
        case error
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(kind, forKey: .kind)
        try container.encode(ref, forKey: .ref)
        try container.encode(error, forKey: .error)
    }
}

