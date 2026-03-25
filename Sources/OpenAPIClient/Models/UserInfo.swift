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

/** The user information. */
public struct UserInfo: Sendable, Codable, Hashable {

    /** The user ID. */
    public var id: UUID?
    /** The user's first name. */
    public var firstName: String?
    /** The user's last name. */
    public var lastName: String?
    /** The user username. */
    public var userName: String?
    /** The user birthday. */
    public var birthDate: Date?
    /** The user sex (male or female). */
    public var sex: Bool?
    public var status: EmployeeStatus?
    public var activationStatus: EmployeeActivationStatus?
    /** The date and time when the user account was terminated. */
    public var terminatedDate: Date?
    /** The user title. */
    public var title: String?
    /** The user registration date. */
    public var workFromDate: Date?
    /** The user email address. */
    public var email: String?
    /** The list of user contacts in the string format. */
    public var contacts: String?
    /** The list of user contacts. */
    public var contactsList: [String]?
    /** The user location. */
    public var location: String?
    /** The user notes. */
    public var notes: String?
    /** Specifies if the user account was removed or not. */
    public var removed: Bool?
    /** The date and time when the user account was last modified. */
    public var lastModified: Date?
    /** The tenant ID. */
    public var tenantId: Int?
    /** Specifies if the user is active or not. */
    public var isActive: Bool?
    /** The user culture code. */
    public var cultureName: String?
    /** The user mobile phone. */
    public var mobilePhone: String?
    public var mobilePhoneActivationStatus: MobilePhoneActivationStatus?
    /** The LDAP user identifier. */
    public var sid: String?
    /** The LDAP user quota attribute. */
    public var ldapQouta: Int64?
    /** The SSO SAML user identifier. */
    public var ssoNameId: String?
    /** The SSO SAML user session identifier. */
    public var ssoSessionId: String?
    /** The date and time when the user account was created. */
    public var createDate: Date?
    /** The ID of the user who created the current user account. */
    public var createdBy: UUID?
    /** Specifies if tips, updates and offers are allowed to be sent to the user or not. */
    public var spam: Bool?
    /** Indicates whether the activation status of the employee or recipient is unchecked or inactive.  Depending on the context, this property evaluates the activation or eligibility status accordingly. */
    public var checkActivation: Bool?

    public init(id: UUID? = nil, firstName: String? = nil, lastName: String? = nil, userName: String? = nil, birthDate: Date? = nil, sex: Bool? = nil, status: EmployeeStatus? = nil, activationStatus: EmployeeActivationStatus? = nil, terminatedDate: Date? = nil, title: String? = nil, workFromDate: Date? = nil, email: String? = nil, contacts: String? = nil, contactsList: [String]? = nil, location: String? = nil, notes: String? = nil, removed: Bool? = nil, lastModified: Date? = nil, tenantId: Int? = nil, isActive: Bool? = nil, cultureName: String? = nil, mobilePhone: String? = nil, mobilePhoneActivationStatus: MobilePhoneActivationStatus? = nil, sid: String? = nil, ldapQouta: Int64? = nil, ssoNameId: String? = nil, ssoSessionId: String? = nil, createDate: Date? = nil, createdBy: UUID? = nil, spam: Bool? = nil, checkActivation: Bool? = nil) {
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.userName = userName
        self.birthDate = birthDate
        self.sex = sex
        self.status = status
        self.activationStatus = activationStatus
        self.terminatedDate = terminatedDate
        self.title = title
        self.workFromDate = workFromDate
        self.email = email
        self.contacts = contacts
        self.contactsList = contactsList
        self.location = location
        self.notes = notes
        self.removed = removed
        self.lastModified = lastModified
        self.tenantId = tenantId
        self.isActive = isActive
        self.cultureName = cultureName
        self.mobilePhone = mobilePhone
        self.mobilePhoneActivationStatus = mobilePhoneActivationStatus
        self.sid = sid
        self.ldapQouta = ldapQouta
        self.ssoNameId = ssoNameId
        self.ssoSessionId = ssoSessionId
        self.createDate = createDate
        self.createdBy = createdBy
        self.spam = spam
        self.checkActivation = checkActivation
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case firstName
        case lastName
        case userName
        case birthDate
        case sex
        case status
        case activationStatus
        case terminatedDate
        case title
        case workFromDate
        case email
        case contacts
        case contactsList
        case location
        case notes
        case removed
        case lastModified
        case tenantId
        case isActive
        case cultureName
        case mobilePhone
        case mobilePhoneActivationStatus
        case sid
        case ldapQouta
        case ssoNameId
        case ssoSessionId
        case createDate
        case createdBy
        case spam
        case checkActivation
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(firstName, forKey: .firstName)
        try container.encodeIfPresent(lastName, forKey: .lastName)
        try container.encodeIfPresent(userName, forKey: .userName)
        try container.encodeIfPresent(birthDate, forKey: .birthDate)
        try container.encodeIfPresent(sex, forKey: .sex)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(activationStatus, forKey: .activationStatus)
        try container.encodeIfPresent(terminatedDate, forKey: .terminatedDate)
        try container.encodeIfPresent(title, forKey: .title)
        try container.encodeIfPresent(workFromDate, forKey: .workFromDate)
        try container.encodeIfPresent(email, forKey: .email)
        try container.encodeIfPresent(contacts, forKey: .contacts)
        try container.encodeIfPresent(contactsList, forKey: .contactsList)
        try container.encodeIfPresent(location, forKey: .location)
        try container.encodeIfPresent(notes, forKey: .notes)
        try container.encodeIfPresent(removed, forKey: .removed)
        try container.encodeIfPresent(lastModified, forKey: .lastModified)
        try container.encodeIfPresent(tenantId, forKey: .tenantId)
        try container.encodeIfPresent(isActive, forKey: .isActive)
        try container.encodeIfPresent(cultureName, forKey: .cultureName)
        try container.encodeIfPresent(mobilePhone, forKey: .mobilePhone)
        try container.encodeIfPresent(mobilePhoneActivationStatus, forKey: .mobilePhoneActivationStatus)
        try container.encodeIfPresent(sid, forKey: .sid)
        try container.encodeIfPresent(ldapQouta, forKey: .ldapQouta)
        try container.encodeIfPresent(ssoNameId, forKey: .ssoNameId)
        try container.encodeIfPresent(ssoSessionId, forKey: .ssoSessionId)
        try container.encodeIfPresent(createDate, forKey: .createDate)
        try container.encodeIfPresent(createdBy, forKey: .createdBy)
        try container.encodeIfPresent(spam, forKey: .spam)
        try container.encodeIfPresent(checkActivation, forKey: .checkActivation)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension UserInfo: Identifiable {}
