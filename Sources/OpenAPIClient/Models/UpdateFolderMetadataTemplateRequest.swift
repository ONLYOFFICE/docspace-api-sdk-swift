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

/** The new state of a template assignment on a folder: whether the template cascades to the content of the folder and how. */
public struct UpdateFolderMetadataTemplateRequest: Sendable, Codable, Hashable {

    /** Whether the template cascades from the folder to the folders and files below it: true turns the cascade on,  false turns it off while the template stays on the folder. */
    public var cascade: Bool?
    /** How the cascade treats a value an entry below already holds. */
    public var conflictResolveType: MetadataConflictResolveType?

    public init(cascade: Bool? = nil, conflictResolveType: MetadataConflictResolveType? = nil) {
        self.cascade = cascade
        self.conflictResolveType = conflictResolveType
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case cascade
        case conflictResolveType
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(cascade, forKey: .cascade)
        try container.encodeIfPresent(conflictResolveType, forKey: .conflictResolveType)
    }
}

