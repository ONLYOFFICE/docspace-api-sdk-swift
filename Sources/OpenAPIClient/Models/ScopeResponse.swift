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

/** The response containing the scope information. */
public struct ScopeResponse: Sendable, Codable, Hashable {

    /** The scope name. */
    public var name: String?
    /** The group the scope belongs to. */
    public var group: String?
    /** The scope type. */
    public var type: String?

    public init(name: String? = nil, group: String? = nil, type: String? = nil) {
        self.name = name
        self.group = group
        self.type = type
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case group
        case type
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(group, forKey: .group)
        try container.encodeIfPresent(type, forKey: .type)
    }
}

