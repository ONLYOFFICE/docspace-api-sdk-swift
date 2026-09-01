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
    /** The user ID. */
    public var userId: String?
    /** Specifies whether to disable a user or not. */
    public var disable: Bool?
    /** The user email address. */
    public var email: String?
    /** Specifies if this is a guest or a user. */
    public var isUser: Bool?
    /** The user first name. */
    public var firstName: String?
    /** The user last name. */
    public var lastName: String?
    /** The list of the user departments. */
    public var department: [UUID]?
    /** The user location. */
    public var location: String?
    /** The user comment. */
    public var comment: String?
    /** The list of the user contacts. */
    public var contacts: [Contact]?
    /** The user avatar photo URL. */
    public var files: String?
    /** Specifies if tips, updates and offers are allowed to be sent to the user or not. */
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

