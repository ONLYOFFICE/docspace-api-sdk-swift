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

public struct ContentType: Sendable, Codable, Hashable {

    public var boundary: String?
    public var charSet: String?
    public var mediaType: String?
    public var name: String?
    public var parameters: [JSONValue]?

    public init(boundary: String? = nil, charSet: String? = nil, mediaType: String? = nil, name: String? = nil, parameters: [JSONValue]? = nil) {
        self.boundary = boundary
        self.charSet = charSet
        self.mediaType = mediaType
        self.name = name
        self.parameters = parameters
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case boundary
        case charSet
        case mediaType
        case name
        case parameters
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(boundary, forKey: .boundary)
        try container.encodeIfPresent(charSet, forKey: .charSet)
        try container.encodeIfPresent(mediaType, forKey: .mediaType)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(parameters, forKey: .parameters)
    }
}

