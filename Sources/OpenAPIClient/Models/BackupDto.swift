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

/** The request parameters for starting a backup. */
public struct BackupDto: Sendable, Codable, Hashable {

    /** The storage the archive is written to. It defaults to `Documents`, and it decides which keys  `storageParams` has to carry. */
    public var storageType: BackupStorageType?
    /** The settings of the chosen storage, as an array of key and value pairs. `Documents` needs an integer  `folderId`, `ThridpartyDocuments` a provider-specific non-integer `folderId`, `Local` a `filePath`,  `ThirdPartyConsumer` a `module` plus the settings of that consumer, and `DataStore` none. The  `subdir` key is added by the operation itself and must not be sent. */
    public var storageParams: [ItemKeyValuePairObjectObject]?
    /** Backs up the whole server rather than this one portal. It requires the space access permission and  works on a standalone installation only. */
    public var dump: Bool?

    public init(storageType: BackupStorageType? = nil, storageParams: [ItemKeyValuePairObjectObject]? = nil, dump: Bool? = nil) {
        self.storageType = storageType
        self.storageParams = storageParams
        self.dump = dump
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case storageType
        case storageParams
        case dump
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(storageType, forKey: .storageType)
        try container.encodeIfPresent(storageParams, forKey: .storageParams)
        try container.encodeIfPresent(dump, forKey: .dump)
    }
}

