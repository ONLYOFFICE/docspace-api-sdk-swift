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

/** The logo request parameters. */
public struct LogoRequest: Sendable, Codable, Hashable {

    public static let tmpFileRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    public static let xRule = NumericRule<Int>(minimum: 0, exclusiveMinimum: false, maximum: 1280, exclusiveMaximum: false, multipleOf: nil)
    public static let yRule = NumericRule<Int>(minimum: 0, exclusiveMinimum: false, maximum: 1280, exclusiveMaximum: false, multipleOf: nil)
    public static let widthRule = NumericRule<Int>(minimum: 1, exclusiveMinimum: false, maximum: 1280, exclusiveMaximum: false, multipleOf: nil)
    public static let heightRule = NumericRule<Int>(minimum: 1, exclusiveMinimum: false, maximum: 1280, exclusiveMaximum: false, multipleOf: nil)
    /** The path to the temporary image file. */
    public var tmpFile: String
    /** The X coordinate of the rectangle starting point. */
    public var x: Int?
    /** The Y coordinate of the rectangle starting point. */
    public var y: Int?
    /** The rectangle width. */
    public var width: Int?
    /** The rectangle height. */
    public var height: Int?

    public init(tmpFile: String, x: Int? = nil, y: Int? = nil, width: Int? = nil, height: Int? = nil) {
        self.tmpFile = tmpFile
        self.x = x
        self.y = y
        self.width = width
        self.height = height
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case tmpFile
        case x
        case y
        case width
        case height
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(tmpFile, forKey: .tmpFile)
        try container.encodeIfPresent(x, forKey: .x)
        try container.encodeIfPresent(y, forKey: .y)
        try container.encodeIfPresent(width, forKey: .width)
        try container.encodeIfPresent(height, forKey: .height)
    }
}

