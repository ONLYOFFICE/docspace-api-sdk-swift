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

/** One branding logo slot of the portal: the size it is drawn at, and where its images are served from. */
public struct WhiteLabelItemDto: Sendable, Codable, Hashable {

    /** Which branding slot this entry describes. `Notification` is part of the type but never appears here: that  logo is derived from the login-page one and used only in letters. */
    public var type: WhiteLabelLogoType?
    /** The stable name of the same slot, which is what `GET api/2.0/settings/whitelabel/logos/isdefault` keys its  entries by. It is a name to match on, not a file name. */
    public var name: String?
    /** The pixel box the slot is drawn in. Only `width` and `height` carry information here; the resize flags and  offsets alongside them are left at their defaults and say nothing about how an uploaded image is treated. */
    public var size: WhiteLabelItemSizeDto?
    /** The absolute URLs to render the slot from, one per theme. */
    public var path: WhiteLabelItemPathDto?

    public init(type: WhiteLabelLogoType? = nil, name: String? = nil, size: WhiteLabelItemSizeDto? = nil, path: WhiteLabelItemPathDto? = nil) {
        self.type = type
        self.name = name
        self.size = size
        self.path = path
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case name
        case size
        case path
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(size, forKey: .size)
        try container.encodeIfPresent(path, forKey: .path)
    }
}

