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

/** The general configuration of the current portal, as the client shell needs it before and after sign-in. */
public struct SettingsDto: Sendable, Codable, Hashable {

    /** The portal time zone as an IANA identifier, which is the zone every date this API returns in portal time  is expressed in. Filled in for a signed-in caller only. */
    public var timezone: String?
    /** The mail domains a new member may register or be invited from without confirming the address. It is filled  in for a signed-in caller, and for an anonymous one only while `enabledJoin` is `true`; it is empty  whenever `trustedDomainsType` is not `Custom`. */
    public var trustedDomains: [String]?
    /** How the mail domains above are applied: no domain trusted, every domain trusted, or only the listed ones.  Filled in under the same conditions as `trustedDomains`. */
    public var trustedDomainsType: TenantTrustedDomainsType?
    /** The default language of the portal as a culture name, which is what unauthenticated pages are rendered in.  A signed-in member may have a language of their own, and that one is not reported here. */
    public var culture: String?
    /** The portal's offset from UTC as a time span, positive east of UTC. Filled in for a signed-in caller only,  and taken at the moment of the call, so it already reflects daylight saving time. */
    public var utcOffset: String?
    /** The same offset in hours, fractional for a zone that is not on a whole hour. It is there so a client does  not have to parse `utcOffset`. */
    public var utcHoursOffset: Double?
    /** The portal title shown on the login page and in letters. It falls back to the product name in the portal  language while the portal has been given no title of its own. */
    public var greetingSettings: String?
    /** The portal owner, the one account that cannot be removed or demoted. Filled in for a signed-in caller  only, and the empty GUID for an anonymous one. */
    public var ownerId: UUID?
    /** The naming scheme the portal uses for its own vocabulary - what a member, a group or a room is called in  the interface. `GET api/2.0/settings/customschemas/{id}` spells that vocabulary out. Filled in for a  signed-in caller only. */
    public var nameSchemaId: String?
    /** Whether someone who is not invited may still register, which is the case when the portal trusts every mail  domain or a list of them. It is computed for an anonymous caller only and left out entirely for a  signed-in one, so a missing value is not a `false`. */
    public var enabledJoin: Bool?
    /** Whether the login page may offer the form for writing to the portal administrators. It is also `true`  while the portal's payment has lapsed, whatever the setting says, so it can be set on a portal where an  administrator switched the form off. */
    public var enableAdmMess: Bool?
    /** Whether the login page may offer sign-in through an external identity provider. It is computed for an  anonymous caller only; `GET api/2.0/capabilities` reports the same thing with the list of providers. */
    public var thirdpartyEnable: Bool?
    /** Always `true` in this product. It exists so a client that also talks to older ONLYOFFICE portals can tell  them apart, and is not a feature switch. */
    public var docSpace: Bool?
    /** Whether this is a server installation someone administers themselves rather than a portal in the cloud.  Several fields below and a number of operations behave differently in the two, so a client that has to  branch on the deployment reads it here. */
    public var standalone: Bool?
    /** Whether the installation runs from an Amazon machine image, which is a server installation that can read  its own instance metadata. It is `false` on every cloud portal. */
    public var isAmi: Bool?
    /** The domain new portals of this installation are created under, which is what a portal name is checked  against and appended to. It is empty on an installation that serves a single portal on a fixed address. */
    public var baseDomain: String?
    /** The token that authorizes the first-run setup wizard. It is handed out to anonymous callers only, and only  while the wizard has not been completed; once it has, the field stays empty for good. */
    public var wizardToken: String?
    /** The parameters for hashing a password in the client before it is sent - the salt, the iteration count and  the hash size. It is filled in for an anonymous caller and, for a signed-in one, only when  `withPassword=true` is asked for. Hash with exactly these parameters and send the result as  `passwordHash`, since the portal cannot reproduce the hash from a different set. */
    public var passwordHash: PasswordHasher?
    /** The Firebase project a mobile or web client sends push registrations to. Filled in for a signed-in caller  only, and its own fields are empty strings on an installation that configures no Firebase project. */
    public var firebase: FirebaseDto?
    /** The product version of the portal, empty when the installation does not publish one. It is the version of  the server, not of this API, whose own version is fixed at 2.0. */
    public var version: String?
    /** Which CAPTCHA the login form has to render, decided by the installation's configuration. Computed for an  anonymous caller only. */
    public var recaptchaType: RecaptchaType?
    /** The site key for the CAPTCHA named by `recaptchaType`, safe to embed in a page. It is empty when the  installation configures no CAPTCHA, in which case the login form asks for none. */
    public var recaptchaPublicKey: String?
    /** Whether the client may collect and send diagnostic information. Filled in for a signed-in caller only, and  `false` unless the installation switched it on. */
    public var debugInfo: Bool?
    /** The address of the socket service that pushes live updates to a client. It is filled in for a signed-in  caller and for an anonymous one who arrives with an external sharing link, and is empty when the  installation runs no socket service - a client then has to poll. */
    public var socketUrl: String?
    /** The lifecycle state of the portal. Anything other than active means most operations are refused for the  moment, because the portal is being transferred, restored, encrypted or removed. */
    public var tenantStatus: TenantStatus?
    /** The portal's own name within the installation, which together with `baseDomain` forms the address it is  reached at. `PUT api/2.0/portal/portalrename` changes it. */
    public var tenantAlias: String?
    /** Whether the interface may show the About page. A cloud portal always may; a server installation may unless  its plan includes branding and the vendor details hide the page. */
    public var displayAbout: Bool?
    /** The rules a portal name is checked against - its length limits and the pattern it has to match - so a  client can validate a rename before sending it. Filled in for a signed-in caller only. */
    public var domainValidator: TenantDomainValidator?
    /** The key that lets the client open the vendor's support chat, empty when the installation configures none.  Filled in for a signed-in caller only. */
    public var zendeskKey: String?
    /** The Google Tag Manager container the client should load, empty when the installation configures none.  Filled in for a signed-in caller only. */
    public var tagManagerId: String?
    /** Whether the portal limits how long an authentication session stays valid. The limit itself is read with  `GET api/2.0/settings/cookiesettings`; while this is `false` a session is honoured for a year. */
    public var cookieSettingsEnabled: Bool
    /** Whether the space-management section is restricted to the portal owner. Filled in for a signed-in caller  only. */
    public var limitedAccessSpace: Bool?
    /** Whether the Developer Tools section is hidden from members who are not administrators. Filled in for a  signed-in caller only. */
    public var limitedAccessDevToolsForUsers: Bool?
    /** Whether the interface may show the vendor's promotional banners. A cloud portal always reports `true`; on  a server installation it follows the banner setting. Filled in for a signed-in caller only. */
    public var displayBanners: Bool?
    /** Whether the AI features - chat, agents and vectorisation - may be used on this portal. While it is  `false` the AI Agents folder is hidden and the AI operations are refused. Filled in for a signed-in caller  only. */
    public var aiEnabled: Bool?
    /** Whether the portal wallet has already dropped below its low-balance threshold, so a client can warn about  AI operations being cut off. It is reported to DocSpace administrators only and left empty for everyone  else, which is not the same as a healthy balance. */
    public var walletLowBalance: Bool?
    /** The pattern a member's first and last name has to match, so a client can validate a name before sending  it. It is a .NET regular expression and is applied to each name part separately. */
    public var userNameRegex: String?
    /** How many invitations the portal may still send in the current window. Filled in for a signed-in caller  only, and set to the maximum value of a 32-bit integer on an installation that limits nothing. */
    public var invitationLimit: Int?
    /** What the installation allows to be done with web plugins. Filled in for a signed-in caller only, with all  three flags `false` unless the installation switched plugins on. */
    public var plugins: PluginsDto?
    /** What a mobile client needs to hand a document link over to the installed application instead of opening it  in the browser. Its fields are empty strings when the installation configures no application. */
    public var deepLink: DeepLinkDto
    /** Where the ready-made form templates are served from and which extension they carry. Filled in for a  signed-in caller only. */
    public var formGallery: FormGalleryDto?
    /** The largest image the portal accepts as a logo or an avatar, in bytes. Filled in for a signed-in caller  only, and a larger upload is refused rather than resized. */
    public var maxImageUploadSize: Int64?
    /** The wordmark to print next to the portal logo. It falls back to the built-in one while the portal has  stored no text of its own, so it is never empty. */
    public var logoText: String?
    /** The addresses of the vendor's help, support, forum and video resources, already picked for the portal  language. An entry is missing when the installation configures no address for it or the resource is  switched off, which `GET api/2.0/settings/rebranding/additional` reports flag by flag. */
    public var externalResources: CultureSpecificExternalResources?
    /** The section the client should open after sign-in, which is the caller's own preference rather than a  portal-wide one. Filled in for a signed-in caller only. */
    public var defaultFolderType: FolderType?
    /** Whether the installation has an external database wired up for form results, without which the operations  that write form results there are refused. Filled in for a signed-in caller only. */
    public var externalDbEnabled: Bool?

