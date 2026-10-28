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

/** The keys to store for one third-party authorization or storage provider. */
public struct SaveAuthKeysRequestDto: Sendable, Codable, Hashable {

    /** The internal key of the provider, such as `google` or `box`. Take it from the `name` of  `GET api/2.0/settings/authservice`. */
    public var name: String?
    /** Accepted for compatibility with earlier clients and not read: the server keeps its own value. */
    public var title: String?
    /** Accepted for compatibility with earlier clients and not read: the server keeps its own value. */
    public var description: String?
    /** Accepted for compatibility with earlier clients and not read: the server keeps its own value. */
    public var instruction: String?
    /** Accepted for compatibility with earlier clients and not read: the server keeps its own value. */
    public var canSet: Bool?
    /** Accepted for compatibility with earlier clients and not read: the server keeps its own value. */
    public var paid: Bool?
    /** The keys of the provider with their new values, by the key names `GET api/2.0/settings/authservice` lists in  `props`. */
    public var props: [AuthKeyRequest]?

    public init(name: String? = nil, title: String? = nil, description: String? = nil, instruction: String? = nil, canSet: Bool? = nil, paid: Bool? = nil, props: [AuthKeyRequest]? = nil) {
        self.name = name
        self.title = title
        self.description = description
        self.instruction = instruction
        self.canSet = canSet
        self.paid = paid
        self.props = props
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case title
        case description
        case instruction
        case canSet
        case paid
        case props
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(title, forKey: .title)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(instruction, forKey: .instruction)
        try container.encodeIfPresent(canSet, forKey: .canSet)
        try container.encodeIfPresent(paid, forKey: .paid)
        try container.encodeIfPresent(props, forKey: .props)
    }
}

