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

/** A metadata template field with its value on the entry. */
public struct EntryFieldDto: Sendable, Codable, Hashable {

    /** The field ID. */
    public var id: Int?
    /** The field name. */
    public var name: String?
    /** The field type. */
    public var type: MetadataFieldType?
    /** The choice options of the field. */
    public var options: [MetadataFieldOptionDto]?
    /** The field display order inside the template. */
    public var order: Int?
    /** The value of the field on the entry, or `null` when the entry holds no value for it. */
    public var value: MetadataValueDto?

    public init(id: Int? = nil, name: String? = nil, type: MetadataFieldType? = nil, options: [MetadataFieldOptionDto]? = nil, order: Int? = nil, value: MetadataValueDto? = nil) {
        self.id = id
        self.name = name
        self.type = type
        self.options = options
        self.order = order
        self.value = value
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case type
        case options
        case order
        case value
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(options, forKey: .options)
        try container.encodeIfPresent(order, forKey: .order)
        try container.encodeIfPresent(value, forKey: .value)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension EntryFieldDto: Identifiable {}
