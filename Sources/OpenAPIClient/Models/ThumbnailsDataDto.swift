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

/** The thumbnails data parameters. */
public struct ThumbnailsDataDto: Sendable, Codable, Hashable {

    /** The thumbnail original photo. */
    public var original: String?
    /** The thumbnail retina. */
    public var retina: String?
    /** The thumbnail maximum size photo. */
    public var max: String?
    /** The thumbnail big size photo. */
    public var big: String?
    /** The thumbnail medium size photo. */
    public var medium: String?
    /** The thumbnail small size photo. */
    public var small: String?

    public init(original: String? = nil, retina: String? = nil, max: String? = nil, big: String? = nil, medium: String? = nil, small: String? = nil) {
        self.original = original
        self.retina = retina
        self.max = max
        self.big = big
        self.medium = medium
        self.small = small
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case original
        case retina
        case max
        case big
        case medium
        case small
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(original, forKey: .original)
        try container.encodeIfPresent(retina, forKey: .retina)
        try container.encodeIfPresent(max, forKey: .max)
        try container.encodeIfPresent(big, forKey: .big)
        try container.encodeIfPresent(medium, forKey: .medium)
        try container.encodeIfPresent(small, forKey: .small)
    }
}

