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

/** The encrypted file key issued to one user. */
public struct FileKeys: Sendable, Codable, Hashable {

    /** The identifier of the user the file key was issued to. */
    public var userId: UUID?
    /** The identifier of the key pair the file key is encrypted for. */
    public var publicKeyId: UUID?
    /** The file key, encrypted with the public key of the pair. */
    public var privateKeyEnc: String?
    /** The identifier of the portal the file belongs to. */
    public var tenantId: Int?
    /** The identifier of the file the key unlocks. */
    public var fileId: Int?
    /** The date and time when the file key was issued. */
    public var createOn: Date?

    public init(userId: UUID? = nil, publicKeyId: UUID? = nil, privateKeyEnc: String? = nil, tenantId: Int? = nil, fileId: Int? = nil, createOn: Date? = nil) {
        self.userId = userId
        self.publicKeyId = publicKeyId
        self.privateKeyEnc = privateKeyEnc
        self.tenantId = tenantId
        self.fileId = fileId
        self.createOn = createOn
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case userId
        case publicKeyId
        case privateKeyEnc
        case tenantId
        case fileId
        case createOn
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(userId, forKey: .userId)
        try container.encodeIfPresent(publicKeyId, forKey: .publicKeyId)
        try container.encodeIfPresent(privateKeyEnc, forKey: .privateKeyEnc)
        try container.encodeIfPresent(tenantId, forKey: .tenantId)
        try container.encodeIfPresent(fileId, forKey: .fileId)
        try container.encodeIfPresent(createOn, forKey: .createOn)
    }
}

