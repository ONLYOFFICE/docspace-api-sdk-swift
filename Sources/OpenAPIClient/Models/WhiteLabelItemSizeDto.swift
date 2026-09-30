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

/** The pixel box a logo slot is drawn in, in the shape the imaging library reports a geometry. */
public struct WhiteLabelItemSizeDto: Sendable, Codable, Hashable {

    /** Whether the numbers are to be read as an aspect ratio rather than as pixels. Always `false` on the sizes  this API reports. */
    public var aspectRatio: Bool?
    /** Whether an image would be scaled to cover the box rather than to fit inside it. Always `false` here. */
    public var fillArea: Bool?
    /** Whether scaling would apply only to an image larger than the box. Always `false` here. */
    public var greater: Bool?
    /** The height of the box in pixels - one of the two fields of this object that carry information. */
    public var height: Int?
    /** Whether scaling would be allowed to distort the image. Always `false` here. */
    public var ignoreAspectRatio: Bool?
    /** Whether `width` and `height` are to be read as percentages. Always `false` here, so both are pixels. */
    public var isPercentage: Bool?
    /** Whether scaling would apply only to an image smaller than the box. Always `false` here. */
    public var less: Bool?
    /** Whether the box is to be read as a total pixel-area budget instead of as two dimensions. Always `false`  here. */
    public var limitPixels: Bool?
    /** The width of the box in pixels - the other field of this object that carries information. */
    public var width: Int?
    /** The horizontal offset of the box from the origin. Always `0` here. */
    public var x: Int?
    /** The vertical offset of the box from the origin. Always `0` here. */
    public var y: Int?

    public init(aspectRatio: Bool? = nil, fillArea: Bool? = nil, greater: Bool? = nil, height: Int? = nil, ignoreAspectRatio: Bool? = nil, isPercentage: Bool? = nil, less: Bool? = nil, limitPixels: Bool? = nil, width: Int? = nil, x: Int? = nil, y: Int? = nil) {
        self.aspectRatio = aspectRatio
        self.fillArea = fillArea
        self.greater = greater
        self.height = height
        self.ignoreAspectRatio = ignoreAspectRatio
        self.isPercentage = isPercentage
        self.less = less
        self.limitPixels = limitPixels
        self.width = width
        self.x = x
        self.y = y
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case aspectRatio
        case fillArea
        case greater
        case height
        case ignoreAspectRatio
        case isPercentage
        case less
        case limitPixels
        case width
        case x
        case y
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(aspectRatio, forKey: .aspectRatio)
        try container.encodeIfPresent(fillArea, forKey: .fillArea)
        try container.encodeIfPresent(greater, forKey: .greater)
        try container.encodeIfPresent(height, forKey: .height)
        try container.encodeIfPresent(ignoreAspectRatio, forKey: .ignoreAspectRatio)
        try container.encodeIfPresent(isPercentage, forKey: .isPercentage)
        try container.encodeIfPresent(less, forKey: .less)
        try container.encodeIfPresent(limitPixels, forKey: .limitPixels)
        try container.encodeIfPresent(width, forKey: .width)
        try container.encodeIfPresent(x, forKey: .x)
        try container.encodeIfPresent(y, forKey: .y)
    }
}

