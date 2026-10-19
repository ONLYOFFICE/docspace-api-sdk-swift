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

/** How a thumbnail is fitted. A field left out takes the document service default. */
public struct ConvertThumbnailRequest: Sendable, Codable, Hashable {

    /** The mode to fit the image to the height and width specified:  0 - stretch file to fit height and width;  1 - keep the aspect for the image;  2 - convert the metric size of the page into pixels at 96 dpi. */
    public var aspect: Int?
    /** Whether a thumbnail is made of the first page only; false makes one of every page. */
    public var first: Bool?
    /** The thumbnail height in pixels; not used with aspect 2. */
    public var height: Int?
    /** The thumbnail width in pixels; not used with aspect 2. */
    public var width: Int?

    public init(aspect: Int? = nil, first: Bool? = nil, height: Int? = nil, width: Int? = nil) {
        self.aspect = aspect
        self.first = first
        self.height = height
        self.width = width
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case aspect
        case first
        case height
        case width
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(aspect, forKey: .aspect)
        try container.encodeIfPresent(first, forKey: .first)
        try container.encodeIfPresent(height, forKey: .height)
        try container.encodeIfPresent(width, forKey: .width)
    }
}

