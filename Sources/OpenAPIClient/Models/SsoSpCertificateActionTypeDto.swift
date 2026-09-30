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

/** What the portal's own key pair may be used for, as the `action` of a service provider certificate. */
public struct SsoSpCertificateActionTypeDto: Sendable, Codable, Hashable {

    /** The key pair signs the requests the portal sends and nothing else. */
    public var signing: String?
    /** The key pair encrypts what the portal sends and decrypts what comes back, but signs nothing. */
    public var encrypt: String?
    /** The key pair does both, which is what one pair configured on its own has to be set to. */
    public var signingAndEncrypt: String?

    public init(signing: String? = nil, encrypt: String? = nil, signingAndEncrypt: String? = nil) {
        self.signing = signing
        self.encrypt = encrypt
        self.signingAndEncrypt = signingAndEncrypt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case signing
        case encrypt
        case signingAndEncrypt
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(signing, forKey: .signing)
        try container.encodeIfPresent(encrypt, forKey: .encrypt)
        try container.encodeIfPresent(signingAndEncrypt, forKey: .signingAndEncrypt)
    }
}

