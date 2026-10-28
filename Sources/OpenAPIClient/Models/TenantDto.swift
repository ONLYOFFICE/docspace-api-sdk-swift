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

/** The record of one portal: its name, owner, language, time zone and lifecycle state. */
public struct TenantDto: Sendable, Codable, Hashable {

    /** The partner the portal was signed up through, empty for a portal that came in directly. It is bookkeeping  for the vendor and has no bearing on what the portal may do. */
    public var affiliateId: String?
    /** The portal's own name within the installation, which together with the installation's base domain forms  the address it is reached at. A caller without the portal-settings right gets `tenantId` alone, so an  empty value here is the sign that the rest of this object was withheld rather than unset. */
    public var tenantAlias: String?
    /** Whether telephony is switched on for the portal. It is carried over from portal registration and stays  `false` on a DocSpace portal, where the feature does not exist. */
    public var calls: Bool?
    /** The marketing campaign the portal was signed up under, empty for a portal that came in outside one. Like  `affiliateId`, it is bookkeeping only. */
    public var campaign: String?
    /** When the portal was created, in UTC rather than in the portal time zone. */
    public var creationDateTime: Date?
    /** The data-centre region written on the portal record itself, as opposed to `region`, which is looked up  from the hosting service. It is empty on a server installation. */
    public var hostedRegion: String?
    /** The numeric identifier of the portal inside the installation. It is the one field every caller gets,  whatever their rights. */
    public var tenantId: Int?
    /** The line of business chosen when the portal was created. It only steers what the vendor suggests and  restricts nothing. */
    public var industry: TenantIndustry?
    /** The default language of the portal as a culture name, the same value `GET api/2.0/settings` reports as  `culture`. A member may have a language of their own, which this does not reflect. */
    public var language: String?
    /** When any field of this record last changed, in UTC. It does not move when portal settings outside this  record are changed. */
    public var lastModified: Date?
    /** The custom domain the portal answers on in addition to its own address, empty when none has been set up. */
    public var mappedDomain: String?
    /** The portal title as shown to people, which is what `GET api/2.0/settings` returns as  `greetingSettings`. It is free text, unlike `tenantAlias`, and empty until someone sets it. */
    public var name: String?
    /** The portal owner, the one account that cannot be removed or demoted.  `PUT api/2.0/settings/owner` hands the role over. */
    public var ownerId: UUID?
    /** The portal's identifier in the billing system, empty for a portal that has never been billed. The  subscription itself is read with `GET api/2.0/portal/tariff`. */
    public var paymentId: String?
    /** Whether the owner agreed to receive the vendor's newsletter. Despite the name it does not mark the portal  as a spammer and affects nothing but marketing mail. */
    public var spam: Bool?
    /** The lifecycle state of the portal. Anything other than active means most operations are refused for the  moment, because the portal is being transferred, restored, encrypted or removed. */
    public var status: TenantStatus?
    /** When `status` last changed, in UTC. For a portal pending removal it is the moment the countdown to  deletion started. */
    public var statusChangeDate: Date?
    /** The portal time zone, which is the zone the dates this API calls portal time are expressed in. It may be  stored as a Windows identifier here, while `GET api/2.0/settings` always reports the IANA form. */
    public var timeZone: String?
    /** The mail domains a new member may register or be invited from without confirming the address. It is empty  whenever `trustedDomainsType` is not `Custom`. */
    public var trustedDomains: [String]?
    /** The same domains as the single stored string they are kept in, separated by commas. Read  `trustedDomains` instead; this one exists because it is what the record holds. */
    public var trustedDomainsRaw: String?
    /** How the mail domains are applied: no domain trusted, every domain trusted, or only the listed ones. Only  the last of the three makes `trustedDomains` meaningful. */
    public var trustedDomainsType: TenantTrustedDomainsType?
    /** The identifier of the portal version the installation pins this portal to, which is an internal number  and not the product version string that `GET api/2.0/settings` reports as `version`. */
    public var version: Int?
    /** When `version` last changed, in UTC. It stays at its zero value on a portal whose version has never been  switched. */
    public var versionChanged: Date?
    /** The data-centre region the portal is actually served from, looked up from the hosting service. It is  empty on a server installation and also whenever the installation's portal cache is switched off, so an  empty value does not mean the portal has no region - `hostedRegion` is the value from the record itself. */
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

