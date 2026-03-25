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

/** The request parameters for adding watermarks. */
public struct WatermarkRequestDto: Sendable, Codable, Hashable {

    public static let textRule = StringRule(minLength: 0, maxLength: 255, pattern: nil)
    /** Specifies whether watermarks are on or off. */
    public var enabled: Bool?
    public var additions: WatermarkAdditions?
    /** The watermark text. */
    public var text: String?
    /** The watermark text and image rotate angle. */
    public var rotate: Int?
    /** The watermark image scale. */
    public var imageScale: Int?
    /** The path to the temporary image file. */
    public var imageUrl: String?
    /** The watermark image height. */
    public var imageHeight: Double?
    /** The watermark image width. */
    public var imageWidth: Double?

    public init(enabled: Bool? = nil, additions: WatermarkAdditions? = nil, text: String? = nil, rotate: Int? = nil, imageScale: Int? = nil, imageUrl: String? = nil, imageHeight: Double? = nil, imageWidth: Double? = nil) {
        self.enabled = enabled
        self.additions = additions
        self.text = text
        self.rotate = rotate
        self.imageScale = imageScale
        self.imageUrl = imageUrl
        self.imageHeight = imageHeight
        self.imageWidth = imageWidth
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case enabled
        case additions
        case text
        case rotate
        case imageScale
        case imageUrl
        case imageHeight
        case imageWidth
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(enabled, forKey: .enabled)
        try container.encodeIfPresent(additions, forKey: .additions)
        try container.encodeIfPresent(text, forKey: .text)
        try container.encodeIfPresent(rotate, forKey: .rotate)
        try container.encodeIfPresent(imageScale, forKey: .imageScale)
        try container.encodeIfPresent(imageUrl, forKey: .imageUrl)
        try container.encodeIfPresent(imageHeight, forKey: .imageHeight)
        try container.encodeIfPresent(imageWidth, forKey: .imageWidth)
    }
}

