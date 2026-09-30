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

/** The mail server the portal sends its letters through. */
public struct SmtpSettingsDto: Sendable, Codable, Hashable {

    public static let hostRule = StringRule(minLength: 0, maxLength: 255, pattern: nil)
    public static let portRule = NumericRule<Int>(minimum: 1, exclusiveMinimum: false, maximum: 65535, exclusiveMaximum: false, multipleOf: nil)
    public static let senderAddressRule = StringRule(minLength: 0, maxLength: 255, pattern: nil)
    public static let senderDisplayNameRule = StringRule(minLength: 0, maxLength: 255, pattern: nil)
    public static let credentialsUserNameRule = StringRule(minLength: 0, maxLength: 255, pattern: nil)
    /** The host name or address of the mail server. On a cloud portal that has saved no relay of its own every  field of this object comes back empty, because the installation's own server is not disclosed - only  `isDefaultSettings` is set there. */
    public var host: String?
    /** The port the mail server is reached on - conventionally 25 or 587 without encryption from the start, 465  with it. It is empty when no port was stored, in which case the portal falls back to its own default. */
    public var port: Int?
    /** The address the letters are sent from, which appears in the From header and is what a reply goes to. */
    public var senderAddress: String?
    /** The name shown beside that address in a recipient's mailbox. */
    public var senderDisplayName: String?
    /** The account the portal signs in to the mail server as, meaningful only while `enableAuth` is `true`. */
    public var credentialsUserName: String?
    /** Always empty here: the stored password is never returned, so a client that sends these settings back has  to supply it again rather than echoing what it read. */
    public var credentialsUserPassword: String?
    /** Whether the connection to the mail server is encrypted. */
    public var enableSSL: Bool?
    /** Whether the portal signs in to the mail server at all. While it is `false` the credentials above are  ignored and the server is expected to accept mail unauthenticated. */
    public var enableAuth: Bool?
    /** Always `false` here: the flag is accepted when settings are saved but is not stored, so it never comes  back set and says nothing about how the portal authenticates. */
    public var useNtlm: Bool?
    /** Whether the portal is still on the mail configuration of the installation rather than on a relay of its  own. `DELETE api/2.0/smtpsettings/smtp` puts it back to `true`, and while it is `true` on a cloud portal  the fields above are blank rather than showing the installation's server. */
    public var isDefaultSettings: Bool?

    public init(host: String? = nil, port: Int? = nil, senderAddress: String? = nil, senderDisplayName: String? = nil, credentialsUserName: String? = nil, credentialsUserPassword: String? = nil, enableSSL: Bool? = nil, enableAuth: Bool? = nil, useNtlm: Bool? = nil, isDefaultSettings: Bool? = nil) {
        self.host = host
        self.port = port
        self.senderAddress = senderAddress
        self.senderDisplayName = senderDisplayName
        self.credentialsUserName = credentialsUserName
        self.credentialsUserPassword = credentialsUserPassword
        self.enableSSL = enableSSL
        self.enableAuth = enableAuth
        self.useNtlm = useNtlm
        self.isDefaultSettings = isDefaultSettings
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case host
        case port
        case senderAddress
        case senderDisplayName
        case credentialsUserName
        case credentialsUserPassword
        case enableSSL
        case enableAuth
        case useNtlm
        case isDefaultSettings
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(host, forKey: .host)
        try container.encodeIfPresent(port, forKey: .port)
        try container.encodeIfPresent(senderAddress, forKey: .senderAddress)
        try container.encodeIfPresent(senderDisplayName, forKey: .senderDisplayName)
        try container.encodeIfPresent(credentialsUserName, forKey: .credentialsUserName)
        try container.encodeIfPresent(credentialsUserPassword, forKey: .credentialsUserPassword)
        try container.encodeIfPresent(enableSSL, forKey: .enableSSL)
        try container.encodeIfPresent(enableAuth, forKey: .enableAuth)
        try container.encodeIfPresent(useNtlm, forKey: .useNtlm)
        try container.encodeIfPresent(isDefaultSettings, forKey: .isDefaultSettings)
    }
}

