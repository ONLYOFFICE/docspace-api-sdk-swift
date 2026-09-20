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

/** The backup schedule of a portal. */
public struct ScheduleDto: Sendable, Codable, Hashable {

    /** The storage the scheduled archives are written to, reported as a number rather than as the name the  schedule was created with. */
    public var storageType: BackupStorageType
    /** The settings of the storage, as an object keyed by parameter name - not as the array of key and value  pairs the schedule was created with, so it cannot be sent back unchanged. For every storage type  except `ThirdPartyConsumer` the `folderId` key is built from the stored base path. */
    public var storageParams: [String: String?]
    /** When the backup runs, read back from the stored cron expression. `day` is 0 for a daily schedule,  because a daily one has no day. */
    public var cronParams: CronParams
    /** The number of scheduled copies kept. It is null, not 0, when the schedule keeps an unlimited number. */
    public var backupsStored: Int?
    /** The date and time the schedule last ran at. It is `0001-01-01T00:00:00` until the schedule has run  for the first time. */
    public var lastBackupTime: Date
    /** Specifies whether this schedule backs up the whole server instead of one portal. */
    public var dump: Bool

    public init(storageType: BackupStorageType, storageParams: [String: String?], cronParams: CronParams, backupsStored: Int? = nil, lastBackupTime: Date, dump: Bool) {
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

