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

/** The request parameters for restoring a portal from a backup. */
public struct BackupRestoreDto: Sendable, Codable, Hashable {

    /** The ID of the backup to restore from, as listed by `GET api/2.0/backup/getbackuphistory`. Send  anything that is not a GUID to restore from a file given by `storageParams` instead; an all-zero GUID  selects neither, because it parses as a GUID and then matches no record. */
    public var backupId: String?
    /** The storage the archive is read from. It defaults to `Documents` and is only used when `backupId` is  not a GUID, because a known backup carries the storage of its own record. */
    public var storageType: BackupStorageType?
    /** The location of the archive, as an array of key and value pairs. The key read here is `filePath` -  not the `folderId` a backup is started with - and it holds a file ID for `Documents`, a  provider-specific file ID for `ThridpartyDocuments` and a path on the server for `Local`. It is only  used when `backupId` is not a GUID. */
    public var storageParams: [ItemKeyValuePairObjectObject]?
    /** Chooses who is emailed when the restoring starts and when it finishes: every active user of the  portal when true, and its owner alone when false. Mail goes only to accounts that have been  activated, so this decides the audience rather than whether anybody is notified at all. */
    public var notify: Bool?
    /** Restores the whole server rather than this one portal. It requires the space access permission. */
    public var dump: Bool?

    public init(backupId: String?, storageType: BackupStorageType? = nil, storageParams: [ItemKeyValuePairObjectObject]? = nil, notify: Bool? = nil, dump: Bool? = nil) {
        self.backupId = backupId
        self.storageType = storageType
        self.storageParams = storageParams
        self.notify = notify
        self.dump = dump
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case backupId
        case storageType
        case storageParams
        case notify
        case dump
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(backupId, forKey: .backupId)
        try container.encodeIfPresent(storageType, forKey: .storageType)
        try container.encodeIfPresent(storageParams, forKey: .storageParams)
        try container.encodeIfPresent(notify, forKey: .notify)
        try container.encodeIfPresent(dump, forKey: .dump)
    }
}