    public init(timezone: String? = nil, trustedDomains: [String]? = nil, trustedDomainsType: TenantTrustedDomainsType? = nil, culture: String?, utcOffset: String? = nil, utcHoursOffset: Double? = nil, greetingSettings: String? = nil, ownerId: UUID? = nil, nameSchemaId: String? = nil, enabledJoin: Bool? = nil, enableAdmMess: Bool? = nil, thirdpartyEnable: Bool? = nil, docSpace: Bool? = nil, standalone: Bool? = nil, isAmi: Bool? = nil, baseDomain: String?, wizardToken: String? = nil, passwordHash: PasswordHasher? = nil, firebase: FirebaseDto? = nil, version: String? = nil, recaptchaType: RecaptchaType? = nil, recaptchaPublicKey: String? = nil, debugInfo: Bool? = nil, socketUrl: String? = nil, tenantStatus: TenantStatus? = nil, tenantAlias: String? = nil, displayAbout: Bool? = nil, domainValidator: TenantDomainValidator? = nil, zendeskKey: String? = nil, tagManagerId: String? = nil, cookieSettingsEnabled: Bool, limitedAccessSpace: Bool? = nil, limitedAccessDevToolsForUsers: Bool? = nil, displayBanners: Bool? = nil, aiEnabled: Bool? = nil, walletLowBalance: Bool? = nil, userNameRegex: String? = nil, invitationLimit: Int? = nil, plugins: PluginsDto? = nil, deepLink: DeepLinkDto, formGallery: FormGalleryDto? = nil, maxImageUploadSize: Int64? = nil, logoText: String? = nil, externalResources: CultureSpecificExternalResources? = nil, defaultFolderType: FolderType? = nil, externalDbEnabled: Bool? = nil) {
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
        self.walletLowBalance = walletLowBalance
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
        case walletLowBalance
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
        try container.encodeIfPresent(walletLowBalance, forKey: .walletLowBalance)
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

