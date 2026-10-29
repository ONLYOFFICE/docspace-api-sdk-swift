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

public struct AiMetaGenerate200Response: Sendable, Codable, Hashable {

    /** The proposed custom metadata fields with the values the text supports. */
    public var fields: [AiMetaGenerate200ResponseFieldsInner]
    /** The documents the proposal was read from. */
    public var sources: [AiMetaGenerate200ResponseSourcesInner]
    /** The entries that were left out, with the reason for each. */
    public var skipped: [AiMetaGenerate200ResponseSkippedInner]

    public init(fields: [AiMetaGenerate200ResponseFieldsInner], sources: [AiMetaGenerate200ResponseSourcesInner], skipped: [AiMetaGenerate200ResponseSkippedInner]) {
        self.fields = fields
        self.sources = sources
        self.skipped = skipped
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case fields
        case sources
        case skipped
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(fields, forKey: .fields)
        try container.encode(sources, forKey: .sources)
        try container.encode(skipped, forKey: .skipped)
    }
}

