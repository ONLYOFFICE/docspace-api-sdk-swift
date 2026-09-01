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

/** The request parameters for handling the authorization service. */
public struct AuthServiceRequestsDto: Sendable, Codable, Hashable {

    /** The name of the authorization service. */
    public var name: String?
    /** The user-friendly display title of the authorization service. */
    public var title: String?
    /** The brief description of the authorization service. */
    public var description: String?
    /** The detailed instructions for configuring or using the authorization service. */
    public var instruction: String?
    /** Specifies whether the authorization service can be configured by the user. */
    public var canSet: Bool?
    /** Specifies whether the authorization service is paid or not. */
    public var paid: Bool?
    /** The collection of authorization keys associated with the authorization service. */
    public var props: [AuthKey]?

    public init(name: String? = nil, title: String? = nil, description: String? = nil, instruction: String? = nil, canSet: Bool? = nil, paid: Bool? = nil, props: [AuthKey]? = nil) {
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

