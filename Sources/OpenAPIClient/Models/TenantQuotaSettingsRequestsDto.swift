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

/** The request parameters for managing the tenant storage quota settings in a multi-tenant system. */
public struct TenantQuotaSettingsRequestsDto: Sendable, Codable, Hashable {

    /** The ID of the tenant whose quota is being configured. */
    public var tenantId: Int
    /** The storage quota limit in bytes allocated to the tenant. */
    public var quota: Int64?

    public init(tenantId: Int, quota: Int64? = nil) {
        self.tenantId = tenantId
        self.quota = quota
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case tenantId
        case quota
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(tenantId, forKey: .tenantId)
        try container.encodeIfPresent(quota, forKey: .quota)
    }
}

