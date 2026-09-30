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

/** The keys the calling account needs in order to open one file of an end-to-end encrypted private room. */
public struct FileEncryptionInfoDto: Sendable, Codable, Hashable {

    /** The key pairs of the calling account, never those of the other people in the room. The private half of each  pair is stored encrypted with that person's own password and has to be decrypted on the client. An empty list  means the account has generated no key pair yet, and until it does no file key can be issued to it. */
    public var userKeys: [EncryptionKeyDto]?
    /** The keys of this file that were issued to the calling account, each naming the public key it was encrypted for  so that the client can pick the matching private half. An empty list means the file has not been shared with  this account rather than that the file is unencrypted. */
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

