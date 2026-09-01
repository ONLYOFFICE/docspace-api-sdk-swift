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

/** The company white label settings. */
public struct CompanyWhiteLabelSettings: Sendable, Codable, Hashable {

    public static let companyNameRule = StringRule(minLength: 0, maxLength: 255, pattern: nil)
    public static let siteRule = StringRule(minLength: 0, maxLength: 255, pattern: nil)
    public static let emailRule = StringRule(minLength: 0, maxLength: 255, pattern: nil)
    public static let addressRule = StringRule(minLength: 0, maxLength: 255, pattern: nil)
    public static let phoneRule = StringRule(minLength: 0, maxLength: 255, pattern: nil)
    /** The company name. */
    public var companyName: String?
    /** The company site. */
    public var site: String?
    /** The company email address. */
    public var email: String?
    /** The company address. */
    public var address: String?
    /** The company phone number. */
    public var phone: String?
    /** Specifies if a company is a licensor or not. */
    public var isLicensor: Bool?
    /** Specifies if the About page is visible or not */
    public var hideAbout: Bool?
    /** The timestamp indicating when the settings were last modified. */
    public var lastModified: Date?

    public init(companyName: String? = nil, site: String? = nil, email: String? = nil, address: String? = nil, phone: String? = nil, isLicensor: Bool? = nil, hideAbout: Bool? = nil, lastModified: Date? = nil) {
        self.companyName = companyName
        self.site = site
        self.email = email
        self.address = address
        self.phone = phone
        self.isLicensor = isLicensor
        self.hideAbout = hideAbout
        self.lastModified = lastModified
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case companyName
        case site
        case email
        case address
        case phone
        case isLicensor = "IsLicensor"
        case hideAbout
        case lastModified
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(companyName, forKey: .companyName)
        try container.encodeIfPresent(site, forKey: .site)
        try container.encodeIfPresent(email, forKey: .email)
        try container.encodeIfPresent(address, forKey: .address)
        try container.encodeIfPresent(phone, forKey: .phone)
        try container.encodeIfPresent(isLicensor, forKey: .isLicensor)
        try container.encodeIfPresent(hideAbout, forKey: .hideAbout)
        try container.encodeIfPresent(lastModified, forKey: .lastModified)
    }
}

