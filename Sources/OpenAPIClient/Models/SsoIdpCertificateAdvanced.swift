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

/** The IdP advanced certificate parameters. */
public struct SsoIdpCertificateAdvanced: Sendable, Codable, Hashable {

    /** The certificate verification algorithm. */
    public var verifyAlgorithm: String?
    /** Specifies if the signatures of the SAML authentication responses sent to SP will be verified or not. */
    public var verifyAuthResponsesSign: Bool?
    /** Specifies if the signatures of the SAML logout requests sent to SP will be verified or not. */
    public var verifyLogoutRequestsSign: Bool?
    /** Specifies if the signatures of the SAML logout responses sent to SP will be verified or not. */
    public var verifyLogoutResponsesSign: Bool?
    /** The certificate decryption algorithm. */
    public var decryptAlgorithm: String?
    /** Specifies if the assertions will be decrypted or not. */
    public var decryptAssertions: Bool?

    public init(verifyAlgorithm: String? = nil, verifyAuthResponsesSign: Bool? = nil, verifyLogoutRequestsSign: Bool? = nil, verifyLogoutResponsesSign: Bool? = nil, decryptAlgorithm: String? = nil, decryptAssertions: Bool? = nil) {
        self.verifyAlgorithm = verifyAlgorithm
        self.verifyAuthResponsesSign = verifyAuthResponsesSign
        self.verifyLogoutRequestsSign = verifyLogoutRequestsSign
        self.verifyLogoutResponsesSign = verifyLogoutResponsesSign
        self.decryptAlgorithm = decryptAlgorithm
        self.decryptAssertions = decryptAssertions
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case verifyAlgorithm
        case verifyAuthResponsesSign
        case verifyLogoutRequestsSign
        case verifyLogoutResponsesSign
        case decryptAlgorithm
        case decryptAssertions
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(verifyAlgorithm, forKey: .verifyAlgorithm)
        try container.encodeIfPresent(verifyAuthResponsesSign, forKey: .verifyAuthResponsesSign)
        try container.encodeIfPresent(verifyLogoutRequestsSign, forKey: .verifyLogoutRequestsSign)
        try container.encodeIfPresent(verifyLogoutResponsesSign, forKey: .verifyLogoutResponsesSign)
        try container.encodeIfPresent(decryptAlgorithm, forKey: .decryptAlgorithm)
        try container.encodeIfPresent(decryptAssertions, forKey: .decryptAssertions)
    }
}

