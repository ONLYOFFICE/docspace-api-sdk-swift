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

public struct IMagickGeometry: Sendable, Codable, Hashable {

    public var aspectRatio: Bool?
    public var fillArea: Bool?
    public var greater: Bool?
    public var height: Int?
    public var ignoreAspectRatio: Bool?
    public var isPercentage: Bool?
    public var less: Bool?
    public var limitPixels: Bool?
    public var width: Int?
    public var x: Int?
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

