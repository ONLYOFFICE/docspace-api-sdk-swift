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

public struct AiMetaFill200ResponseFilledInnerValue: Sendable, Codable, Hashable {

    public var stringValue: String?
    public var numberValue: Double?
    /** ISO 8601 date-time, UTC midnight of the date. */
    public var dateValue: String?
    public var optionIds: [String]?

    public init(stringValue: String? = nil, numberValue: Double? = nil, dateValue: String? = nil, optionIds: [String]? = nil) {
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

