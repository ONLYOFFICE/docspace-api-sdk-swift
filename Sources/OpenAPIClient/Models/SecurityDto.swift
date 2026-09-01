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

/** The security information. */
public struct SecurityDto: Sendable, Codable, Hashable {

    /** The module ID. */
    public var webItemId: String?
    /** The list of users with the access to the module. */
    public var users: [EmployeeDto]?
    /** The list of groups with the access to the module. */
    public var groups: [GroupSummaryDto]?
    /** Specifies if the security settings are enabled or not. */
    public var enabled: Bool?
    /** Specifies if the module is a subitem or not. */
    public var isSubItem: Bool?

    public init(webItemId: String? = nil, users: [EmployeeDto]? = nil, groups: [GroupSummaryDto]? = nil, enabled: Bool? = nil, isSubItem: Bool? = nil) {
        self.webItemId = webItemId
        self.users = users
        self.groups = groups
        self.enabled = enabled
        self.isSubItem = isSubItem
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case webItemId
        case users
        case groups
        case enabled
        case isSubItem
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(webItemId, forKey: .webItemId)
        try container.encodeIfPresent(users, forKey: .users)
        try container.encodeIfPresent(groups, forKey: .groups)
        try container.encodeIfPresent(enabled, forKey: .enabled)
        try container.encodeIfPresent(isSubItem, forKey: .isSubItem)
    }
}

