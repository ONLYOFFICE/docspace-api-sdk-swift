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

/** The SSO settings constants: every value the settings accept, by name. */
public struct SsoSettingsV2ConstantsDto: Sendable, Codable, Hashable {

    /** The values the `nameIdFormat` of the identity provider settings accepts. The built-in configuration uses  the SAML 2.0 transient format. */
    public var ssoNameIdFormatType: SsoNameIdFormatTypeDto?
    /** The values the `ssoBinding` and `sloBinding` of the identity provider settings accept - how the portal  sends its sign-in and sign-out requests. The built-in configuration uses HTTP POST for both. */
    public var ssoBindingType: SsoBindingTypeDto?
    /** The values the `signingAlgorithm` of the service provider certificate and the `verifyAlgorithm` of the  identity provider certificate accept. The built-in configuration uses RSA-SHA1 for both. */
    public var ssoSigningAlgorithmType: SsoSigningAlgorithmTypeDto?
    /** The values the `encryptAlgorithm` and `decryptAlgorithm` of the certificate settings accept. The built-in  configuration uses AES-128 everywhere. */
    public var ssoEncryptAlgorithmType: SsoEncryptAlgorithmTypeDto?
    /** The values the `action` of a service provider certificate accepts, which is what the portal's own key  pair may be used for. */
    public var ssoSpCertificateActionType: SsoSpCertificateActionTypeDto?
    /** The values the `action` of an identity provider certificate accepts, which is what the provider's  certificate may be used for - the mirror image of the service provider actions. */
    public var ssoIdpCertificateActionType: SsoIdpCertificateActionTypeDto?

    public init(ssoNameIdFormatType: SsoNameIdFormatTypeDto? = nil, ssoBindingType: SsoBindingTypeDto? = nil, ssoSigningAlgorithmType: SsoSigningAlgorithmTypeDto? = nil, ssoEncryptAlgorithmType: SsoEncryptAlgorithmTypeDto? = nil, ssoSpCertificateActionType: SsoSpCertificateActionTypeDto? = nil, ssoIdpCertificateActionType: SsoIdpCertificateActionTypeDto? = nil) {
        self.ssoNameIdFormatType = ssoNameIdFormatType
        self.ssoBindingType = ssoBindingType
        self.ssoSigningAlgorithmType = ssoSigningAlgorithmType
        self.ssoEncryptAlgorithmType = ssoEncryptAlgorithmType
        self.ssoSpCertificateActionType = ssoSpCertificateActionType
        self.ssoIdpCertificateActionType = ssoIdpCertificateActionType
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case ssoNameIdFormatType
        case ssoBindingType
        case ssoSigningAlgorithmType
        case ssoEncryptAlgorithmType
        case ssoSpCertificateActionType
        case ssoIdpCertificateActionType
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(ssoNameIdFormatType, forKey: .ssoNameIdFormatType)
        try container.encodeIfPresent(ssoBindingType, forKey: .ssoBindingType)
        try container.encodeIfPresent(ssoSigningAlgorithmType, forKey: .ssoSigningAlgorithmType)
        try container.encodeIfPresent(ssoEncryptAlgorithmType, forKey: .ssoEncryptAlgorithmType)
        try container.encodeIfPresent(ssoSpCertificateActionType, forKey: .ssoSpCertificateActionType)
        try container.encodeIfPresent(ssoIdpCertificateActionType, forKey: .ssoIdpCertificateActionType)
    }
}

