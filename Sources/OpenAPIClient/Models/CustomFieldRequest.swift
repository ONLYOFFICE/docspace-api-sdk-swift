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

/** The parameters of a custom text field. */
public struct CustomFieldRequest: Sendable, Codable, Hashable {

    /** The field name. The names are matched without regard to case. */
    public var name: String?
    /** The field value. Null or empty removes the field from the entry. */
    public var value: String?

    public init(name: String?, value: String? = nil) {
        self.name = name
        self.value = value
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case value
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encodeIfPresent(value, forKey: .value)
    }
}

