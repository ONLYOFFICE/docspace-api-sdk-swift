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

/** The encryption key granting one user access to a file. */
public struct AccessRequestKeyDto: Sendable, Codable, Hashable {

    /** User ID */
    public var userId: UUID?
    /** Public key ID */
    public var publicKeyId: UUID?
    /** Encrypted private key */
    public var privateKeyEnc: String?

    public init(userId: UUID? = nil, publicKeyId: UUID? = nil, privateKeyEnc: String? = nil) {
        self.userId = userId
        self.publicKeyId = publicKeyId
        self.privateKeyEnc = privateKeyEnc
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case userId
        case publicKeyId
        case privateKeyEnc
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(userId, forKey: .userId)
        try container.encodeIfPresent(publicKeyId, forKey: .publicKeyId)
        try container.encodeIfPresent(privateKeyEnc, forKey: .privateKeyEnc)
    }
}

