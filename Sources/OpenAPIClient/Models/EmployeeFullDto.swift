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

/** The full list of user parameters. */
public struct EmployeeFullDto: Sendable, Codable, Hashable {

    /** The user ID. */
    public var id: UUID?
    /** The HTML-encoded user's display name formatted according to the default format for the current culture. */
    public var displayName: String?
    /** The user title. */
    public var title: String?
    /** The user avatar. */
    public var avatar: String?
    /** The user original size avatar. */
    public var avatarOriginal: String?
    /** The user maximum size avatar. */
    public var avatarMax: String?
    /** The user medium size avatar. */
    public var avatarMedium: String?
    /** The user small size avatar. */
    public var avatarSmall: String?
    /** The user profile URL. */
    public var profileUrl: String?
    /** Specifies if the user has an avatar or not. */
    public var hasAvatar: Bool?
    /** Specifies if the user is anonymous or not. */
    public var isAnonim: Bool?
    /** The user first name. */
    public var firstName: String?
    /** The user last name. */
    public var lastName: String?
    /** The user username. */
    public var userName: String?
    /** The user email. */
    public var email: String?
    /** The list of user contacts. */
    public var contacts: [Contact]?
    public var birthday: ApiDateTime?
    /** The user sex. */
    public var sex: String?
    public var status: EmployeeStatus?
    public var activationStatus: EmployeeActivationStatus?
    public var terminated: ApiDateTime?
    /** The user department. */
    public var department: String?
    public var workFrom: ApiDateTime?
    /** The list of user groups. */
    public var groups: [GroupSummaryDto]?
    /** The user location. */
    public var location: String?
    /** The user notes. */
    public var notes: String?
    /** Specifies if the user is an administrator or not. */
    public var isAdmin: Bool?
    /** Specifies if the user is a room administrator or not. */
    public var isRoomAdmin: Bool?
    /** Specifies if the LDAP settings are enabled for the user or not. */
    public var isLDAP: Bool?
    /** The list of the administrator modules. */
    public var listAdminModules: [String]?
    /** Specifies if the user is a portal owner or not. */
    public var isOwner: Bool?
    /** Specifies if the user is a portal visitor or not. */
    public var isVisitor: Bool?
    /** Specifies if the user is a portal collaborator or not. */
    public var isCollaborator: Bool?
    /** The user culture code. */
    public var cultureName: String?
    /** The user mobile phone number. */
    public var mobilePhone: String?
    public var mobilePhoneActivationStatus: MobilePhoneActivationStatus?
    /** Specifies if the SSO settings are enabled for the user or not. */
    public var isSSO: Bool?
    public var theme: DarkThemeSettingsType?
    /** The user quota limit. */
    public var quotaLimit: Int64?
    /** The portal used space of the user. */
    public var usedSpace: Double?
    /** Specifies if the user has access rights. */
    public var shared: Bool?
    /** Specifies if the user has a custom quota or not. */
    public var isCustomQuota: Bool?
    /** The current login event ID. */
    public var loginEventId: Int?
    /** The auth cookie lifetime in seconds. */
    public var authCookieLifetime: Double?
    public var createdBy: EmployeeDto?
    public var registrationDate: ApiDateTime?
    /** Specifies if the user has a personal folder or not. */
    public var hasPersonalFolder: Bool?
    /** Indicates whether the user has enabled two-factor authentication (TFA) using an authentication app. */
    public var tfaAppEnabled: Bool?

