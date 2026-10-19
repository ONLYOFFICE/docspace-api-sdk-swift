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

/** The parameters of a metadata field update. Every property is optional: a property that is omitted keeps its current value. */
public struct UpdateMetadataFieldRequest: Sendable, Codable, Hashable {

    /** The new field name. */
    public var name: String?
    /** The new field type. The type can be changed only while the field has no values. */
    public var type: MetadataFieldType?
    /** The new choice options of the field. The options in use cannot be removed. */
    public var options: [MetadataFieldOptionRequest]?
    /** The new display position of the field inside the template: the fields are shown by it ascending. */
    public var order: Int?

    public init(name: String? = nil, type: MetadataFieldType? = nil, options: [MetadataFieldOptionRequest]? = nil, order: Int? = nil) {
        self.name = name
        self.type = type
        self.options = options
        self.order = order
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case type
        case options
        case order
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(options, forKey: .options)
        try container.encodeIfPresent(order, forKey: .order)
    }
}

