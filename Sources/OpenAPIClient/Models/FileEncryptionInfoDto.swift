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

/** The encryption information of a file: the user key pairs and the per-user file keys. */
public struct FileEncryptionInfoDto: Sendable, Codable, Hashable {

    /** The key pairs of the users who have access to the file. */
    public var userKeys: [EncryptionKeyDto]?
    /** The file keys issued to those users. */
    public var fileKeys: [FileKeys]?

    public init(userKeys: [EncryptionKeyDto]? = nil, fileKeys: [FileKeys]? = nil) {
        self.userKeys = userKeys
        self.fileKeys = fileKeys
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case userKeys
        case fileKeys
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(userKeys, forKey: .userKeys)
        try container.encodeIfPresent(fileKeys, forKey: .fileKeys)
    }
}

