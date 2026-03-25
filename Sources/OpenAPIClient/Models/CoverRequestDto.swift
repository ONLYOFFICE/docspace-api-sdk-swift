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

/** The request parameters to change the room cover. */
public struct CoverRequestDto: Sendable, Codable, Hashable {

    public static let colorRule = StringRule(minLength: nil, maxLength: nil, pattern: "/^([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$/")
    /** The cover color. */
    public var color: String?
    /** The cover name. */
    public var cover: String?

    public init(color: String? = nil, cover: String? = nil) {
        self.color = color
        self.cover = cover
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case color
        case cover
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(color, forKey: .color)
        try container.encodeIfPresent(cover, forKey: .cover)
    }
}

