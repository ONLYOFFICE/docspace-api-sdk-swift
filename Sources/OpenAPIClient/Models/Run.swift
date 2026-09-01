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

/** The text run parameters. */
public struct Run: Sendable, Codable, Hashable {

    /** The fill color of the text run in RGB format. */
    public var fill: [Int]?
    /** The run text. */
    public var text: String?
    /** The font size of the text run in points. */
    public var fontSize: String?

    public init(fill: [Int]? = nil, text: String? = nil, fontSize: String? = nil) {
        self.fill = fill
        self.text = text
        self.fontSize = fontSize
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case fill
        case text
        case fontSize = "font-size"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(fill, forKey: .fill)
        try container.encodeIfPresent(text, forKey: .text)
        try container.encodeIfPresent(fontSize, forKey: .fontSize)
    }
}

