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

/** The room logo information. */
public struct Logo: Sendable, Codable, Hashable {

    /** The original logo. */
    public var original: String?
    /** The large logo. */
    public var large: String?
    /** The medium logo. */
    public var medium: String?
    /** The small logo. */
    public var small: String?
    /** The logo color. */
    public var color: String?
    public var cover: LogoCover?

    public init(original: String?, large: String?, medium: String?, small: String?, color: String? = nil, cover: LogoCover? = nil) {
        self.original = original
        self.large = large
        self.medium = medium
        self.small = small
        self.color = color
        self.cover = cover
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case original
        case large
        case medium
        case small
        case color
        case cover
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(original, forKey: .original)
        try container.encode(large, forKey: .large)
        try container.encode(medium, forKey: .medium)
        try container.encode(small, forKey: .small)
        try container.encodeIfPresent(color, forKey: .color)
        try container.encodeIfPresent(cover, forKey: .cover)
    }
}

