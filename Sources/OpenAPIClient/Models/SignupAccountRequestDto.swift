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

/** The request parameters for creating a third-party account. */
public struct SignupAccountRequestDto: Sendable, Codable, ParameterConvertible, Hashable {

    public var employeeType: EmployeeType?
    /** The user first name. */
    public var firstName: String?
    /** The user last name. */
    public var lastName: String?
    /** The user email address. */
    public var email: String?
    /** The user password hash. */
    public var passwordHash: String?
    /** The user link key. */
    public var key: String?
    /** The user culture code. */
    public var culture: String?
    /** The third-party profile in the serialized format */
    public var serializedProfile: String?

    public init(employeeType: EmployeeType? = nil, firstName: String? = nil, lastName: String? = nil, email: String? = nil, passwordHash: String? = nil, key: String?, culture: String? = nil, serializedProfile: String?) {
        self.employeeType = employeeType
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.passwordHash = passwordHash
        self.key = key
        self.culture = culture
        self.serializedProfile = serializedProfile
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case employeeType
        case firstName
        case lastName
        case email
        case passwordHash
        case key
        case culture
        case serializedProfile
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(employeeType, forKey: .employeeType)
        try container.encodeIfPresent(firstName, forKey: .firstName)
        try container.encodeIfPresent(lastName, forKey: .lastName)
        try container.encodeIfPresent(email, forKey: .email)
        try container.encodeIfPresent(passwordHash, forKey: .passwordHash)
        try container.encode(key, forKey: .key)
        try container.encodeIfPresent(culture, forKey: .culture)
        try container.encode(serializedProfile, forKey: .serializedProfile)
    }
}

