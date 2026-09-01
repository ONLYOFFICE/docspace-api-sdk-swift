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

/** The SP advanced certificate parameters. */
public struct SsoSpCertificateAdvanced: Sendable, Codable, Hashable {

    /** The certificate signing algorithm. */
    public var signingAlgorithm: String?
    /** Specifies if SP will sign the SAML authentication requests sent to IdP or not. */
    public var signAuthRequests: Bool?
    /** Specifies if SP will sign the SAML logout requests sent to IdP or not. */
    public var signLogoutRequests: Bool?
    /** Specifies if SP will sign the SAML logout responses sent to IdP or not. */
    public var signLogoutResponses: Bool?
    /** The certificate encryption algorithm. */
    public var encryptAlgorithm: String?
    /** The certificate decryption algorithm. */
    public var decryptAlgorithm: String?
    /** Specifies if the assertions will be encrypted or not. */
    public var encryptAssertions: Bool?

    public init(signingAlgorithm: String? = nil, signAuthRequests: Bool? = nil, signLogoutRequests: Bool? = nil, signLogoutResponses: Bool? = nil, encryptAlgorithm: String? = nil, decryptAlgorithm: String? = nil, encryptAssertions: Bool? = nil) {
        self.signingAlgorithm = signingAlgorithm
        self.signAuthRequests = signAuthRequests
        self.signLogoutRequests = signLogoutRequests
        self.signLogoutResponses = signLogoutResponses
        self.encryptAlgorithm = encryptAlgorithm
        self.decryptAlgorithm = decryptAlgorithm
        self.encryptAssertions = encryptAssertions
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case signingAlgorithm
        case signAuthRequests
        case signLogoutRequests
        case signLogoutResponses
        case encryptAlgorithm
        case decryptAlgorithm
        case encryptAssertions
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(signingAlgorithm, forKey: .signingAlgorithm)
        try container.encodeIfPresent(signAuthRequests, forKey: .signAuthRequests)
        try container.encodeIfPresent(signLogoutRequests, forKey: .signLogoutRequests)
        try container.encodeIfPresent(signLogoutResponses, forKey: .signLogoutResponses)
        try container.encodeIfPresent(encryptAlgorithm, forKey: .encryptAlgorithm)
        try container.encodeIfPresent(decryptAlgorithm, forKey: .decryptAlgorithm)
        try container.encodeIfPresent(encryptAssertions, forKey: .encryptAssertions)
    }
}

