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

/** The request parameters for updating the user information. */
public struct UpdateMemberRequestDto: Sendable, Codable, Hashable {

    public static let emailRule = StringRule(minLength: 0, maxLength: 255, pattern: nil)
    public static let firstNameRule = StringRule(minLength: 0, maxLength: 255, pattern: nil)
    public static let lastNameRule = StringRule(minLength: 0, maxLength: 255, pattern: nil)
    /** The account the change applies to. It is read from this body by `POST api/2.0/people/email`, while  `PUT api/2.0/people/{userid}` takes the account from the route and ignores this field. */
    public var userId: String?
    /** Set it to true to give the account the `Terminated` status and end every session it has, and to false to  bring it back. It is applied only when the caller edits somebody else, and omitting it keeps the current  status. */
    public var disable: Bool?
    /** The new email address, up to 255 characters. It is read only by `POST api/2.0/people/email`, which either  mails a confirmation letter or, for an administrator acting on somebody else, applies the address at once;  `PUT api/2.0/people/{userid}` ignores it. */
    public var email: String?
    /** Set it to true to turn the account into a guest and to false to turn it back into a member. Either direction  takes a seat and can answer 402, it is applied only when the caller edits somebody else, and a request to  make the portal owner, a DocSpace administrator or a module administrator a guest is ignored. */
    public var isUser: Bool?
    /** The new first name, up to 255 characters. It is applied only to the caller's own profile, is left alone on an  LDAP or SSO account, and a pair the portal does not accept as a name answers 400. */
    public var firstName: String?
    /** The new last name, up to 255 characters. It is applied only to the caller's own profile, is left alone on an  LDAP or SSO account, and a pair the portal does not accept as a name answers 400. */
    public var lastName: String?
    /** The groups the profile should belong to, by group ID, replacing the current ones. It is applied only to the  caller's own profile. */
    public var department: [UUID]?
    /** The new free-text location shown on the profile. It is applied only to the caller's own profile and is left  alone on an LDAP or SSO account. */
    public var location: String?
    /** The new free-text note kept with the profile. It is applied only to the caller's own profile. */
    public var comment: String?
    /** The additional ways to reach the person, replacing the current ones. Each entry is a free-text type such as  `email`, `phone`, `skype` or `telegram` and its value, an entry with an empty value is dropped, and the field  is applied only to the caller's own profile. */
    public var contacts: [Contact]?
    /** The address the portal downloads the new avatar from. It is applied only to the caller's own profile, has to  use HTTPS unless the request itself came over HTTP, and passing the address the profile already uses  downloads nothing. */
    public var files: String?
    /** Whether the account agrees to receive tips, updates and offers. It is applied only to the caller's own  profile, and omitting it on such a request stores false rather than keeping the current value. */
    public var spam: Bool?

    public init(userId: String? = nil, disable: Bool? = nil, email: String? = nil, isUser: Bool? = nil, firstName: String? = nil, lastName: String? = nil, department: [UUID]? = nil, location: String? = nil, comment: String? = nil, contacts: [Contact]? = nil, files: String? = nil, spam: Bool? = nil) {
        self.userId = userId
        self.disable = disable
        self.email = email
        self.isUser = isUser
        self.firstName = firstName
        self.lastName = lastName
        self.department = department
        self.location = location
        self.comment = comment
        self.contacts = contacts
        self.files = files
        self.spam = spam
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case userId
        case disable
        case email
        case isUser
        case firstName
        case lastName
        case department
        case location
        case comment
        case contacts
        case files
        case spam
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(userId, forKey: .userId)
        try container.encodeIfPresent(disable, forKey: .disable)
        try container.encodeIfPresent(email, forKey: .email)
        try container.encodeIfPresent(isUser, forKey: .isUser)
        try container.encodeIfPresent(firstName, forKey: .firstName)
        try container.encodeIfPresent(lastName, forKey: .lastName)
        try container.encodeIfPresent(department, forKey: .department)
        try container.encodeIfPresent(location, forKey: .location)
        try container.encodeIfPresent(comment, forKey: .comment)
        try container.encodeIfPresent(contacts, forKey: .contacts)
        try container.encodeIfPresent(files, forKey: .files)
        try container.encodeIfPresent(spam, forKey: .spam)
    }
}

