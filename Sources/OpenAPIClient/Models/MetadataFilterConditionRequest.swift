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

/** One metadata filter condition as the clients send it: an element of the metadataFilters JSON of the listings and of  the body of the search endpoints. All conditions are combined with AND. */
public struct MetadataFilterConditionRequest: Sendable, Codable, Hashable {

    /** The ID of the template field the condition is on. A custom field is addressed by ASC.Files.Core.MetadataFilterConditionRequest.Name instead. */
    public var fieldId: Int?
    /** The name of a custom field, for the conditions on the custom fields, which have no identifier outside. Either the  field ID or the name is given; the name is matched without regard to case. */
    public var name: String?
    /** The operator, one of ASC.Files.Core.MetadataFilterOperators: eq or contains for a string field, eq, range,  gt, gte, lt or lte for a number field, range, gt, gte, lt or lte for a date field, in for a  choice field. Optional: an omitted operator is read as eq for a string, as range for a date, as in for a  choice, and for a number as eq when a value is given or as range when a bound is. A present one has to belong  to the field type and to the arguments: eq takes a value, range takes bounds. */
    public var op: String?
    /** The value of a single-valued condition: the whole or a part of a string field, the exact value of a number field,  or the bound of a gt, gte, lt or lte condition on a number or a date field. A JSON number is accepted as  well as a string. A number is a whole number of at most 2^53-1 in magnitude, the limit of a stored number value.  A date given without a time (2026-06-30) names the whole day (UTC). */
    public var value: String?
    /** The inclusive lower bound of a range. A number is a whole number of at most 2^53-1 in magnitude, the limit of a  stored number value. A date given without a time (2026-06-01) is the start of that day (UTC). */
    public var from: String?
    /** The inclusive upper bound of a range. A number is a whole number of at most 2^53-1 in magnitude, the limit of a  stored number value. A date given without a time (2026-06-30) covers the whole day (UTC); a value with a time  is an instant and is taken as is. */
    public var to: String?
    /** The options any of which the choice field must hold. */
    public var optionIds: [UUID]?

    public init(fieldId: Int? = nil, name: String? = nil, op: String? = nil, value: String? = nil, from: String? = nil, to: String? = nil, optionIds: [UUID]? = nil) {
        self.fieldId = fieldId
        self.name = name
        self.op = op
        self.value = value
        self.from = from
        self.to = to
        self.optionIds = optionIds
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case fieldId
        case name
        case op
        case value
        case from
        case to
        case optionIds
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(fieldId, forKey: .fieldId)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(op, forKey: .op)
        try container.encodeIfPresent(value, forKey: .value)
        try container.encodeIfPresent(from, forKey: .from)
        try container.encodeIfPresent(to, forKey: .to)
        try container.encodeIfPresent(optionIds, forKey: .optionIds)
    }
}

