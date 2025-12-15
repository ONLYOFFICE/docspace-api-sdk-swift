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

/** The current tenant quota. */
public struct TenantQuota: Sendable, Codable, ParameterConvertible, Hashable {

    /** The tenant ID. */
    public var tenantId: Int?
    /** The tenant name. */
    public var name: String?
    /** The tenant price. */
    public var price: Double?
    /** The tenant price currency symbol. */
    public var priceCurrencySymbol: String?
    /** The tenant price three-character ISO 4217 currency symbol. */
    public var priceISOCurrencySymbol: String?
    /** The tenant product ID. */
    public var productId: String?
    /** The service name. */
    public var serviceName: String?
    /** Specifies if the tenant quota is visible or not. */
    public var visible: Bool?
    /** Specifies if the tenant quota applies to the wallet or not */
    public var wallet: Bool?
    /** The quota due date. */
    public var dueDate: Date?
    /** The tenant quota features. */
    public var features: String?
    /** The tenant maximum file size. */
    public var maxFileSize: Int64?
    /** The tenant maximum total size. */
    public var maxTotalSize: Int64?
    /** The number of portal users. */
    public var countUser: Int?
    /** The number of portal room administrators. */
    public var countRoomAdmin: Int?
    /** The number of room users. */
    public var usersInRoom: Int?
    /** The number of rooms. */
    public var countRoom: Int?
    /** Specifies if the tenant quota is nonprofit or not. */
    public var nonProfit: Bool?
    /** Specifies if the tenant quota is trial or not. */
    public var trial: Bool?
    /** Specifies if the tenant quota is free or not. */
    public var free: Bool?
    /** Specifies if the tenant quota is updated or not. */
    public var update: Bool?
    /** Specifies if the audit trail is available or not. */
    public var audit: Bool?
    /** Specifies if ONLYOFFICE Docs is included in the tenant quota or not. */
    public var docsEdition: Bool?
    /** Specifies if the LDAP settings are available or not. */
    public var ldap: Bool?
    /** Specifies if the SSO settings are available or not. */
    public var sso: Bool?
    /** Specifies if the statistics settings are available or not. */
    public var statistic: Bool?
    /** Specifies if the branding settings are available or not. */
    public var branding: Bool?
    /** Specifies if the customization settings are available or not. */
    public var customization: Bool?
    /** Specifies if the license has the lifetime settings or not. */
    public var lifetime: Bool?
    /** Specifies if the custom domain URL is available or not. */
    public var custom: Bool?
    /** Specifies if the restore is enabled or not. */
    public var restore: Bool?
    /** Specifies if Oauth is available or not. */
    public var oauth: Bool?
    /** Specifies if the content search is available or not. */
    public var contentSearch: Bool?
    /** Specifies if the third-party accounts linking is available or not. */
    public var thirdParty: Bool?
    /** Specifies if the tenant quota is yearly subscription or not. */
    public var year: Bool?
    /** The number of free backups within a month. */
    public var countFreeBackup: Int?
    /** Specifies if the backup anabled as a wallet service or not. */
    public var backup: Bool?
    /** The number of AI agents. */
    public var countAIAgent: Int?

