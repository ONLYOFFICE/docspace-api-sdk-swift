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

/** The user request parameters. */
public struct MemberRequestDto: Sendable, Codable, Hashable {

    public static let emailRule = StringRule(minLength: 0, maxLength: 255, pattern: nil)
    public static let firstNameRule = StringRule(minLength: 0, maxLength: 255, pattern: nil)
    public static let lastNameRule = StringRule(minLength: 0, maxLength: 255, pattern: nil)
    /** The password in plain text. It is checked against the portal password policy and rejected with 400 when it is  too weak. When neither this field nor `passwordHash` is sent, a random password is generated and nobody  learns it, so the account can only be used after a password recovery. */
    public var password: String?
    /** The password already hashed by the client, which is what the portal stores. It is a PBKDF2-HMACSHA256 hash of  the plain password, computed with the salt, the iteration count and the key size the portal settings publish,  and written as lowercase hexadecimal. When it is sent, `password` is ignored and the password policy is not  applied. */
    public var passwordHash: String?
    /** The email address of the new account, up to 255 characters. It is required in practice and has to be a real  address, and it becomes the sign-in name of the account. */
    public var email: String?
    /** The type of the new account: `User`, `RoomAdmin` or `DocSpaceAdmin`. `Guest` is not accepted here, and the  value is ignored entirely when `fromInviteLink` is set, because the invitation link decides the type. When no  paid seat is free, the account is created as `User` whatever was asked for. */
    public var type: EmployeeType?
    /** Only chooses which entry the operation writes to the audit trail - the one for a guest or the one for a  member. It does not change the type of the account; `type` and the invitation link do that. */
    public var isUser: Bool?
    /** The first name, up to 255 characters. It is checked together with `lastName`, and a pair the portal does not  accept as a name answers 400. */
    public var firstName: String?
    /** The last name, up to 255 characters. It is checked together with `firstName`, and a pair the portal does not  accept as a name answers 400. */
    public var lastName: String?
    /** The groups to put the new account into, by group ID. Read the IDs from `GET api/2.0/group`; an ID that  matches no group is skipped without an error. */
    public var department: [UUID]?
    /** The free-text location shown on the profile. It is stored as it is given and is not validated. */
    public var location: String?
    /** The free-text note kept with the profile, shown to administrators. It is stored as it is given. */
    public var comment: String?
    /** The additional ways to reach the person, each as a type and a value pair. The type is a free-text label such  as `email`, `phone`, `skype` or `telegram`, and an entry with an empty value is dropped. */
    public var contacts: [Contact]?
    /** The address the portal downloads the avatar from. It has to use HTTPS unless the request itself came over  HTTP, an address the portal refuses to fetch is rejected, and passing the default avatar path means no  avatar is downloaded. */
    public var files: String?
    /** Set it to true when the account is created by somebody accepting an invitation, which makes `key` required  and lets the link decide the type. With the default false the caller has to hold the permission to add an  account of the requested type. */
    public var fromInviteLink: Bool?
    /** The key of the invitation link being accepted, taken from the link itself. It is read only when  `fromInviteLink` is true, and an expired or already used key answers 403. */
    public var key: String?
    /** The interface language of the new account, as a culture code. It is applied whether or not the portal has  that culture enabled, so send a code the portal supports. */
    public var cultureName: String?
    /** Not used. The handler reads nothing from this field, and it is kept only so that existing clients keep  working. */
    public var target: UUID?
    /** Whether the account agrees to receive tips, updates and offers. It defaults to false, which means no such  mail is sent. */
    public var spam: Bool?

    public init(password: String? = nil, passwordHash: String? = nil, email: String? = nil, type: EmployeeType? = nil, isUser: Bool? = nil, firstName: String? = nil, lastName: String? = nil, department: [UUID]? = nil, location: String? = nil, comment: String? = nil, contacts: [Contact]? = nil, files: String? = nil, fromInviteLink: Bool? = nil, key: String? = nil, cultureName: String? = nil, target: UUID? = nil, spam: Bool? = nil) {
        self.password = password
        self.passwordHash = passwordHash
        self.email = email
        self.type = type
        self.isUser = isUser
        self.firstName = firstName
        self.lastName = lastName
        self.department = department
        self.location = location
        self.comment = comment
        self.contacts = contacts
        self.files = files
        self.fromInviteLink = fromInviteLink
        self.key = key
        self.cultureName = cultureName
        self.target = target
        self.spam = spam
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case password
        case passwordHash
        case email
        case type
        case isUser
        case firstName
        case lastName
        case department
        case location
        case comment
        case contacts
        case files
        case fromInviteLink
        case key
        case cultureName
        case target
        case spam
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(password, forKey: .password)
        try container.encodeIfPresent(passwordHash, forKey: .passwordHash)
        try container.encodeIfPresent(email, forKey: .email)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(isUser, forKey: .isUser)
        try container.encodeIfPresent(firstName, forKey: .firstName)
        try container.encodeIfPresent(lastName, forKey: .lastName)
        try container.encodeIfPresent(department, forKey: .department)
        try container.encodeIfPresent(location, forKey: .location)
        try container.encodeIfPresent(comment, forKey: .comment)
        try container.encodeIfPresent(contacts, forKey: .contacts)
        try container.encodeIfPresent(files, forKey: .files)
        try container.encodeIfPresent(fromInviteLink, forKey: .fromInviteLink)
        try container.encodeIfPresent(key, forKey: .key)
        try container.encodeIfPresent(cultureName, forKey: .cultureName)
        try container.encodeIfPresent(target, forKey: .target)
        try container.encodeIfPresent(spam, forKey: .spam)
    }
}

