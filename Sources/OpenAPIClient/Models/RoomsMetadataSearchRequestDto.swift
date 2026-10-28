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

/** The typed form of the metadata search of the rooms: the same filter the rooms listing takes in the metadataTemplateId  and metadataFilters query parameters, with the conditions as objects instead of a JSON string. */
public struct RoomsMetadataSearchRequestDto: Sendable, Codable, Hashable {

    public static let countRule = NumericRule<Int>(minimum: 1, exclusiveMinimum: false, maximum: 100, exclusiveMaximum: false, multipleOf: nil)
    public static let startIndexRule = NumericRule<Int>(minimum: 0, exclusiveMinimum: false, maximum: 2147483647, exclusiveMaximum: false, multipleOf: nil)
    /** The ID of the metadata template the rooms must be assigned to. On its own it narrows the listing to the rooms  carrying the template; together with the conditions it also pins the template the filtered fields belong to. */
    public var metadataTemplateId: Int?
    /** The metadata filter conditions, combined with AND. A custom field is addressed by its name instead of the field ID. */
    public var metadataFilters: [MetadataFilterConditionRequest]?
    /** Whether the text search, and the metadataMatches it reports, also look at the values of the hidden metadata  templates (created with visible false for the metadata a service keeps for itself, which the web client never  shows). False, the default, leaves them out, so an entry is not found by such a value; true takes them in.  metadataTemplateId and metadataFilters are not concerned: a hidden template or field named there is searched  either way. */
    public var includeHiddenMetadata: Bool?
    /** The text to search for in the room titles and in the string metadata values of the rooms, the custom fields and  the template fields alike; a room found by its metadata says where in metadataMatches. */
    public var filterValue: String?
    /** The section to search in: the active rooms (the default), the archive or the templates. */
    public var searchArea: SearchArea?
    /** The room types to search among. */
    public var type: [RoomType]?
    /** The number of rooms to return, from 1 to 100. */
    public var count: Int?
    /** The zero-based index of the first room to return. */
    public var startIndex: Int?
    /** The field to sort by, a name of the SortedByType values. */
    public var sortBy: String?
    /** The sort order. */
    public var sortOrder: SortOrder?

    public init(metadataTemplateId: Int? = nil, metadataFilters: [MetadataFilterConditionRequest]? = nil, includeHiddenMetadata: Bool? = nil, filterValue: String? = nil, searchArea: SearchArea? = nil, type: [RoomType]? = nil, count: Int? = nil, startIndex: Int? = nil, sortBy: String? = nil, sortOrder: SortOrder? = nil) {
        self.metadataTemplateId = metadataTemplateId
        self.metadataFilters = metadataFilters
        self.includeHiddenMetadata = includeHiddenMetadata
        self.filterValue = filterValue
        self.searchArea = searchArea
        self.type = type
        self.count = count
        self.startIndex = startIndex
        self.sortBy = sortBy
        self.sortOrder = sortOrder
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case metadataTemplateId
        case metadataFilters
        case includeHiddenMetadata
        case filterValue
        case searchArea
        case type
        case count
        case startIndex
        case sortBy
        case sortOrder
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(metadataTemplateId, forKey: .metadataTemplateId)
        try container.encodeIfPresent(metadataFilters, forKey: .metadataFilters)
        try container.encodeIfPresent(includeHiddenMetadata, forKey: .includeHiddenMetadata)
        try container.encodeIfPresent(filterValue, forKey: .filterValue)
        try container.encodeIfPresent(searchArea, forKey: .searchArea)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(count, forKey: .count)
        try container.encodeIfPresent(startIndex, forKey: .startIndex)
        try container.encodeIfPresent(sortBy, forKey: .sortBy)
        try container.encodeIfPresent(sortOrder, forKey: .sortOrder)
    }
}

