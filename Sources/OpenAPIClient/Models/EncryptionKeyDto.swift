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

/** An encryption key pair as the portal reports it: the public half of some member's key, with the encrypted private  half filled in only when the pair belongs to the caller. */
public struct EncryptionKeyDto: Sendable, Codable, Hashable {

    /** Names the pair inside its owner's key set. Pass it back to rotate the pair or to delete it; the all-zero value  belongs to a client that stores its keys without sending an identifier. */
    public var id: UUID?
    /** The member the pair belongs to. In the key set of a room or of a file this is how the caller tells its own  entries, the ones carrying a private half, from those of the other members. */
    public var userId: UUID?
    /** When this key material was written. Rotating the pair refreshes it, so it dates the material that is being  reported rather than the first appearance of the identifier. */
    public var date: Date?
    /** The public half of the pair, the half a client encrypts file keys with. A pair whose public half is missing  is treated as no access and left out of a room's or a file's key set. */
    public var publicKey: String?
    /** The private half, encrypted with its owner's password. It is filled in only when the pair belongs to the  calling user; on another member's entry it comes back empty, because the private half is not handed out. */
    public var privateKeyEnc: String?
    /** The crypto engine this material was issued for, as a braced GUID. The engine is portal-wide, so the same value  comes back for every key of every member. */
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
