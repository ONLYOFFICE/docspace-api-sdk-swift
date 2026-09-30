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

/** The request parameters for setting the backup schedule. */
public struct BackupScheduleDto: Sendable, Codable, Hashable {

    /** The storage the scheduled archives are written to. It defaults to `Documents`, and it decides which  keys `storageParams` has to carry. */
    public var storageType: BackupStorageType?
    /** The settings of the chosen storage, as an array of key and value pairs. `Documents` and  `ThridpartyDocuments` need `folderId`, `Local` needs `filePath`, `ThirdPartyConsumer` needs `module`  plus the settings of that consumer, and `DataStore` needs none. */
    public var storageParams: [ItemKeyValuePairObjectObject]?
    /** The number of scheduled copies to keep, from 1 to 30. It defaults to 1, and only the copies this  schedule creates are counted and removed - archives started by hand are left alone. */
    public var backupsStored: Int?
    /** When the backup runs. It is required: a request without it fails rather than falling back to a  default. */
    public var cronParams: Cron?
    /** Schedules a backup of the whole server rather than of this one portal. It requires the space access  permission and works on a standalone installation only. */
    public var dump: Bool?

    public init(storageType: BackupStorageType? = nil, storageParams: [ItemKeyValuePairObjectObject]? = nil, backupsStored: Int? = nil, cronParams: Cron? = nil, dump: Bool? = nil) {
        self.storageType = storageType
        self.storageParams = storageParams
        self.backupsStored = backupsStored
        self.cronParams = cronParams
        self.dump = dump
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case storageType
        case storageParams
        case backupsStored
        case cronParams
        case dump
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(storageType, forKey: .storageType)
        try container.encodeIfPresent(storageParams, forKey: .storageParams)
        try container.encodeIfPresent(backupsStored, forKey: .backupsStored)
        try container.encodeIfPresent(cronParams, forKey: .cronParams)
        try container.encodeIfPresent(dump, forKey: .dump)
    }
}

