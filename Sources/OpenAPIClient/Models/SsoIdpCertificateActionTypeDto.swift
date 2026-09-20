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

/** What the identity provider's certificate may be used for, as the `action` of an identity provider certificate. */
public struct SsoIdpCertificateActionTypeDto: Sendable, Codable, Hashable {

    /** The certificate verifies the signatures on what the provider sends, and nothing else - the counterpart of  the service provider's signing action. */
    public var verification: String?
    /** The certificate is used to decrypt what the provider sends, but verifies no signature. */
    public var decrypt: String?
    /** The certificate does both, which is what a single provider certificate has to be set to. */
    public var verificationAndDecrypt: String?

    public init(verification: String? = nil, decrypt: String? = nil, verificationAndDecrypt: String? = nil) {
        self.verification = verification
        self.decrypt = decrypt
        self.verificationAndDecrypt = verificationAndDecrypt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case verification
        case decrypt
        case verificationAndDecrypt
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(verification, forKey: .verification)
        try container.encodeIfPresent(decrypt, forKey: .decrypt)
        try container.encodeIfPresent(verificationAndDecrypt, forKey: .verificationAndDecrypt)
    }
}

