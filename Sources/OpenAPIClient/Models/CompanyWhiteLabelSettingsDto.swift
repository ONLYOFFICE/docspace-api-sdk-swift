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

/** The vendor details the About page and the notification letters print, shared by the whole installation. */
public struct CompanyWhiteLabelSettingsDto: Sendable, Codable, Hashable {

    /** The vendor name the About page shows and the letters sign off with. Until details are saved it holds  whatever the installation ships as its built-in vendor, and it is empty on an installation that ships none. */
    public var companyName: String?
    /** The address the vendor name links to, as an absolute URL with its scheme. Empty under the same conditions  as `companyName`. */
    public var site: String?
    /** The mailbox the About page offers for reaching the vendor. It is not the portal's own support address, and  it is empty under the same conditions as `companyName`. */
    public var email: String?
    /** The postal address of the vendor as one free-form line, in the shape it was saved in - no structure is  imposed on it. */
    public var address: String?
    /** The telephone number of the vendor in the shape it was saved in, with no dialling format enforced. */
    public var phone: String?
    /** Whether these details are those of the licensor of the product itself rather than of a reseller. Saving  through `POST api/2.0/settings/rebranding/company` always clears it, so only details that came with the  installation can report `true`. */
    public var isLicensor: Bool
    /** Whether the About page is hidden from the interface. A plan that does not include branding cannot switch it  on: the value is stored as `false` in that case, so it can come back different from what was saved. */
    public var hideAbout: Bool
    /** Whether every field above still matches the installation's built-in vendor details. It turns `false` as  soon as one of them is saved differently and `true` again after  `DELETE api/2.0/settings/rebranding/company`. */
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

