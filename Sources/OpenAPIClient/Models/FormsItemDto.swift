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

/** One field of a form, offered as a filter over the copies gathered in a form-filling room. */
public struct FormsItemDto: Sendable, Codable, Hashable {

    /** The name of the field as it is written in the form; send it back as `formsItemKey` to keep only              the completed copies whose field of that name holds a value.              <example>first_name</example> */
    public var key: String?
    /** The kind of value the field holds, a text box or a checkbox for instance; send it back as              `formsItemType` beside the key.              <example>text</example> */
    public var type: String?

    public init(key: String? = nil, type: String? = nil) {
        self.key = key
        self.type = type
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case key
        case type
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(key, forKey: .key)
        try container.encodeIfPresent(type, forKey: .type)
    }
}

