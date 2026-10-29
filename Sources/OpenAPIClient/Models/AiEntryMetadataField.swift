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

public struct AiEntryMetadataField: Sendable, Codable, Hashable {

    public var id: Double
    public var name: String
    /** `MetadataFieldType`: 0 String, 1 Date, 2 Number, 3 SingleChoice, 4 MultiChoice. */
    public var type: Double
    public var options: [AiEntryMetadataFieldOptionsInner]
    public var value: AiMetadataValue?

    public init(id: Double, name: String, type: Double, options: [AiEntryMetadataFieldOptionsInner], value: AiMetadataValue? = nil) {
        self.id = id
        self.name = name
        self.type = type
        self.options = options
        self.value = value
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case type
        case options
        case value
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(name, forKey: .name)
        try container.encode(type, forKey: .type)
        try container.encode(options, forKey: .options)
        try container.encodeIfPresent(value, forKey: .value)
    }
}

