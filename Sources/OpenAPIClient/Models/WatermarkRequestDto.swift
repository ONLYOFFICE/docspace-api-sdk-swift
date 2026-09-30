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

/** The watermark drawn over the documents of a room. */
public struct WatermarkRequestDto: Sendable, Codable, Hashable {

    public static let textRule = StringRule(minLength: 0, maxLength: 255, pattern: nil)
    /** Whether the room draws a watermark at all. Sending the object with this turned off removes the watermark the  room has, and the rest of the fields are then irrelevant. */
    public var enabled: Bool?
    /** Which details of the reader and of the room are stamped into the watermark alongside the text. The values  combine, so several of them can be added together to stamp more than one. */
    public var additions: WatermarkAdditions?
    /** The fixed line drawn over the document, shown before the details selected alongside it. It is the whole  watermark when no details are added. */
    public var text: String?
    /** How far the watermark is turned, in degrees, with negative values turning it anticlockwise. Zero draws it  horizontally across the page. */
    public var rotate: Int?
    /** How large the watermark image is drawn, as a percentage of its own size. It applies to the image form of the  watermark only. */
    public var imageScale: Int?
    /** The picture to use instead of a text watermark, named by the path that `POST api/2.0/files/logos` returned for  an image uploaded beforehand. The portal copies it into the room when the setting is saved. */
    public var imageUrl: String?
    /** The height the watermark image is drawn with, in pixels, used together with the width to keep its proportions. */
    public var imageHeight: Double?
    /** The width the watermark image is drawn with, in pixels, used together with the height to keep its proportions. */
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