    public init(tenantId: Int? = nil, name: String? = nil, price: Double? = nil, priceCurrencySymbol: String? = nil, priceISOCurrencySymbol: String? = nil, productId: String? = nil, serviceName: String? = nil, visible: Bool? = nil, wallet: Bool? = nil, dueDate: Date? = nil, features: String? = nil, maxFileSize: Int64? = nil, maxTotalSize: Int64? = nil, countUser: Int? = nil, countRoomAdmin: Int? = nil, usersInRoom: Int? = nil, countRoom: Int? = nil, nonProfit: Bool? = nil, trial: Bool? = nil, free: Bool? = nil, update: Bool? = nil, audit: Bool? = nil, docsEdition: Bool? = nil, ldap: Bool? = nil, sso: Bool? = nil, statistic: Bool? = nil, branding: Bool? = nil, customization: Bool? = nil, lifetime: Bool? = nil, custom: Bool? = nil, restore: Bool? = nil, oauth: Bool? = nil, contentSearch: Bool? = nil, thirdParty: Bool? = nil, year: Bool? = nil, countFreeBackup: Int? = nil, backup: Bool? = nil, countAIAgent: Int? = nil) {
        self.tenantId = tenantId
        self.name = name
        self.price = price
        self.priceCurrencySymbol = priceCurrencySymbol
        self.priceISOCurrencySymbol = priceISOCurrencySymbol
        self.productId = productId
        self.serviceName = serviceName
        self.visible = visible
        self.wallet = wallet
        self.dueDate = dueDate
        self.features = features
        self.maxFileSize = maxFileSize
        self.maxTotalSize = maxTotalSize
        self.countUser = countUser
        self.countRoomAdmin = countRoomAdmin
        self.usersInRoom = usersInRoom
        self.countRoom = countRoom
        self.nonProfit = nonProfit
        self.trial = trial
        self.free = free
        self.update = update
        self.audit = audit
        self.docsEdition = docsEdition
        self.ldap = ldap
        self.sso = sso
        self.statistic = statistic
        self.branding = branding
        self.customization = customization
        self.lifetime = lifetime
        self.custom = custom
        self.restore = restore
        self.oauth = oauth
        self.contentSearch = contentSearch
        self.thirdParty = thirdParty
        self.year = year
        self.countFreeBackup = countFreeBackup
        self.backup = backup
        self.countAIAgent = countAIAgent
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case tenantId
        case name
        case price
        case priceCurrencySymbol
        case priceISOCurrencySymbol
        case productId
        case serviceName
        case visible
        case wallet
        case dueDate
        case features
        case maxFileSize
        case maxTotalSize
        case countUser
        case countRoomAdmin
        case usersInRoom
        case countRoom
        case nonProfit
        case trial
        case free
        case update
        case audit
        case docsEdition
        case ldap
        case sso
        case statistic
        case branding
        case customization
        case lifetime
        case custom
        case restore
        case oauth
        case contentSearch
        case thirdParty
        case year
        case countFreeBackup
        case backup
        case countAIAgent
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(tenantId, forKey: .tenantId)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(price, forKey: .price)
        try container.encodeIfPresent(priceCurrencySymbol, forKey: .priceCurrencySymbol)
        try container.encodeIfPresent(priceISOCurrencySymbol, forKey: .priceISOCurrencySymbol)
        try container.encodeIfPresent(productId, forKey: .productId)
        try container.encodeIfPresent(serviceName, forKey: .serviceName)
        try container.encodeIfPresent(visible, forKey: .visible)
        try container.encodeIfPresent(wallet, forKey: .wallet)
        try container.encodeIfPresent(dueDate, forKey: .dueDate)
        try container.encodeIfPresent(features, forKey: .features)
        try container.encodeIfPresent(maxFileSize, forKey: .maxFileSize)
        try container.encodeIfPresent(maxTotalSize, forKey: .maxTotalSize)
        try container.encodeIfPresent(countUser, forKey: .countUser)
        try container.encodeIfPresent(countRoomAdmin, forKey: .countRoomAdmin)
        try container.encodeIfPresent(usersInRoom, forKey: .usersInRoom)
        try container.encodeIfPresent(countRoom, forKey: .countRoom)
        try container.encodeIfPresent(nonProfit, forKey: .nonProfit)
        try container.encodeIfPresent(trial, forKey: .trial)
        try container.encodeIfPresent(free, forKey: .free)
        try container.encodeIfPresent(update, forKey: .update)
        try container.encodeIfPresent(audit, forKey: .audit)
        try container.encodeIfPresent(docsEdition, forKey: .docsEdition)
        try container.encodeIfPresent(ldap, forKey: .ldap)
        try container.encodeIfPresent(sso, forKey: .sso)
        try container.encodeIfPresent(statistic, forKey: .statistic)
        try container.encodeIfPresent(branding, forKey: .branding)
        try container.encodeIfPresent(customization, forKey: .customization)
        try container.encodeIfPresent(lifetime, forKey: .lifetime)
        try container.encodeIfPresent(custom, forKey: .custom)
        try container.encodeIfPresent(restore, forKey: .restore)
        try container.encodeIfPresent(oauth, forKey: .oauth)
        try container.encodeIfPresent(contentSearch, forKey: .contentSearch)
        try container.encodeIfPresent(thirdParty, forKey: .thirdParty)
        try container.encodeIfPresent(year, forKey: .year)
        try container.encodeIfPresent(countFreeBackup, forKey: .countFreeBackup)
        try container.encodeIfPresent(backup, forKey: .backup)
        try container.encodeIfPresent(countAIAgent, forKey: .countAIAgent)
    }
}

