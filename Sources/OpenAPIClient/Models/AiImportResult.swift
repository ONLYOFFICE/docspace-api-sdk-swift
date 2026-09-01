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

/** Outcome of `PromptsEngine.importBundle`. Either every entry persisted with counts, or no entries persisted plus a per-entry error report. */
public struct AiImportResult: Sendable, Codable, Hashable {

    /** True when the whole bundle was imported. */
    public var success: Bool
    public var imported: AiImportResultImported?
    /** What was rejected, per entry. Present on failure - and then nothing was imported. */
    public var errors: [AiImportError]?

    public init(success: Bool, imported: AiImportResultImported? = nil, errors: [AiImportError]? = nil) {
        self.success = success
        self.imported = imported
        self.errors = errors
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case success
        case imported
        case errors
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(success, forKey: .success)
        try container.encodeIfPresent(imported, forKey: .imported)
        try container.encodeIfPresent(errors, forKey: .errors)
    }
}

