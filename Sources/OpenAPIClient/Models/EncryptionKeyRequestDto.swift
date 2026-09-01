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

/** The request parameters for storing the encryption key pair of a user. */
public struct EncryptionKeyRequestDto: Sendable, Codable, Hashable {

    /** The identifier of the key pair. */
    public var id: UUID?
    /** The public key of the pair, used to encrypt the file keys. */
    public var publicKey: String?
    /** The private key of the pair, encrypted with the user password. */
    public var privateKeyEnc: String?

    public init(id: UUID? = nil, publicKey: String? = nil, privateKeyEnc: String? = nil) {
        self.id = id
        self.publicKey = publicKey
        self.privateKeyEnc = privateKeyEnc
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case publicKey
        case privateKeyEnc
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(publicKey, forKey: .publicKey)
        try container.encodeIfPresent(privateKeyEnc, forKey: .privateKeyEnc)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension EncryptionKeyRequestDto: Identifiable {}
