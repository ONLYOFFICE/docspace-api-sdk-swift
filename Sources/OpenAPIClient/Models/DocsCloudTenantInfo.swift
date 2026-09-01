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

/** Represents the license and server information of a DocsCloud tenant, with usage statistics for the current period. */
public struct DocsCloudTenantInfo: Sendable, Codable, Hashable {

    /** The license information. */
    public var license: DocsCloudLicenseInfo?
    /** The DocsCloud server information. */
    public var server: DocsCloudServerInfo?
    /** The user limits of the license. */
    public var usersLimit: DocsCloudUsersLimit?
    /** The usage statistics for the current period. */
    public var stats: DocsCloudStats?

    public init(license: DocsCloudLicenseInfo? = nil, server: DocsCloudServerInfo? = nil, usersLimit: DocsCloudUsersLimit? = nil, stats: DocsCloudStats? = nil) {
        self.license = license
        self.server = server
        self.usersLimit = usersLimit
        self.stats = stats
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case license
        case server
        case usersLimit
        case stats
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(license, forKey: .license)
        try container.encodeIfPresent(server, forKey: .server)
        try container.encodeIfPresent(usersLimit, forKey: .usersLimit)
        try container.encodeIfPresent(stats, forKey: .stats)
    }
}

