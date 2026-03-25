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

/** The data of the separate form item. */
public struct FormsItemData: Sendable, Codable, Hashable {

    /** The form data key. */
    public var key: String?
    /** The form data tag. */
    public var tag: String?
    /** The form data value. */
    public var value: String?
    /** The form data type. */
    public var type: String?

    public init(key: String? = nil, tag: String? = nil, value: String? = nil, type: String? = nil) {
        self.key = key
        self.tag = tag
        self.value = value
        self.type = type
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case key
        case tag
        case value
        case type
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(key, forKey: .key)
        try container.encodeIfPresent(tag, forKey: .tag)
        try container.encodeIfPresent(value, forKey: .value)
        try container.encodeIfPresent(type, forKey: .type)
    }
}

