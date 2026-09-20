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

/** The storage limit set on one tenant of a self-hosted installation. */
public struct TenantQuotaSettingsRequestsDto: Sendable, Codable, Hashable {

    /** The tenant the limit applies to, by tenant ID. Only a self-hosted installation has more than one, which is  why the operation is refused on SaaS. */
    public var tenantId: Int
    /** The limit in bytes. A negative value is not a smaller limit but the absence of one: it removes whatever limit  the tenant had. The value is a ceiling on stored data and says nothing about how much of it is already used. */
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

