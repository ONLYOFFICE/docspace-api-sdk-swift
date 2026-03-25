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

/** The database tenant partner parameters. */
public struct DbTenantPartner: Sendable, Codable, Hashable {

    public static let partnerIdRule = StringRule(minLength: nil, maxLength: 36, pattern: nil)
    public static let affiliateIdRule = StringRule(minLength: nil, maxLength: 50, pattern: nil)
    public static let campaignRule = StringRule(minLength: nil, maxLength: 50, pattern: nil)
    /** The tenant ID. */
    public var tenantId: Int?
    /** The partner ID. */
    public var partnerId: String?
    /** The affiliate ID. */
    public var affiliateId: String?
    /** The tenant partner campaign. */
    public var campaign: String?

    public init(tenantId: Int? = nil, partnerId: String? = nil, affiliateId: String? = nil, campaign: String? = nil) {
        self.tenantId = tenantId
        self.partnerId = partnerId
        self.affiliateId = affiliateId
        self.campaign = campaign
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case tenantId
        case partnerId
        case affiliateId
        case campaign
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(tenantId, forKey: .tenantId)
        try container.encodeIfPresent(partnerId, forKey: .partnerId)
        try container.encodeIfPresent(affiliateId, forKey: .affiliateId)
        try container.encodeIfPresent(campaign, forKey: .campaign)
    }
}

