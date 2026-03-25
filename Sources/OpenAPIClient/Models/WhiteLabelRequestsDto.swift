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

/** The request parameters for configuring the white label branding settings. */
public struct WhiteLabelRequestsDto: Sendable, Codable, Hashable {

    public static let logoTextRule = StringRule(minLength: 0, maxLength: 40, pattern: nil)
    /** The text to display alongside or in place of the logo. */
    public var logoText: String?
    /** The white label tenant IDs with their logos (light or dark). */
    public var logo: [ItemKeyValuePairStringLogoRequestsDto]?

    public init(logoText: String? = nil, logo: [ItemKeyValuePairStringLogoRequestsDto]? = nil) {
        self.logoText = logoText
        self.logo = logo
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case logoText
        case logo
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(logoText, forKey: .logoText)
        try container.encodeIfPresent(logo, forKey: .logo)
    }
}

