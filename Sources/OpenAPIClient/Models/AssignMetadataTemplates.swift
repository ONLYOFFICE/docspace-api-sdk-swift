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

/** The parameters for assigning metadata templates. */
public struct AssignMetadataTemplates: Sendable, Codable, Hashable {

    /** The metadata template IDs. */
    public var templateIds: [Int]?
    /** Specifies if the templates are propagated to the folder sub-entries. */
    public var cascade: Bool?
    /** The conflict resolve type for the cascade assignment. */
    public var conflictResolveType: MetadataConflictResolveType?

    public init(templateIds: [Int]?, cascade: Bool? = nil, conflictResolveType: MetadataConflictResolveType? = nil) {
        self.templateIds = templateIds
        self.cascade = cascade
        self.conflictResolveType = conflictResolveType
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case templateIds
        case cascade
        case conflictResolveType
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(templateIds, forKey: .templateIds)
        try container.encodeIfPresent(cascade, forKey: .cascade)
        try container.encodeIfPresent(conflictResolveType, forKey: .conflictResolveType)
    }
}

