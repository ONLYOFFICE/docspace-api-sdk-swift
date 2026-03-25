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

/** The backup history parameters. */
public struct BackupHistoryRecord: Sendable, Codable, Hashable {

    /** The backup ID. */
    public var id: UUID
    /** The backup file name. */
    public var fileName: String?
    public var storageType: BackupStorageType
    /** The backup creation date. */
    public var createdOn: Date
    /** The backup expiration date. */
    public var expiresOn: Date

    public init(id: UUID, fileName: String?, storageType: BackupStorageType, createdOn: Date, expiresOn: Date) {
        self.id = id
        self.fileName = fileName
        self.storageType = storageType
        self.createdOn = createdOn
        self.expiresOn = expiresOn
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case fileName
        case storageType
        case createdOn
        case expiresOn
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(fileName, forKey: .fileName)
        try container.encode(storageType, forKey: .storageType)
        try container.encode(createdOn, forKey: .createdOn)
        try container.encode(expiresOn, forKey: .expiresOn)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension BackupHistoryRecord: Identifiable {}
