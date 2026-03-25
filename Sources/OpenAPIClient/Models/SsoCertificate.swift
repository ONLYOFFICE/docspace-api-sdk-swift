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

/** The SSO certificate parameters. */
public struct SsoCertificate: Sendable, Codable, Hashable {

    /** Specifies if a certificate is self-signed or not. */
    public var selfSigned: Bool?
    /** The CRT certificate file. */
    public var crt: String?
    /** The certificate key. */
    public var key: String?
    /** The certificate action. */
    public var action: String?
    /** The certificate domain name. */
    public var domainName: String?
    /** The certificate start date. */
    public var startDate: Date?
    /** The certificate expiration date. */
    public var expiredDate: Date?

    public init(selfSigned: Bool? = nil, crt: String? = nil, key: String? = nil, action: String? = nil, domainName: String? = nil, startDate: Date? = nil, expiredDate: Date? = nil) {
        self.selfSigned = selfSigned
        self.crt = crt
        self.key = key
        self.action = action
        self.domainName = domainName
        self.startDate = startDate
        self.expiredDate = expiredDate
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case selfSigned
        case crt
        case key
        case action
        case domainName
        case startDate
        case expiredDate
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(selfSigned, forKey: .selfSigned)
        try container.encodeIfPresent(crt, forKey: .crt)
        try container.encodeIfPresent(key, forKey: .key)
        try container.encodeIfPresent(action, forKey: .action)
        try container.encodeIfPresent(domainName, forKey: .domainName)
        try container.encodeIfPresent(startDate, forKey: .startDate)
        try container.encodeIfPresent(expiredDate, forKey: .expiredDate)
    }
}

