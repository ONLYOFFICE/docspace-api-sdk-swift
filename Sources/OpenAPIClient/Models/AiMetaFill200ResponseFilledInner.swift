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

public struct AiMetaFill200ResponseFilledInner: Sendable, Codable, Hashable {

    /** Absent for a custom field. */
    public var fieldId: Double?
    public var name: String
    public var value: AiMetaFill200ResponseFilledInnerValue

    public init(fieldId: Double? = nil, name: String, value: AiMetaFill200ResponseFilledInnerValue) {
        self.fieldId = fieldId
        self.name = name
        self.value = value
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case fieldId
        case name
        case value
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(fieldId, forKey: .fieldId)
        try container.encode(name, forKey: .name)
        try container.encode(value, forKey: .value)
    }
}

