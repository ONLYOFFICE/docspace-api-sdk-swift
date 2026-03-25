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
    public static let titleRule = StringRule(minLength: 0, maxLength: 255, pattern: nil)
    /** The user password. */
    public var password: String?
    /** The user password hash. */
    public var passwordHash: String?
    /** The user email address. */
    public var email: String?
    public var type: EmployeeType?
    /** Specifies if this is a guest or a user. */
    public var isUser: Bool?
    /** The user first name. */
    public var firstName: String?
    /** The user last name. */
    public var lastName: String?
    /** The list of the user departments IDs. */
    public var department: [UUID]?
    /** The user title. */
    public var title: String?
    /** The user location. */
    public var location: String?
    public var sex: SexEnum?
    public var birthday: ApiDateTime?
    public var worksfrom: ApiDateTime?
    /** The user comment. */
    public var comment: String?
    /** The list of the user contacts. */
    public var contacts: [Contact]?
    /** The avatar photo URL. */
    public var files: String?
    /** Specifies if the user is added via the invitation link or not. */
    public var fromInviteLink: Bool?
    /** The user key. */
    public var key: String?
    /** The user culture code. */
    public var cultureName: String?
    /** The user target ID. */
    public var target: UUID?
    /** Specifies if tips, updates and offers are allowed to be sent to the user or not. */
    public var spam: Bool?

    public init(password: String? = nil, passwordHash: String? = nil, email: String? = nil, type: EmployeeType? = nil, isUser: Bool? = nil, firstName: String? = nil, lastName: String? = nil, department: [UUID]? = nil, title: String? = nil, location: String? = nil, sex: SexEnum? = nil, birthday: ApiDateTime? = nil, worksfrom: ApiDateTime? = nil, comment: String? = nil, contacts: [Contact]? = nil, files: String? = nil, fromInviteLink: Bool? = nil, key: String? = nil, cultureName: String? = nil, target: UUID? = nil, spam: Bool? = nil) {
        self.password = password
        self.passwordHash = passwordHash
        self.email = email
        self.type = type
        self.isUser = isUser
        self.firstName = firstName
        self.lastName = lastName
        self.department = department
        self.title = title
        self.location = location
        self.sex = sex
        self.birthday = birthday
        self.worksfrom = worksfrom
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
        case title
        case location
        case sex
        case birthday
        case worksfrom
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
        try container.encodeIfPresent(title, forKey: .title)
        try container.encodeIfPresent(location, forKey: .location)
        try container.encodeIfPresent(sex, forKey: .sex)
        try container.encodeIfPresent(birthday, forKey: .birthday)
        try container.encodeIfPresent(worksfrom, forKey: .worksfrom)
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

