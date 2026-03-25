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

/** The database tenant parameters. */
public struct DbTenant: Sendable, Codable, Hashable {

    public static let nameRule = StringRule(minLength: nil, maxLength: 255, pattern: nil)
    public static let aliasRule = StringRule(minLength: nil, maxLength: 100, pattern: nil)
    public static let mappedDomainRule = StringRule(minLength: nil, maxLength: 100, pattern: nil)
    public static let languageRule = StringRule(minLength: nil, maxLength: 10, pattern: nil)
    public static let timeZoneRule = StringRule(minLength: nil, maxLength: 50, pattern: nil)
    public static let trustedDomainsRawRule = StringRule(minLength: nil, maxLength: 1024, pattern: nil)
    public static let paymentIdRule = StringRule(minLength: nil, maxLength: 38, pattern: nil)
    /** The tenant ID. */
    public var id: Int?
    /** The tenant name. */
    public var name: String?
    /** The tenant alias. */
    public var alias: String?
    /** Mapped domain */
    public var mappedDomain: String?
    /** The tenant version. */
    public var version: Int?
    /** The Version_changed field. */
    public var versionChanged: Date?
    /** The date and time when the version was changed. */
    public var versionChanged: Date?
    /** The tenant language. */
    public var language: String?
    /** The tenant time zone. */
    public var timeZone: String?
    /** The tenant trusted domains raw. */
    public var trustedDomainsRaw: String?
    public var trustedDomainsEnabled: TenantTrustedDomainsType?
    public var status: TenantStatus?
    /** The date and time when the tenant status was changed. */
    public var statusChanged: Date?
    /** The hacked date and time when the tenant status was changed. */
    public var statusChangedHack: Date?
    /** The tenant creation date. */
    public var creationDateTime: Date?
    /** The tenant owner ID. */
    public var ownerId: UUID?
    /** The tenant payment ID. */
    public var paymentId: String?
    public var industry: TenantIndustry?
    /** The date and time when the tenant was last modified. */
    public var lastModified: Date?
    /** Specifies if the calls are available for the current tenant or not. */
    public var calls: Bool?
    public var partner: DbTenantPartner?

    public init(id: Int? = nil, name: String? = nil, alias: String? = nil, mappedDomain: String? = nil, version: Int? = nil, versionChanged: Date? = nil, versionChanged: Date? = nil, language: String? = nil, timeZone: String? = nil, trustedDomainsRaw: String? = nil, trustedDomainsEnabled: TenantTrustedDomainsType? = nil, status: TenantStatus? = nil, statusChanged: Date? = nil, statusChangedHack: Date? = nil, creationDateTime: Date? = nil, ownerId: UUID? = nil, paymentId: String? = nil, industry: TenantIndustry? = nil, lastModified: Date? = nil, calls: Bool? = nil, partner: DbTenantPartner? = nil) {
        self.id = id
        self.name = name
        self.alias = alias
        self.mappedDomain = mappedDomain
        self.version = version
        self.versionChanged = versionChanged
        self.versionChanged = versionChanged
        self.language = language
        self.timeZone = timeZone
        self.trustedDomainsRaw = trustedDomainsRaw
        self.trustedDomainsEnabled = trustedDomainsEnabled
        self.status = status
        self.statusChanged = statusChanged
        self.statusChangedHack = statusChangedHack
        self.creationDateTime = creationDateTime
        self.ownerId = ownerId
        self.paymentId = paymentId
        self.industry = industry
        self.lastModified = lastModified
        self.calls = calls
        self.partner = partner
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case alias
        case mappedDomain
        case version
        case versionChanged = "version_Changed"
        case versionChanged
        case language
        case timeZone
        case trustedDomainsRaw
        case trustedDomainsEnabled
        case status
        case statusChanged
        case statusChangedHack
        case creationDateTime
        case ownerId
        case paymentId
        case industry
        case lastModified
        case calls
        case partner
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(alias, forKey: .alias)
        try container.encodeIfPresent(mappedDomain, forKey: .mappedDomain)
        try container.encodeIfPresent(version, forKey: .version)
        try container.encodeIfPresent(versionChanged, forKey: .versionChanged)
        try container.encodeIfPresent(versionChanged, forKey: .versionChanged)
        try container.encodeIfPresent(language, forKey: .language)
        try container.encodeIfPresent(timeZone, forKey: .timeZone)
        try container.encodeIfPresent(trustedDomainsRaw, forKey: .trustedDomainsRaw)
        try container.encodeIfPresent(trustedDomainsEnabled, forKey: .trustedDomainsEnabled)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(statusChanged, forKey: .statusChanged)
        try container.encodeIfPresent(statusChangedHack, forKey: .statusChangedHack)
        try container.encodeIfPresent(creationDateTime, forKey: .creationDateTime)
        try container.encodeIfPresent(ownerId, forKey: .ownerId)
        try container.encodeIfPresent(paymentId, forKey: .paymentId)
        try container.encodeIfPresent(industry, forKey: .industry)
        try container.encodeIfPresent(lastModified, forKey: .lastModified)
        try container.encodeIfPresent(calls, forKey: .calls)
        try container.encodeIfPresent(partner, forKey: .partner)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension DbTenant: Identifiable {}
