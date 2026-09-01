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

/** Represents the configuration of a DocsCloud tenant. */
public struct DocsCloudConfig: Sendable, Codable, Hashable {

    public static let tenantNameRule = StringRule(minLength: 0, maxLength: 255, pattern: nil)
    /** The tenant name. */
    public var tenantName: String?
    /** The security configuration. */
    public var security: DocsCloudSecurityConfig?
    /** The server configuration. */
    public var server: DocsCloudServerConfig?
    /** The WOPI configuration. */
    public var wopi: DocsCloudWopiConfig?
    /** The IP filter configuration. */
    public var ipFilter: DocsCloudIpFilterConfig?

    public init(tenantName: String? = nil, security: DocsCloudSecurityConfig? = nil, server: DocsCloudServerConfig? = nil, wopi: DocsCloudWopiConfig? = nil, ipFilter: DocsCloudIpFilterConfig? = nil) {
        self.tenantName = tenantName
        self.security = security
        self.server = server
        self.wopi = wopi
        self.ipFilter = ipFilter
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case tenantName
        case security
        case server
        case wopi
        case ipFilter
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(tenantName, forKey: .tenantName)
        try container.encodeIfPresent(security, forKey: .security)
        try container.encodeIfPresent(server, forKey: .server)
        try container.encodeIfPresent(wopi, forKey: .wopi)
        try container.encodeIfPresent(ipFilter, forKey: .ipFilter)
    }
}

