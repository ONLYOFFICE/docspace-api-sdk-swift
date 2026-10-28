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

/** The watermark drawn over the documents of a room while they are viewed and printed. */
public struct AiWatermarkDto: Sendable, Codable, Hashable {

    /** Which details of the reader and of the room are stamped alongside the text. The values combine, so a number  that is not a member on its own is the sum of several of them, and 0 means that only the text is stamped. */
    public var additions: AiWatermarkAdditions
    /** The fixed line drawn over the document, printed before the details selected alongside it. Empty when the room  stamps an image instead. */
    public var text: String?
    /** How far the stamp is turned, in degrees, with negative values turning it anticlockwise and 0 drawing it  horizontally. */
    public var rotate: Int
    /** How large the image is drawn, as a percentage of its own size. It is 0 for a text watermark, where nothing is  scaled. */
    public var imageScale: Int
    /** The address the stamped picture is served from, inside the storage of the room. Empty for a text watermark. */
    public var imageUrl: String?
    /** The height the picture is drawn with, in pixels, kept together with the width so that the proportions survive.  It is 0 for a text watermark. */
    public var imageHeight: Double
    /** The width the picture is drawn with, in pixels, kept together with the height so that the proportions survive.  It is 0 for a text watermark. */
    public var imageWidth: Double

    public init(additions: AiWatermarkAdditions, text: String? = nil, rotate: Int, imageScale: Int, imageUrl: String? = nil, imageHeight: Double, imageWidth: Double) {
        self.additions = additions
        self.text = text
        self.rotate = rotate
        self.imageScale = imageScale
        self.imageUrl = imageUrl
        self.imageHeight = imageHeight
        self.imageWidth = imageWidth
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
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
        try container.encode(additions, forKey: .additions)
        try container.encodeIfPresent(text, forKey: .text)
        try container.encode(rotate, forKey: .rotate)
        try container.encode(imageScale, forKey: .imageScale)
        try container.encodeIfPresent(imageUrl, forKey: .imageUrl)
        try container.encode(imageHeight, forKey: .imageHeight)
        try container.encode(imageWidth, forKey: .imageWidth)
    }
}

