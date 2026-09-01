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

/** The parameters of the usage space statistics item. */
public struct UsageSpaceStatItemDto: Sendable, Codable, Hashable {

    /** The item name. */
    public var name: String?
    /** The item icon path. */
    public var icon: String?
    /** Specifies if the item is disabled or not. */
    public var disabled: Bool?
    /** The item used space. */
    public var size: String?
    /** The item URL. */
    public var url: String?

    public init(name: String? = nil, icon: String? = nil, disabled: Bool? = nil, size: String? = nil, url: String? = nil) {
        self.name = name
        self.icon = icon
        self.disabled = disabled
        self.size = size
        self.url = url
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case icon
        case disabled
        case size
        case url
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(icon, forKey: .icon)
        try container.encodeIfPresent(disabled, forKey: .disabled)
        try container.encodeIfPresent(size, forKey: .size)
        try container.encodeIfPresent(url, forKey: .url)
    }
}