    public init(id: UUID? = nil, displayName: String? = nil, title: String? = nil, avatar: String? = nil, avatarOriginal: String? = nil, avatarMax: String? = nil, avatarMedium: String? = nil, avatarSmall: String? = nil, profileUrl: String? = nil, hasAvatar: Bool? = nil, isAnonim: Bool? = nil, firstName: String? = nil, lastName: String? = nil, userName: String? = nil, email: String? = nil, contacts: [Contact]? = nil, birthday: ApiDateTime? = nil, sex: String? = nil, status: EmployeeStatus? = nil, activationStatus: EmployeeActivationStatus? = nil, terminated: ApiDateTime? = nil, department: String? = nil, workFrom: ApiDateTime? = nil, groups: [GroupSummaryDto]? = nil, location: String? = nil, notes: String? = nil, isAdmin: Bool? = nil, isRoomAdmin: Bool? = nil, isLDAP: Bool? = nil, listAdminModules: [String]? = nil, isOwner: Bool? = nil, isVisitor: Bool? = nil, isCollaborator: Bool? = nil, cultureName: String? = nil, mobilePhone: String? = nil, mobilePhoneActivationStatus: MobilePhoneActivationStatus? = nil, isSSO: Bool? = nil, theme: DarkThemeSettingsType? = nil, quotaLimit: Int64? = nil, usedSpace: Double? = nil, shared: Bool? = nil, isCustomQuota: Bool? = nil, loginEventId: Int? = nil, authCookieLifetime: Double? = nil, createdBy: EmployeeDto? = nil, registrationDate: ApiDateTime? = nil, hasPersonalFolder: Bool? = nil, tfaAppEnabled: Bool? = nil) {
        self.id = id
        self.displayName = displayName
        self.title = title
        self.avatar = avatar
        self.avatarOriginal = avatarOriginal
        self.avatarMax = avatarMax
        self.avatarMedium = avatarMedium
        self.avatarSmall = avatarSmall
        self.profileUrl = profileUrl
        self.hasAvatar = hasAvatar
        self.isAnonim = isAnonim
        self.firstName = firstName
        self.lastName = lastName
        self.userName = userName
        self.email = email
        self.contacts = contacts
        self.birthday = birthday
        self.sex = sex
        self.status = status
        self.activationStatus = activationStatus
        self.terminated = terminated
        self.department = department
        self.workFrom = workFrom
        self.groups = groups
        self.location = location
        self.notes = notes
        self.isAdmin = isAdmin
        self.isRoomAdmin = isRoomAdmin
        self.isLDAP = isLDAP
        self.listAdminModules = listAdminModules
        self.isOwner = isOwner
        self.isVisitor = isVisitor
        self.isCollaborator = isCollaborator
        self.cultureName = cultureName
        self.mobilePhone = mobilePhone
        self.mobilePhoneActivationStatus = mobilePhoneActivationStatus
        self.isSSO = isSSO
        self.theme = theme
        self.quotaLimit = quotaLimit
        self.usedSpace = usedSpace
        self.shared = shared
        self.isCustomQuota = isCustomQuota
        self.loginEventId = loginEventId
        self.authCookieLifetime = authCookieLifetime
        self.createdBy = createdBy
        self.registrationDate = registrationDate
        self.hasPersonalFolder = hasPersonalFolder
        self.tfaAppEnabled = tfaAppEnabled
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case displayName
        case title
        case avatar
        case avatarOriginal
        case avatarMax
        case avatarMedium
        case avatarSmall
        case profileUrl
        case hasAvatar
        case isAnonim
        case firstName
        case lastName
        case userName
        case email
        case contacts
        case birthday
        case sex
        case status
        case activationStatus
        case terminated
        case department
        case workFrom
        case groups
        case location
        case notes
        case isAdmin
        case isRoomAdmin
        case isLDAP
        case listAdminModules
        case isOwner
        case isVisitor
        case isCollaborator
        case cultureName
        case mobilePhone
        case mobilePhoneActivationStatus
        case isSSO
        case theme
        case quotaLimit
        case usedSpace
        case shared
        case isCustomQuota
        case loginEventId
        case authCookieLifetime
        case createdBy
        case registrationDate
        case hasPersonalFolder
        case tfaAppEnabled
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(displayName, forKey: .displayName)
        try container.encodeIfPresent(title, forKey: .title)
        try container.encodeIfPresent(avatar, forKey: .avatar)
        try container.encodeIfPresent(avatarOriginal, forKey: .avatarOriginal)
        try container.encodeIfPresent(avatarMax, forKey: .avatarMax)
        try container.encodeIfPresent(avatarMedium, forKey: .avatarMedium)
        try container.encodeIfPresent(avatarSmall, forKey: .avatarSmall)
        try container.encodeIfPresent(profileUrl, forKey: .profileUrl)
        try container.encodeIfPresent(hasAvatar, forKey: .hasAvatar)
        try container.encodeIfPresent(isAnonim, forKey: .isAnonim)
        try container.encodeIfPresent(firstName, forKey: .firstName)
        try container.encodeIfPresent(lastName, forKey: .lastName)
        try container.encodeIfPresent(userName, forKey: .userName)
        try container.encodeIfPresent(email, forKey: .email)
        try container.encodeIfPresent(contacts, forKey: .contacts)
        try container.encodeIfPresent(birthday, forKey: .birthday)
        try container.encodeIfPresent(sex, forKey: .sex)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(activationStatus, forKey: .activationStatus)
        try container.encodeIfPresent(terminated, forKey: .terminated)
        try container.encodeIfPresent(department, forKey: .department)
        try container.encodeIfPresent(workFrom, forKey: .workFrom)
        try container.encodeIfPresent(groups, forKey: .groups)
        try container.encodeIfPresent(location, forKey: .location)
        try container.encodeIfPresent(notes, forKey: .notes)
        try container.encodeIfPresent(isAdmin, forKey: .isAdmin)
        try container.encodeIfPresent(isRoomAdmin, forKey: .isRoomAdmin)
        try container.encodeIfPresent(isLDAP, forKey: .isLDAP)
        try container.encodeIfPresent(listAdminModules, forKey: .listAdminModules)
        try container.encodeIfPresent(isOwner, forKey: .isOwner)
        try container.encodeIfPresent(isVisitor, forKey: .isVisitor)
        try container.encodeIfPresent(isCollaborator, forKey: .isCollaborator)
        try container.encodeIfPresent(cultureName, forKey: .cultureName)
        try container.encodeIfPresent(mobilePhone, forKey: .mobilePhone)
        try container.encodeIfPresent(mobilePhoneActivationStatus, forKey: .mobilePhoneActivationStatus)
        try container.encodeIfPresent(isSSO, forKey: .isSSO)
        try container.encodeIfPresent(theme, forKey: .theme)
        try container.encodeIfPresent(quotaLimit, forKey: .quotaLimit)
        try container.encodeIfPresent(usedSpace, forKey: .usedSpace)
        try container.encodeIfPresent(shared, forKey: .shared)
        try container.encodeIfPresent(isCustomQuota, forKey: .isCustomQuota)
        try container.encodeIfPresent(loginEventId, forKey: .loginEventId)
        try container.encodeIfPresent(authCookieLifetime, forKey: .authCookieLifetime)
        try container.encodeIfPresent(createdBy, forKey: .createdBy)
        try container.encodeIfPresent(registrationDate, forKey: .registrationDate)
        try container.encodeIfPresent(hasPersonalFolder, forKey: .hasPersonalFolder)
        try container.encodeIfPresent(tfaAppEnabled, forKey: .tfaAppEnabled)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension EmployeeFullDto: Identifiable {}
