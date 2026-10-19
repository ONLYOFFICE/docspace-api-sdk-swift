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

/** The margins of the output PDF file, each a length with its unit: mm, cm or in. */
public struct ConvertSpreadsheetMarginsRequest: Sendable, Codable, Hashable {

    /** The left margin of the output PDF file. */
    public var _left: String?
    /** The right margin of the output PDF file. */
    public var _right: String?
    /** The top margin of the output PDF file. */
    public var top: String?
    /** The bottom margin of the output PDF file. */
    public var bottom: String?

    public init(_left: String? = nil, _right: String? = nil, top: String? = nil, bottom: String? = nil) {
        self._left = _left
        self._right = _right
        self.top = top
        self.bottom = bottom
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case _left = "left"
        case _right = "right"
        case top
        case bottom
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(_left, forKey: ._left)
        try container.encodeIfPresent(_right, forKey: ._right)
        try container.encodeIfPresent(top, forKey: .top)
        try container.encodeIfPresent(bottom, forKey: .bottom)
    }
}

