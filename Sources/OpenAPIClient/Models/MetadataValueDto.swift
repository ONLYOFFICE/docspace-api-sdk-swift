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

/** The value of a metadata field on an entry. Exactly one of the value properties is set, the one matching the field type:  `stringValue` for a string field, `numberValue` for a number field, `dateValue` for a date field,  `optionIds` for a single or multiple choice field. */
public struct MetadataValueDto: Sendable, Codable, Hashable {

    /** The string value. */
    public var stringValue: String?
    /** The number value. */
    public var numberValue: Int64?
    /** The date value. */
    public var dateValue: ApiDateTime?
    /** The selected choice option IDs. */
    public var optionIds: [UUID]?

    public init(stringValue: String? = nil, numberValue: Int64? = nil, dateValue: ApiDateTime? = nil, optionIds: [UUID]? = nil) {
        self.stringValue = stringValue
        self.numberValue = numberValue
        self.dateValue = dateValue
        self.optionIds = optionIds
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case stringValue
        case numberValue
        case dateValue
        case optionIds
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(stringValue, forKey: .stringValue)
        try container.encodeIfPresent(numberValue, forKey: .numberValue)
        try container.encodeIfPresent(dateValue, forKey: .dateValue)
        try container.encodeIfPresent(optionIds, forKey: .optionIds)
    }
}

