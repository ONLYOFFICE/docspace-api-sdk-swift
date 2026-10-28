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

/** The storage one category of a portal module occupies, in the form a statistics page prints it. */
public struct UsageSpaceStatItemDto: Sendable, Codable, Hashable {

    /** The category name in the portal language, HTML-escaped and ready to be rendered as text. What a category  stands for depends on the module asked about - for the Documents module it is a room type. */
    public var name: String?
    /** The path of the icon to render beside the name, relative to the portal address. It is empty for a category  that ships no icon. */
    public var icon: String?
    /** Whether the category is switched off for this portal. A disabled category still reports the space it  occupies, so it is worth showing greyed out rather than dropping. */
    public var disabled: Bool?
    /** The occupied space already formatted for display, with its unit and in the portal language - `0 Byte` for  an empty category. It is not a byte count and must not be parsed; the raw numbers live in the quota  reported by `GET api/2.0/portal/quota`. */
    public var size: String?
    /** The portal page that lists the contents of this category, relative to the portal address, so a statistics  page can link through to it. It is empty for a category with no page of its own. */
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

