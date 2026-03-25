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

/** The backup parameters. */
public struct BackupDto: Sendable, Codable, Hashable {

    public var storageType: BackupStorageType?
    /** The backup storage parameters. */
    public var storageParams: [ItemKeyValuePairObjectObject]?
    /** Specifies if a dump will be created or not. */
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

