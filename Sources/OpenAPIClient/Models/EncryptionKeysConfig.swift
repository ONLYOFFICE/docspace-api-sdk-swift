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

/** The encryption keys of the editor configuration. */
public struct EncryptionKeysConfig: Sendable, Codable, Hashable {

    /** The crypto engine ID of the encryption key. */
    public var cryptoEngineId: String?
    /** The private key. */
    public var privateKeyEnc: String?
    /** The public key. */
    public var publicKey: String?

    public init(cryptoEngineId: String? = nil, privateKeyEnc: String? = nil, publicKey: String? = nil) {
        self.cryptoEngineId = cryptoEngineId
        self.privateKeyEnc = privateKeyEnc
        self.publicKey = publicKey
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case cryptoEngineId
        case privateKeyEnc
        case publicKey
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(cryptoEngineId, forKey: .cryptoEngineId)
        try container.encodeIfPresent(privateKeyEnc, forKey: .privateKeyEnc)
        try container.encodeIfPresent(publicKey, forKey: .publicKey)
    }
}

