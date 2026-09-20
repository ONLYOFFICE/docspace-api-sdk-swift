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

/** A pixel size measured on the image itself. */
public struct Size: Sendable, Codable, Hashable {

    /** The height of the image in pixels, read from the stored file rather than from any display setting. */
    public var height: Int?
    /** The width of the image in pixels, read from the stored file rather than from any display setting. */
    public var width: Int?

    public init(height: Int? = nil, width: Int? = nil) {
        self.height = height
        self.width = width
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case height
        case width
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(height, forKey: .height)
        try container.encodeIfPresent(width, forKey: .width)
    }
}

