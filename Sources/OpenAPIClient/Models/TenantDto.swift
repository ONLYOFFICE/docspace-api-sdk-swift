//
//  Copyright (c) Ascensio System SIA 2025
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

/** The tenant parameters. */
public struct TenantDto: Sendable, Codable, ParameterConvertible, Hashable {

    /** The affiliate ID. */
    public var affiliateId: String?
    /** The tenant alias. */
    public var tenantAlias: String?
    /** Specifies if the calls are available for this tenant or not. */
    public var calls: Bool?
    /** The tenant campaign. */
    public var campaign: String?
    /** The tenant creation date and time. */
    public var creationDateTime: Date?
    /** The hosted region. */
    public var hostedRegion: String?
    /** The tenant ID. */
    public var tenantId: Int?
    public var industry: TenantIndustry?
    /** The tenant language. */
    public var language: String?
    /** The date and time when the tenant was last modified. */
    public var lastModified: Date?
    /** The tenant mapped domain. */
    public var mappedDomain: String?
    /** The tenant name. */
    public var name: String?
    /** The tenant owner ID. */
    public var ownerId: UUID?
    /** The tenant payment ID. */
    public var paymentId: String?
    /** Specifies if the ONLYOFFICE newsletter is allowed or not. */
    public var spam: Bool?
    public var status: TenantStatus?
    /** The date and time when the tenant status was changed. */
    public var statusChangeDate: Date?
    /** The tenant time zone. */
    public var timeZone: String?
    /** The list of tenant trusted domains. */
    public var trustedDomains: [String]?
    /** The tenant trusted domains in the string format. */
    public var trustedDomainsRaw: String?
    public var trustedDomainsType: TenantTrustedDomainsType?
    /** The tenant version */
    public var version: Int?
    /** The date and time when the tenant version was changed. */
    public var versionChanged: Date?
    /** The tenant AWS region. */
    public var region: String?

    public init(affiliateId: String? = nil, tenantAlias: String? = nil, calls: Bool? = nil, campaign: String? = nil, creationDateTime: Date? = nil, hostedRegion: String? = nil, tenantId: Int? = nil, industry: TenantIndustry? = nil, language: String? = nil, lastModified: Date? = nil, mappedDomain: String? = nil, name: String? = nil, ownerId: UUID? = nil, paymentId: String? = nil, spam: Bool? = nil, status: TenantStatus? = nil, statusChangeDate: Date? = nil, timeZone: String? = nil, trustedDomains: [String]? = nil, trustedDomainsRaw: String? = nil, trustedDomainsType: TenantTrustedDomainsType? = nil, version: Int? = nil, versionChanged: Date? = nil, region: String? = nil) {
        self.affiliateId = affiliateId
        self.tenantAlias = tenantAlias
        self.calls = calls
        self.campaign = campaign
        self.creationDateTime = creationDateTime
        self.hostedRegion = hostedRegion
        self.tenantId = tenantId
        self.industry = industry
        self.language = language
        self.lastModified = lastModified
        self.mappedDomain = mappedDomain
        self.name = name
        self.ownerId = ownerId
        self.paymentId = paymentId
        self.spam = spam
        self.status = status
        self.statusChangeDate = statusChangeDate
        self.timeZone = timeZone
        self.trustedDomains = trustedDomains
        self.trustedDomainsRaw = trustedDomainsRaw
        self.trustedDomainsType = trustedDomainsType
        self.version = version
        self.versionChanged = versionChanged
        self.region = region
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case affiliateId
        case tenantAlias
        case calls
        case campaign
        case creationDateTime
        case hostedRegion
        case tenantId
        case industry
        case language
        case lastModified
        case mappedDomain
        case name
        case ownerId
        case paymentId
        case spam
        case status
        case statusChangeDate
        case timeZone
        case trustedDomains
        case trustedDomainsRaw
        case trustedDomainsType
        case version
        case versionChanged
        case region
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(affiliateId, forKey: .affiliateId)
        try container.encodeIfPresent(tenantAlias, forKey: .tenantAlias)
        try container.encodeIfPresent(calls, forKey: .calls)
        try container.encodeIfPresent(campaign, forKey: .campaign)
        try container.encodeIfPresent(creationDateTime, forKey: .creationDateTime)
        try container.encodeIfPresent(hostedRegion, forKey: .hostedRegion)
        try container.encodeIfPresent(tenantId, forKey: .tenantId)
        try container.encodeIfPresent(industry, forKey: .industry)
        try container.encodeIfPresent(language, forKey: .language)
        try container.encodeIfPresent(lastModified, forKey: .lastModified)
        try container.encodeIfPresent(mappedDomain, forKey: .mappedDomain)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(ownerId, forKey: .ownerId)
        try container.encodeIfPresent(paymentId, forKey: .paymentId)
        try container.encodeIfPresent(spam, forKey: .spam)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(statusChangeDate, forKey: .statusChangeDate)
        try container.encodeIfPresent(timeZone, forKey: .timeZone)
        try container.encodeIfPresent(trustedDomains, forKey: .trustedDomains)
        try container.encodeIfPresent(trustedDomainsRaw, forKey: .trustedDomainsRaw)
        try container.encodeIfPresent(trustedDomainsType, forKey: .trustedDomainsType)
        try container.encodeIfPresent(version, forKey: .version)
        try container.encodeIfPresent(versionChanged, forKey: .versionChanged)
        try container.encodeIfPresent(region, forKey: .region)
    }
}

