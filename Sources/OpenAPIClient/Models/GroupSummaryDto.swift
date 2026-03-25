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

/** The group summary parameters. */
public struct GroupSummaryDto: Sendable, Codable, Hashable {

    /** The group ID. */
    public var id: UUID
    /** The group name. */
    public var name: String?
    /** The group manager. */
    public var manager: String?
    /** Indicates whether the group is a system group. */
    public var isSystem: Bool?

    public init(id: UUID, name: String?, manager: String? = nil, isSystem: Bool? = nil) {
        self.id = id
        self.name = name
        self.manager = manager
        self.isSystem = isSystem
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case manager
        case isSystem
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(name, forKey: .name)
        try container.encodeIfPresent(manager, forKey: .manager)
        try container.encodeIfPresent(isSystem, forKey: .isSystem)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension GroupSummaryDto: Identifiable {}
