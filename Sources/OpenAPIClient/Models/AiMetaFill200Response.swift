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

public struct AiMetaFill200Response: Sendable, Codable, Hashable {

    /** Whether the values were only proposed (`true`) or written as well. */
    public var dryRun: Bool
    /** The entry's metadata after the write (or as it stands, with `dryRun`), as `GET api/2.0/files/metadata/{kind}/{id}` returns it. */
    public var metadata: AiEntryMetadata
    /** The values written, or proposed with `dryRun`: a typed value for a template field, a string for a custom field. */
    public var filled: [AiMetaFill200ResponseFilledInner]
    /** The fields left as they were, with the reason for each. */
    public var unresolved: [AiMetaFill200ResponseUnresolvedInner]
    /** The documents the values were read from. */
    public var sources: [AiMetaFill200ResponseSourcesInner]
    /** The entries that were left out, with the reason for each. */
    public var skipped: [AiMetaGenerate200ResponseSkippedInner]

    public init(dryRun: Bool, metadata: AiEntryMetadata, filled: [AiMetaFill200ResponseFilledInner], unresolved: [AiMetaFill200ResponseUnresolvedInner], sources: [AiMetaFill200ResponseSourcesInner], skipped: [AiMetaGenerate200ResponseSkippedInner]) {
        self.dryRun = dryRun
        self.metadata = metadata
        self.filled = filled
        self.unresolved = unresolved
        self.sources = sources
        self.skipped = skipped
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case dryRun
        case metadata
        case filled
        case unresolved
        case sources
        case skipped
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(dryRun, forKey: .dryRun)
        try container.encode(metadata, forKey: .metadata)
        try container.encode(filled, forKey: .filled)
        try container.encode(unresolved, forKey: .unresolved)
        try container.encode(sources, forKey: .sources)
        try container.encode(skipped, forKey: .skipped)
    }
}

