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

/** The SMTP settings parameters. */
public struct SmtpSettingsDto: Sendable, Codable, Hashable {

    public static let hostRule = StringRule(minLength: 0, maxLength: 255, pattern: nil)
    public static let portRule = NumericRule<Int>(minimum: 1, exclusiveMinimum: false, maximum: 65535, exclusiveMaximum: false, multipleOf: nil)
    public static let senderAddressRule = StringRule(minLength: 0, maxLength: 255, pattern: nil)
    public static let senderDisplayNameRule = StringRule(minLength: 0, maxLength: 255, pattern: nil)
    public static let credentialsUserNameRule = StringRule(minLength: 0, maxLength: 255, pattern: nil)
    /** The SMTP host. */
    public var host: String?
    /** The SMTP port. */
    public var port: Int?
    /** The sender address. */
    public var senderAddress: String?
    /** The sender display name. */
    public var senderDisplayName: String?
    /** The credentials username. */
    public var credentialsUserName: String?
    /** The credentials user password. */
    public var credentialsUserPassword: String?
    /** Specifies whether the SSL is enabled or not. */
    public var enableSSL: Bool?
    /** Specifies whether the authentication is enabled or not. */
    public var enableAuth: Bool?
    /** Specifies whether to use NTLM or not. */
    public var useNtlm: Bool?
    /** Specifies if the current settings are default or not. */
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

