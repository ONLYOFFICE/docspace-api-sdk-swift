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

/** How access to one portal module is configured: whether it is restricted, and who is let in. */
public struct SecurityDto: Sendable, Codable, Hashable {

    /** The module this entry is about, echoed from the identifier that was asked about. When several identifiers  are asked about at once, entries come back one per identifier and in the order they were sent, so they can  also be matched by position. */
    public var webItemId: String?
    /** The individual members the rule was stored for. Members the caller is not allowed to see are left out, so  the same module can come back with different lists for different callers and an empty list does not prove  that nobody was granted access. */
    public var users: [EmployeeDto]?
    /** The groups the rule was stored for, listed in full - unlike `users`, nothing is filtered out of it. */
    public var groups: [GroupSummaryDto]?
    /** Whether access to the module is restricted to the subjects listed here. It is `false` for a module nobody  has ever configured, in which case the two lists say nothing about who may open it. */
    public var enabled: Bool?
    /** Whether the module hangs under another one rather than standing on its own. A sub-module is never returned  by `GET api/2.0/settings/security/modules`, which lists top-level modules only. */
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

