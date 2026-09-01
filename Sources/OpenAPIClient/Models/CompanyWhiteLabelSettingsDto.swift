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
public struct CompanyWhiteLabelSettingsDto: Sendable, Codable, Hashable {

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
    public var isLicensor: Bool
    /** Specifies if the About page is visible or not. */
    public var hideAbout: Bool
    /** Specifies if these settings are default or not. */
    public var isDefault: Bool

    public init(companyName: String?, site: String?, email: String?, address: String?, phone: String?, isLicensor: Bool, hideAbout: Bool, isDefault: Bool) {
        self.companyName = companyName
        self.site = site
        self.email = email
        self.address = address
        self.phone = phone
        self.isLicensor = isLicensor
        self.hideAbout = hideAbout
        self.isDefault = isDefault
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case companyName
        case site
        case email
        case address
        case phone
        case isLicensor
        case hideAbout
        case isDefault
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(companyName, forKey: .companyName)
        try container.encode(site, forKey: .site)
        try container.encode(email, forKey: .email)
        try container.encode(address, forKey: .address)
        try container.encode(phone, forKey: .phone)
        try container.encode(isLicensor, forKey: .isLicensor)
        try container.encode(hideAbout, forKey: .hideAbout)
        try container.encode(isDefault, forKey: .isDefault)
    }
}

