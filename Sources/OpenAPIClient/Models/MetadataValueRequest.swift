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

/** The parameters of a metadata field value. */
public struct MetadataValueRequest: Sendable, Codable, Hashable {

    /** The field ID. */
    public var fieldId: Int
    /** The string value. */
    public var stringValue: String?
    /** The number value. */
    public var numberValue: Int64?
    /** The date value. A value without a time zone offset is treated as UTC, the same way the metadata filters treat their date bounds. */
    public var dateValue: Date?
    /** The selected choice option IDs. */
    public var optionIds: [UUID]?

    public init(fieldId: Int, stringValue: String? = nil, numberValue: Int64? = nil, dateValue: Date? = nil, optionIds: [UUID]? = nil) {
        self.fieldId = fieldId
        self.stringValue = stringValue
        self.numberValue = numberValue
        self.dateValue = dateValue
        self.optionIds = optionIds
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case fieldId
        case stringValue
        case numberValue
        case dateValue
        case optionIds
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(fieldId, forKey: .fieldId)
        try container.encodeIfPresent(stringValue, forKey: .stringValue)
        try container.encodeIfPresent(numberValue, forKey: .numberValue)
        try container.encodeIfPresent(dateValue, forKey: .dateValue)
        try container.encodeIfPresent(optionIds, forKey: .optionIds)
    }
}

