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

/** The payment settings parameters. */
public struct PaymentSettingsDto: Sendable, Codable, Hashable {

    /** The email address for sales inquiries and support. */
    public var salesEmail: String?
    /** The URL for accessing the feedback and support resources. */
    public var feedbackAndSupportUrl: String?
    /** The URL for purchasing or upgrading the product. */
    public var buyUrl: String?
    /** Indicates whether the system is running in standalone mode. */
    public var standalone: Bool
    public var currentLicense: CurrentLicenseInfo
    /** The maximum quota quantity. */
    public var max: Int

    public init(salesEmail: String?, feedbackAndSupportUrl: String? = nil, buyUrl: String?, standalone: Bool, currentLicense: CurrentLicenseInfo, max: Int) {
        self.salesEmail = salesEmail
        self.feedbackAndSupportUrl = feedbackAndSupportUrl
        self.buyUrl = buyUrl
        self.standalone = standalone
        self.currentLicense = currentLicense
        self.max = max
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case salesEmail
        case feedbackAndSupportUrl
        case buyUrl
        case standalone
        case currentLicense
        case max
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(salesEmail, forKey: .salesEmail)
        try container.encodeIfPresent(feedbackAndSupportUrl, forKey: .feedbackAndSupportUrl)
        try container.encode(buyUrl, forKey: .buyUrl)
        try container.encode(standalone, forKey: .standalone)
        try container.encode(currentLicense, forKey: .currentLicense)
        try container.encode(max, forKey: .max)
    }
}

