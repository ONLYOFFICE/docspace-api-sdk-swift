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

/** The SSO portal settings. */
public struct SsoSettingsV2: Sendable, Codable, Hashable {

    /** The timestamp indicating when the settings were last modified. */
    public var lastModified: Date?
    /** Specifies if the SSO settings are enabled or not. */
    public var enableSso: Bool?
    public var idpSettings: SsoIdpSettings?
    /** The list of the IdP certificates. */
    public var idpCertificates: [SsoCertificate]?
    public var idpCertificateAdvanced: SsoIdpCertificateAdvanced?
    /** The SP login label. */
    public var spLoginLabel: String?
    /** The list of the SP certificates. */
    public var spCertificates: [SsoCertificate]?
    public var spCertificateAdvanced: SsoSpCertificateAdvanced?
    public var fieldMapping: SsoFieldMapping?
    /** Specifies if the authentication page will be hidden or not. */
    public var hideAuthPage: Bool?
    /** The user type. */
    public var usersType: Int?
    /** Specifies if the email verification is disabled or not. */
    public var disableEmailVerification: Bool?

    public init(lastModified: Date? = nil, enableSso: Bool? = nil, idpSettings: SsoIdpSettings? = nil, idpCertificates: [SsoCertificate]? = nil, idpCertificateAdvanced: SsoIdpCertificateAdvanced? = nil, spLoginLabel: String? = nil, spCertificates: [SsoCertificate]? = nil, spCertificateAdvanced: SsoSpCertificateAdvanced? = nil, fieldMapping: SsoFieldMapping? = nil, hideAuthPage: Bool? = nil, usersType: Int? = nil, disableEmailVerification: Bool? = nil) {
        self.lastModified = lastModified
        self.enableSso = enableSso
        self.idpSettings = idpSettings
        self.idpCertificates = idpCertificates
        self.idpCertificateAdvanced = idpCertificateAdvanced
        self.spLoginLabel = spLoginLabel
        self.spCertificates = spCertificates
        self.spCertificateAdvanced = spCertificateAdvanced
        self.fieldMapping = fieldMapping
        self.hideAuthPage = hideAuthPage
        self.usersType = usersType
        self.disableEmailVerification = disableEmailVerification
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case lastModified
        case enableSso
        case idpSettings
        case idpCertificates
        case idpCertificateAdvanced
        case spLoginLabel
        case spCertificates
        case spCertificateAdvanced
        case fieldMapping
        case hideAuthPage
        case usersType
        case disableEmailVerification
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(lastModified, forKey: .lastModified)
        try container.encodeIfPresent(enableSso, forKey: .enableSso)
        try container.encodeIfPresent(idpSettings, forKey: .idpSettings)
        try container.encodeIfPresent(idpCertificates, forKey: .idpCertificates)
        try container.encodeIfPresent(idpCertificateAdvanced, forKey: .idpCertificateAdvanced)
        try container.encodeIfPresent(spLoginLabel, forKey: .spLoginLabel)
        try container.encodeIfPresent(spCertificates, forKey: .spCertificates)
        try container.encodeIfPresent(spCertificateAdvanced, forKey: .spCertificateAdvanced)
        try container.encodeIfPresent(fieldMapping, forKey: .fieldMapping)
        try container.encodeIfPresent(hideAuthPage, forKey: .hideAuthPage)
        try container.encodeIfPresent(usersType, forKey: .usersType)
        try container.encodeIfPresent(disableEmailVerification, forKey: .disableEmailVerification)
    }
}

