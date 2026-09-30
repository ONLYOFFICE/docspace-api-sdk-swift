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

/** The SAML name ID formats the SSO settings accept. */
public struct SsoNameIdFormatTypeDto: Sendable, Codable, Hashable {

    /** The SAML 1.1 unspecified name ID format. */
    public var saml11Unspecified: String?
    /** The SAML 1.1 email address name ID format. */
    public var saml11EmailAddress: String?
    /** The SAML 2.0 entity name ID format. */
    public var saml20Entity: String?
    /** The SAML 2.0 transient name ID format, whose identifier differs from one session to the next. It is what  the built-in configuration uses. */
    public var saml20Transient: String?
    /** The SAML 2.0 persistent name ID format, whose identifier stays the same for one person across sessions. */
    public var saml20Persistent: String?
    /** The SAML 2.0 encrypted name ID format. */
    public var saml20Encrypted: String?
    /** The SAML 2.0 unspecified name ID format. */
    public var saml20Unspecified: String?
    /** The SAML 1.1 X.509 subject name name ID format. */
    public var saml11X509SubjectName: String?
    /** The SAML 1.1 Windows domain qualified name name ID format. */
    public var saml11WindowsDomainQualifiedName: String?
    /** The SAML 2.0 Kerberos name ID format. */
    public var saml20Kerberos: String?

    public init(saml11Unspecified: String? = nil, saml11EmailAddress: String? = nil, saml20Entity: String? = nil, saml20Transient: String? = nil, saml20Persistent: String? = nil, saml20Encrypted: String? = nil, saml20Unspecified: String? = nil, saml11X509SubjectName: String? = nil, saml11WindowsDomainQualifiedName: String? = nil, saml20Kerberos: String? = nil) {
        self.saml11Unspecified = saml11Unspecified
        self.saml11EmailAddress = saml11EmailAddress
        self.saml20Entity = saml20Entity
        self.saml20Transient = saml20Transient
        self.saml20Persistent = saml20Persistent
        self.saml20Encrypted = saml20Encrypted
        self.saml20Unspecified = saml20Unspecified
        self.saml11X509SubjectName = saml11X509SubjectName
        self.saml11WindowsDomainQualifiedName = saml11WindowsDomainQualifiedName
        self.saml20Kerberos = saml20Kerberos
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case saml11Unspecified
        case saml11EmailAddress
        case saml20Entity
        case saml20Transient
        case saml20Persistent
        case saml20Encrypted
        case saml20Unspecified
        case saml11X509SubjectName
        case saml11WindowsDomainQualifiedName
        case saml20Kerberos
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(saml11Unspecified, forKey: .saml11Unspecified)
        try container.encodeIfPresent(saml11EmailAddress, forKey: .saml11EmailAddress)
        try container.encodeIfPresent(saml20Entity, forKey: .saml20Entity)
        try container.encodeIfPresent(saml20Transient, forKey: .saml20Transient)
        try container.encodeIfPresent(saml20Persistent, forKey: .saml20Persistent)
        try container.encodeIfPresent(saml20Encrypted, forKey: .saml20Encrypted)
        try container.encodeIfPresent(saml20Unspecified, forKey: .saml20Unspecified)
        try container.encodeIfPresent(saml11X509SubjectName, forKey: .saml11X509SubjectName)
        try container.encodeIfPresent(saml11WindowsDomainQualifiedName, forKey: .saml11WindowsDomainQualifiedName)
        try container.encodeIfPresent(saml20Kerberos, forKey: .saml20Kerberos)
    }
}

