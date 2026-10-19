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

/** The parameters of a metadata field. */
public struct MetadataFieldRequest: Sendable, Codable, Hashable {

    /** The field name. */
    public var name: String?
    /** The field type. */
    public var type: MetadataFieldType?
    /** The choice options of the field. */
    public var options: [MetadataFieldOptionRequest]?
    /** The display position of the field inside the template: the fields are shown by it ascending, and equal positions  keep the order of creation. */
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

