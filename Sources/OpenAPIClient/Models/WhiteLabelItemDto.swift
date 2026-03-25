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

/** The white label item parameters. */
public struct WhiteLabelItemDto: Sendable, Codable, Hashable {

    public var type: WhiteLabelLogoType?
    /** The white label file name. */
    public var name: String?
    public var size: IMagickGeometry?
    public var path: WhiteLabelItemPathDto?

    public init(type: WhiteLabelLogoType? = nil, name: String? = nil, size: IMagickGeometry? = nil, path: WhiteLabelItemPathDto? = nil) {
        self.type = type
        self.name = name
        self.size = size
        self.path = path
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case name
        case size
        case path
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(size, forKey: .size)
        try container.encodeIfPresent(path, forKey: .path)
    }
}

