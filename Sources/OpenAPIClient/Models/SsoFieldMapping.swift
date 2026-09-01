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

/** The SSO field mapping. */
public struct SsoFieldMapping: Sendable, Codable, Hashable {

    /** The first name. */
    public var firstName: String?
    /** The last name. */
    public var lastName: String?
    /** The email address. */
    public var email: String?
    /** The title. */
    public var title: String?
    /** The location. */
    public var location: String?
    /** The phone number. */
    public var phone: String?

    public init(firstName: String? = nil, lastName: String? = nil, email: String? = nil, title: String? = nil, location: String? = nil, phone: String? = nil) {
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.title = title
        self.location = location
        self.phone = phone
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case firstName
        case lastName
        case email
        case title
        case location
        case phone
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(firstName, forKey: .firstName)
        try container.encodeIfPresent(lastName, forKey: .lastName)
        try container.encodeIfPresent(email, forKey: .email)
        try container.encodeIfPresent(title, forKey: .title)
        try container.encodeIfPresent(location, forKey: .location)
        try container.encodeIfPresent(phone, forKey: .phone)
    }
}

