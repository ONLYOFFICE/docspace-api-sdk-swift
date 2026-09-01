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

/** The encryption key pair of a user. */
public struct EncryptionKeyDto: Sendable, Codable, Hashable {

    /** The identifier of the key pair. */
    public var id: UUID?
    /** The identifier of the user the key pair belongs to. */
    public var userId: UUID?
    /** The date and time when the key pair was created. */
    public var date: Date?
    /** The public key of the pair, used to encrypt the file keys. */
    public var publicKey: String?
    /** The private key of the pair, encrypted with the user password. */
    public var privateKeyEnc: String?
    /** The identifier of the crypto engine the key pair was issued for. */
    public var cryptoEngineId: String?

    public init(id: UUID? = nil, userId: UUID? = nil, date: Date? = nil, publicKey: String? = nil, privateKeyEnc: String? = nil, cryptoEngineId: String? = nil) {
        self.id = id
        self.userId = userId
        self.date = date
        self.publicKey = publicKey
        self.privateKeyEnc = privateKeyEnc
        self.cryptoEngineId = cryptoEngineId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case userId
        case date
        case publicKey
        case privateKeyEnc
        case cryptoEngineId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(userId, forKey: .userId)
        try container.encodeIfPresent(date, forKey: .date)
        try container.encodeIfPresent(publicKey, forKey: .publicKey)
        try container.encodeIfPresent(privateKeyEnc, forKey: .privateKeyEnc)
        try container.encodeIfPresent(cryptoEngineId, forKey: .cryptoEngineId)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension EncryptionKeyDto: Identifiable {}
