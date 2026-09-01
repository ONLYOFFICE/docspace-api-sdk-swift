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

/** The connection parameters of an external database. */
public struct ExternalDatabaseSettings: Sendable, Codable, Hashable {

    /** The engine of the external database. */
    public var databaseType: String?
    /** The engine of an external database. */
    public var databaseTypeEnum: ExternalDatabaseType?
    /** The host name or the IP address of the database server. */
    public var dbHost: String?
    /** The port the database server listens on. */
    public var dbPort: Int?
    /** The name of the database to connect to. */
    public var dbName: String?
    /** The user name to connect with. */
    public var dbUser: String?
    /** The password to connect with. */
    public var dbPassword: String?
    /** Specifies whether the connection to the database is secured with SSL. */
    public var dbSsl: Bool?
    /** The path to the database file, used by the SQLite engine only. */
    public var sqliteFilePath: String?

    public init(databaseType: String? = nil, databaseTypeEnum: ExternalDatabaseType? = nil, dbHost: String? = nil, dbPort: Int? = nil, dbName: String? = nil, dbUser: String? = nil, dbPassword: String? = nil, dbSsl: Bool? = nil, sqliteFilePath: String? = nil) {
        self.databaseType = databaseType
        self.databaseTypeEnum = databaseTypeEnum
        self.dbHost = dbHost
        self.dbPort = dbPort
        self.dbName = dbName
        self.dbUser = dbUser
        self.dbPassword = dbPassword
        self.dbSsl = dbSsl
        self.sqliteFilePath = sqliteFilePath
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case databaseType
        case databaseTypeEnum
        case dbHost
        case dbPort
        case dbName
        case dbUser
        case dbPassword
        case dbSsl
        case sqliteFilePath
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(databaseType, forKey: .databaseType)
        try container.encodeIfPresent(databaseTypeEnum, forKey: .databaseTypeEnum)
        try container.encodeIfPresent(dbHost, forKey: .dbHost)
        try container.encodeIfPresent(dbPort, forKey: .dbPort)
        try container.encodeIfPresent(dbName, forKey: .dbName)
        try container.encodeIfPresent(dbUser, forKey: .dbUser)
        try container.encodeIfPresent(dbPassword, forKey: .dbPassword)
        try container.encodeIfPresent(dbSsl, forKey: .dbSsl)
        try container.encodeIfPresent(sqliteFilePath, forKey: .sqliteFilePath)
    }
}

