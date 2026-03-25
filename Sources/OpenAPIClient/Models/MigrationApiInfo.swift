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

public struct MigrationApiInfo: Sendable, Codable, Hashable {

    public var migratorName: String?
    public var operation: String?
    public var failedArchives: [String]?
    public var users: [MigratingApiUser]?
    public var withoutEmailUsers: [MigratingApiUser]?
    public var existUsers: [MigratingApiUser]?
    public var groups: [MigratingApiGroup]?
    public var importPersonalFiles: Bool?
    public var importSharedFiles: Bool?
    public var importSharedFolders: Bool?
    public var importCommonFiles: Bool?
    public var importProjectFiles: Bool?
    public var importGroups: Bool?
    public var successedUsers: Int?
    public var failedUsers: Int?
    public var files: [String]?
    public var errors: [String]?

    public init(migratorName: String? = nil, operation: String? = nil, failedArchives: [String]? = nil, users: [MigratingApiUser]? = nil, withoutEmailUsers: [MigratingApiUser]? = nil, existUsers: [MigratingApiUser]? = nil, groups: [MigratingApiGroup]? = nil, importPersonalFiles: Bool? = nil, importSharedFiles: Bool? = nil, importSharedFolders: Bool? = nil, importCommonFiles: Bool? = nil, importProjectFiles: Bool? = nil, importGroups: Bool? = nil, successedUsers: Int? = nil, failedUsers: Int? = nil, files: [String]? = nil, errors: [String]? = nil) {
        self.migratorName = migratorName
        self.operation = operation
        self.failedArchives = failedArchives
        self.users = users
        self.withoutEmailUsers = withoutEmailUsers
        self.existUsers = existUsers
        self.groups = groups
        self.importPersonalFiles = importPersonalFiles
        self.importSharedFiles = importSharedFiles
        self.importSharedFolders = importSharedFolders
        self.importCommonFiles = importCommonFiles
        self.importProjectFiles = importProjectFiles
        self.importGroups = importGroups
        self.successedUsers = successedUsers
        self.failedUsers = failedUsers
        self.files = files
        self.errors = errors
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case migratorName
        case operation
        case failedArchives
        case users
        case withoutEmailUsers
        case existUsers
        case groups
        case importPersonalFiles
        case importSharedFiles
        case importSharedFolders
        case importCommonFiles
        case importProjectFiles
        case importGroups
        case successedUsers
        case failedUsers
        case files
        case errors
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(migratorName, forKey: .migratorName)
        try container.encodeIfPresent(operation, forKey: .operation)
        try container.encodeIfPresent(failedArchives, forKey: .failedArchives)
        try container.encodeIfPresent(users, forKey: .users)
        try container.encodeIfPresent(withoutEmailUsers, forKey: .withoutEmailUsers)
        try container.encodeIfPresent(existUsers, forKey: .existUsers)
        try container.encodeIfPresent(groups, forKey: .groups)
        try container.encodeIfPresent(importPersonalFiles, forKey: .importPersonalFiles)
        try container.encodeIfPresent(importSharedFiles, forKey: .importSharedFiles)
        try container.encodeIfPresent(importSharedFolders, forKey: .importSharedFolders)
        try container.encodeIfPresent(importCommonFiles, forKey: .importCommonFiles)
        try container.encodeIfPresent(importProjectFiles, forKey: .importProjectFiles)
        try container.encodeIfPresent(importGroups, forKey: .importGroups)
        try container.encodeIfPresent(successedUsers, forKey: .successedUsers)
        try container.encodeIfPresent(failedUsers, forKey: .failedUsers)
        try container.encodeIfPresent(files, forKey: .files)
        try container.encodeIfPresent(errors, forKey: .errors)
    }
}

