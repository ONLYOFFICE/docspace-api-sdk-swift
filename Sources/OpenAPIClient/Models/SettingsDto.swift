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

/** The settings information. */
public struct SettingsDto: Sendable, Codable, Hashable {

    /** The time zone. */
    public var timezone: String?
    /** The list of the trusted domains. */
    public var trustedDomains: [String]?
    public var trustedDomainsType: TenantTrustedDomainsType?
    /** The language. */
    public var culture: String?
    /** The UTC offset in the TimeSpan format. */
    public var utcOffset: String?
    /** The UTC offset in hours. */
    public var utcHoursOffset: Double?
    /** The greeting settings. */
    public var greetingSettings: String?
    /** The owner ID. */
    public var ownerId: UUID?
    /** The team template ID. */
    public var nameSchemaId: String?
    /** Specifies if a user can join the portal or not. */
    public var enabledJoin: Bool?
    /** Specifies if a user can send a message to the administrator when accessing the DocSpace portal or not. */
    public var enableAdmMess: Bool?
    /** Specifies if a user can connect third-party providers to the portal or not. */
    public var thirdpartyEnable: Bool?
    /** Specifies if this portal is a DocSpace portal or not. */
    public var docSpace: Bool?
    /** Indicates whether the system is running in standalone mode. */
    public var standalone: Bool?
    /** Specifies if this portal is the AMI instance or not. */
    public var isAmi: Bool?
    /** The base domain. */
    public var baseDomain: String?
    /** The wizard token. */
    public var wizardToken: String?
    public var passwordHash: PasswordHasher?
    public var firebase: FirebaseDto?
    /** The portal version. */
    public var version: String?
    public var recaptchaType: RecaptchaType?
    /** The ReCAPTCHA public key. */
    public var recaptchaPublicKey: String?
    /** Specifies if the debug information will be sent or not. */
    public var debugInfo: Bool?
    /** The socket URL. */
    public var socketUrl: String?
    public var tenantStatus: TenantStatus?
    /** The tenant alias. */
    public var tenantAlias: String?
    /** Specifies whether to display the About portal section. */
    public var displayAbout: Bool?
    public var domainValidator: TenantDomainValidator?
    /** The Zendesk key. */
    public var zendeskKey: String?
    /** The tag manager ID. */
    public var tagManagerId: String?
    /** Specifies whether the cookie settings are enabled. */
    public var cookieSettingsEnabled: Bool
    /** Specifies whether the access to the space management is limited or not. */
    public var limitedAccessSpace: Bool?
    /** Specifies whether the access to the Developer Tools is limited for users or not. */
    public var limitedAccessDevToolsForUsers: Bool?
    /** Specifies whether to display the promotional banners. */
    public var displayBanners: Bool?
    /** Specifies whether AI functionality (chat, agents, vectorization) is enabled for the current tenant.  When `false`, all AI features are disabled and the AI Agents folder is hidden. */
    public var aiEnabled: Bool?
    /** The user name validation regex. */
    public var userNameRegex: String?
    /** The maximum number of invitations to the portal. */
    public var invitationLimit: Int?
    public var plugins: PluginsDto?
    public var deepLink: DeepLinkDto
    public var formGallery: FormGalleryDto?
    /** The maximum image upload size. */
    public var maxImageUploadSize: Int64?
    /** The white label logo text. */
    public var logoText: String?
    public var externalResources: CultureSpecificExternalResources?
    public var defaultFolderType: FolderType?
    /** Specifies if an external database is connected for storing form results. */
    public var externalDbEnabled: Bool?

