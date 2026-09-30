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

/** The branding of the organization running the portal, as the editor About panel shows it. It is reported on a  server installation only. */
public struct CustomerConfigDto: Sendable, Codable, Hashable {

    /** The postal address from the portal branding settings; empty when none was entered. */
    public var address: String?
    /** The About-panel logo of the organization. */
    public var logo: String?
    /** The About-panel logo for a dark interface theme. */
    public var logoDark: String?
    /** The contact address from the portal branding settings. */
    public var mail: String?
    /** The organization name shown in the editor. */
    public var name: String?
    /** The website of the organization. */
    public var www: String?

    public init(address: String? = nil, logo: String? = nil, logoDark: String? = nil, mail: String? = nil, name: String? = nil, www: String? = nil) {
        self.address = address
        self.logo = logo
        self.logoDark = logoDark
        self.mail = mail
        self.name = name
        self.www = www
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case address
        case logo
        case logoDark
        case mail
        case name
        case www
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(address, forKey: .address)
        try container.encodeIfPresent(logo, forKey: .logo)
        try container.encodeIfPresent(logoDark, forKey: .logoDark)
        try container.encodeIfPresent(mail, forKey: .mail)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(www, forKey: .www)
    }
}

