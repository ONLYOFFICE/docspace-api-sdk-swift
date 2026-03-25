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

/** The document watermark parameters. */
public struct WatermarkOnDraw: Sendable, Codable, Hashable {

    /** Defines the watermark width measured in millimeters. */
    public var width: Double?
    /** Defines the watermark height measured in millimeters. */
    public var height: Double?
    /** Defines the watermark margins measured in millimeters. */
    public var margins: [Int]?
    /** Defines the watermark fill color. */
    public var fill: String?
    /** Defines the watermark rotation angle. */
    public var rotate: Int?
    /** Defines the watermark transparency percentage. */
    public var transparent: Double?
    /** The list of paragraphs of the watermark. */
    public var paragraphs: [Paragraph]?

    public init(width: Double? = nil, height: Double? = nil, margins: [Int]? = nil, fill: String? = nil, rotate: Int? = nil, transparent: Double? = nil, paragraphs: [Paragraph]? = nil) {
        self.width = width
        self.height = height
        self.margins = margins
        self.fill = fill
        self.rotate = rotate
        self.transparent = transparent
        self.paragraphs = paragraphs
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case width
        case height
        case margins
        case fill
        case rotate
        case transparent
        case paragraphs
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(width, forKey: .width)
        try container.encodeIfPresent(height, forKey: .height)
        try container.encodeIfPresent(margins, forKey: .margins)
        try container.encodeIfPresent(fill, forKey: .fill)
        try container.encodeIfPresent(rotate, forKey: .rotate)
        try container.encodeIfPresent(transparent, forKey: .transparent)
        try container.encodeIfPresent(paragraphs, forKey: .paragraphs)
    }
}