    public init(timezone: String? = nil, trustedDomains: [String]? = nil, trustedDomainsType: TenantTrustedDomainsType? = nil, culture: String?, utcOffset: String? = nil, utcHoursOffset: Double? = nil, greetingSettings: String? = nil, ownerId: UUID? = nil, nameSchemaId: String? = nil, enabledJoin: Bool? = nil, enableAdmMess: Bool? = nil, thirdpartyEnable: Bool? = nil, docSpace: Bool? = nil, standalone: Bool? = nil, isAmi: Bool? = nil, baseDomain: String?, wizardToken: String? = nil, passwordHash: PasswordHasher? = nil, firebase: FirebaseDto? = nil, version: String? = nil, recaptchaType: RecaptchaType? = nil, recaptchaPublicKey: String? = nil, debugInfo: Bool? = nil, socketUrl: String? = nil, tenantStatus: TenantStatus? = nil, tenantAlias: String? = nil, displayAbout: Bool? = nil, domainValidator: TenantDomainValidator? = nil, zendeskKey: String? = nil, tagManagerId: String? = nil, cookieSettingsEnabled: Bool, limitedAccessSpace: Bool? = nil, limitedAccessDevToolsForUsers: Bool? = nil, displayBanners: Bool? = nil, aiEnabled: Bool? = nil, userNameRegex: String? = nil, invitationLimit: Int? = nil, plugins: PluginsDto? = nil, deepLink: DeepLinkDto, formGallery: FormGalleryDto? = nil, maxImageUploadSize: Int64? = nil, logoText: String? = nil, externalResources: CultureSpecificExternalResources? = nil, defaultFolderType: FolderType? = nil, externalDbEnabled: Bool? = nil) {
        self.timezone = timezone
        self.trustedDomains = trustedDomains
        self.trustedDomainsType = trustedDomainsType
        self.culture = culture
        self.utcOffset = utcOffset
        self.utcHoursOffset = utcHoursOffset
        self.greetingSettings = greetingSettings
        self.ownerId = ownerId
        self.nameSchemaId = nameSchemaId
        self.enabledJoin = enabledJoin
        self.enableAdmMess = enableAdmMess
        self.thirdpartyEnable = thirdpartyEnable
        self.docSpace = docSpace
        self.standalone = standalone
        self.isAmi = isAmi
        self.baseDomain = baseDomain
        self.wizardToken = wizardToken
        self.passwordHash = passwordHash
        self.firebase = firebase
        self.version = version
        self.recaptchaType = recaptchaType
        self.recaptchaPublicKey = recaptchaPublicKey
        self.debugInfo = debugInfo
        self.socketUrl = socketUrl
        self.tenantStatus = tenantStatus
        self.tenantAlias = tenantAlias
        self.displayAbout = displayAbout
        self.domainValidator = domainValidator
        self.zendeskKey = zendeskKey
        self.tagManagerId = tagManagerId
        self.cookieSettingsEnabled = cookieSettingsEnabled
        self.limitedAccessSpace = limitedAccessSpace
        self.limitedAccessDevToolsForUsers = limitedAccessDevToolsForUsers
        self.displayBanners = displayBanners
        self.aiEnabled = aiEnabled
        self.userNameRegex = userNameRegex
        self.invitationLimit = invitationLimit
        self.plugins = plugins
        self.deepLink = deepLink
        self.formGallery = formGallery
        self.maxImageUploadSize = maxImageUploadSize
        self.logoText = logoText
        self.externalResources = externalResources
        self.defaultFolderType = defaultFolderType
        self.externalDbEnabled = externalDbEnabled
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case timezone
        case trustedDomains
        case trustedDomainsType
        case culture
        case utcOffset
        case utcHoursOffset
        case greetingSettings
        case ownerId
        case nameSchemaId
        case enabledJoin
        case enableAdmMess
        case thirdpartyEnable
        case docSpace
        case standalone
        case isAmi
        case baseDomain
        case wizardToken
        case passwordHash
        case firebase
        case version
        case recaptchaType
        case recaptchaPublicKey
        case debugInfo
        case socketUrl
        case tenantStatus
        case tenantAlias
        case displayAbout
        case domainValidator
        case zendeskKey
        case tagManagerId
        case cookieSettingsEnabled
        case limitedAccessSpace
        case limitedAccessDevToolsForUsers
        case displayBanners
        case aiEnabled
        case userNameRegex
        case invitationLimit
        case plugins
        case deepLink
        case formGallery
        case maxImageUploadSize
        case logoText
        case externalResources
        case defaultFolderType
        case externalDbEnabled
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(timezone, forKey: .timezone)
        try container.encodeIfPresent(trustedDomains, forKey: .trustedDomains)
        try container.encodeIfPresent(trustedDomainsType, forKey: .trustedDomainsType)
        try container.encode(culture, forKey: .culture)
        try container.encodeIfPresent(utcOffset, forKey: .utcOffset)
        try container.encodeIfPresent(utcHoursOffset, forKey: .utcHoursOffset)
        try container.encodeIfPresent(greetingSettings, forKey: .greetingSettings)
        try container.encodeIfPresent(ownerId, forKey: .ownerId)
        try container.encodeIfPresent(nameSchemaId, forKey: .nameSchemaId)
        try container.encodeIfPresent(enabledJoin, forKey: .enabledJoin)
        try container.encodeIfPresent(enableAdmMess, forKey: .enableAdmMess)
        try container.encodeIfPresent(thirdpartyEnable, forKey: .thirdpartyEnable)
        try container.encodeIfPresent(docSpace, forKey: .docSpace)
        try container.encodeIfPresent(standalone, forKey: .standalone)
        try container.encodeIfPresent(isAmi, forKey: .isAmi)
        try container.encode(baseDomain, forKey: .baseDomain)
        try container.encodeIfPresent(wizardToken, forKey: .wizardToken)
        try container.encodeIfPresent(passwordHash, forKey: .passwordHash)
        try container.encodeIfPresent(firebase, forKey: .firebase)
        try container.encodeIfPresent(version, forKey: .version)
        try container.encodeIfPresent(recaptchaType, forKey: .recaptchaType)
        try container.encodeIfPresent(recaptchaPublicKey, forKey: .recaptchaPublicKey)
        try container.encodeIfPresent(debugInfo, forKey: .debugInfo)
        try container.encodeIfPresent(socketUrl, forKey: .socketUrl)
        try container.encodeIfPresent(tenantStatus, forKey: .tenantStatus)
        try container.encodeIfPresent(tenantAlias, forKey: .tenantAlias)
        try container.encodeIfPresent(displayAbout, forKey: .displayAbout)
        try container.encodeIfPresent(domainValidator, forKey: .domainValidator)
        try container.encodeIfPresent(zendeskKey, forKey: .zendeskKey)
        try container.encodeIfPresent(tagManagerId, forKey: .tagManagerId)
        try container.encode(cookieSettingsEnabled, forKey: .cookieSettingsEnabled)
        try container.encodeIfPresent(limitedAccessSpace, forKey: .limitedAccessSpace)
        try container.encodeIfPresent(limitedAccessDevToolsForUsers, forKey: .limitedAccessDevToolsForUsers)
        try container.encodeIfPresent(displayBanners, forKey: .displayBanners)
        try container.encodeIfPresent(aiEnabled, forKey: .aiEnabled)
        try container.encodeIfPresent(userNameRegex, forKey: .userNameRegex)
        try container.encodeIfPresent(invitationLimit, forKey: .invitationLimit)
        try container.encodeIfPresent(plugins, forKey: .plugins)
        try container.encode(deepLink, forKey: .deepLink)
        try container.encodeIfPresent(formGallery, forKey: .formGallery)
        try container.encodeIfPresent(maxImageUploadSize, forKey: .maxImageUploadSize)
        try container.encodeIfPresent(logoText, forKey: .logoText)
        try container.encodeIfPresent(externalResources, forKey: .externalResources)
        try container.encodeIfPresent(defaultFolderType, forKey: .defaultFolderType)
        try container.encodeIfPresent(externalDbEnabled, forKey: .externalDbEnabled)
    }
}

