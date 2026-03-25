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

/** The group parameters. */
public struct GroupDto: Sendable, Codable, Hashable {

    /** The group name. */
    public var name: String?
    /** The parent group ID. */
    public var parent: UUID?
    /** The group category ID. */
    public var category: UUID
    /** The group ID. */
    public var id: UUID
    /** Specifies if the LDAP settings are enabled for the group or not. */
    public var isLDAP: Bool
    /** Indicates whether the group is a system group. */
    public var isSystem: Bool?
    public var manager: EmployeeFullDto?
    /** The list of group members. */
    public var members: [EmployeeFullDto]?
    /** Specifies whether the group can be shared or not. */
    public var shared: Bool?
    /** The number of group members. */
    public var membersCount: Int?

    public init(name: String?, parent: UUID? = nil, category: UUID, id: UUID, isLDAP: Bool, isSystem: Bool? = nil, manager: EmployeeFullDto? = nil, members: [EmployeeFullDto]? = nil, shared: Bool? = nil, membersCount: Int? = nil) {
        self.name = name
        self.parent = parent
        self.category = category
        self.id = id
        self.isLDAP = isLDAP
        self.isSystem = isSystem
        self.manager = manager
        self.members = members
        self.shared = shared
        self.membersCount = membersCount
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case parent
        case category
        case id
        case isLDAP
        case isSystem
        case manager
        case members
        case shared
        case membersCount
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encodeIfPresent(parent, forKey: .parent)
        try container.encode(category, forKey: .category)
        try container.encode(id, forKey: .id)
        try container.encode(isLDAP, forKey: .isLDAP)
        try container.encodeIfPresent(isSystem, forKey: .isSystem)
        try container.encodeIfPresent(manager, forKey: .manager)
        try container.encodeIfPresent(members, forKey: .members)
        try container.encodeIfPresent(shared, forKey: .shared)
        try container.encodeIfPresent(membersCount, forKey: .membersCount)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension GroupDto: Identifiable {}
