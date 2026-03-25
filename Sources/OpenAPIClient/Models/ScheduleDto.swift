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

/** The backup schedule parameters. */
public struct ScheduleDto: Sendable, Codable, Hashable {

    public var storageType: BackupStorageType
    /** The backup storage parameters. */
    public var storageParams: [String: String]?
    public var cronParams: CronParams
    /** The maximum number of the stored backup copies. */
    public var backupsStored: Int?
    /** The date and time when the last backup was reated. */
    public var lastBackupTime: Date
    /** Specifies if a dump will be created or not. */
    public var dump: Bool

    public init(storageType: BackupStorageType, storageParams: [String: String]?, cronParams: CronParams, backupsStored: Int? = nil, lastBackupTime: Date, dump: Bool) {
        self.storageType = storageType
        self.storageParams = storageParams
        self.cronParams = cronParams
        self.backupsStored = backupsStored
        self.lastBackupTime = lastBackupTime
        self.dump = dump
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case storageType
        case storageParams
        case cronParams
        case backupsStored
        case lastBackupTime
        case dump
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(storageType, forKey: .storageType)
        try container.encode(storageParams, forKey: .storageParams)
        try container.encode(cronParams, forKey: .cronParams)
        try container.encodeIfPresent(backupsStored, forKey: .backupsStored)
        try container.encode(lastBackupTime, forKey: .lastBackupTime)
        try container.encode(dump, forKey: .dump)
    }
}

