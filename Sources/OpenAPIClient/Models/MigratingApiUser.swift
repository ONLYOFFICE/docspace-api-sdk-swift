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

public struct MigratingApiUser: Sendable, Codable, Hashable {

    public var shouldImport: Bool?
    public var key: String?
    public var email: String?
    public var displayName: String?
    public var firstName: String?
    public var lastName: String?
    public var userType: EmployeeType?
    public var migratingFiles: MigratingApiFiles?

    public init(shouldImport: Bool? = nil, key: String? = nil, email: String? = nil, displayName: String? = nil, firstName: String? = nil, lastName: String? = nil, userType: EmployeeType? = nil, migratingFiles: MigratingApiFiles? = nil) {
        self.shouldImport = shouldImport
        self.key = key
        self.email = email
        self.displayName = displayName
        self.firstName = firstName
        self.lastName = lastName
        self.userType = userType
        self.migratingFiles = migratingFiles
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case shouldImport
        case key
        case email
        case displayName
        case firstName
        case lastName
        case userType
        case migratingFiles
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(shouldImport, forKey: .shouldImport)
        try container.encodeIfPresent(key, forKey: .key)
        try container.encodeIfPresent(email, forKey: .email)
        try container.encodeIfPresent(displayName, forKey: .displayName)
        try container.encodeIfPresent(firstName, forKey: .firstName)
        try container.encodeIfPresent(lastName, forKey: .lastName)
        try container.encodeIfPresent(userType, forKey: .userType)
        try container.encodeIfPresent(migratingFiles, forKey: .migratingFiles)
    }
}

