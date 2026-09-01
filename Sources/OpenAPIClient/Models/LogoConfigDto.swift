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

/** The logo config parameters. */
public struct LogoConfigDto: Sendable, Codable, Hashable {

    /** The image of the logo. */
    public var image: String?
    /** The dark image of the logo. */
    public var imageDark: String?
    /** The light image of the logo. */
    public var imageLight: String?
    /** The embedded image of the logo. */
    public var imageEmbedded: String?
    /** The url link of the logo. */
    public var url: String?
    /** Specifies if the logo is visible. */
    public var visible: Bool?

    public init(image: String? = nil, imageDark: String? = nil, imageLight: String? = nil, imageEmbedded: String? = nil, url: String? = nil, visible: Bool? = nil) {
        self.image = image
        self.imageDark = imageDark
        self.imageLight = imageLight
        self.imageEmbedded = imageEmbedded
        self.url = url
        self.visible = visible
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case image
        case imageDark
        case imageLight
        case imageEmbedded
        case url
        case visible
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(image, forKey: .image)
        try container.encodeIfPresent(imageDark, forKey: .imageDark)
        try container.encodeIfPresent(imageLight, forKey: .imageLight)
        try container.encodeIfPresent(imageEmbedded, forKey: .imageEmbedded)
        try container.encodeIfPresent(url, forKey: .url)
        try container.encodeIfPresent(visible, forKey: .visible)
    }
}

