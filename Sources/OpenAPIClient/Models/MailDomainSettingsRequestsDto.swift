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

/** The request parameters for configuring trusted mail domains and visitor invitation settings. */
public struct MailDomainSettingsRequestsDto: Sendable, Codable, Hashable {

    public var type: TenantTrustedDomainsType
    /** The list of authorized email domains that are considered trusted. */
    public var domains: [String]?
    /** Specifies the default permission level for the invited users (visitors or not). */
    public var inviteUsersAsVisitors: Bool

    public init(type: TenantTrustedDomainsType, domains: [String]?, inviteUsersAsVisitors: Bool) {
        self.type = type
        self.domains = domains
        self.inviteUsersAsVisitors = inviteUsersAsVisitors
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case domains
        case inviteUsersAsVisitors
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(type, forKey: .type)
        try container.encode(domains, forKey: .domains)
        try container.encode(inviteUsersAsVisitors, forKey: .inviteUsersAsVisitors)
    }
}

