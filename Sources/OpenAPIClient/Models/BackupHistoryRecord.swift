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

/** One stored backup of a portal. */
public struct BackupHistoryRecord: Sendable, Codable, Hashable {

    /** The ID of the backup, which is the same value as the `taskId` the backup was started with. Pass it to  `DELETE api/2.0/backup/deletebackup/{id}` or as the `backupId` of  `POST api/2.0/backup/startrestore`. */
    public var id: UUID
    /** The name of the stored archive. It is built from the portal alias and the moment the backup started,  or from `workspace` instead of the alias for a backup of the whole server. */
    public var fileName: String?
    /** The storage the archive was written to, reported as a number rather than as a name. */
    public var storageType: BackupStorageType
    /** The date and time the backup was stored at, in UTC. */
    public var createdOn: Date
    /** The date and time a background cleaner removes this backup at. Only a backup written to `DataStore`  expires, one day after it was stored; for every other storage type this is `0001-01-01T00:00:00`,  which means the backup is kept until it is deleted by hand or pushed out by the stored-copies limit  of a schedule. */
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
