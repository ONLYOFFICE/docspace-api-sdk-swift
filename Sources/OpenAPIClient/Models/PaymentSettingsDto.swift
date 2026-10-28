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

/** Where to buy or extend the portal's subscription, and what the subscription in force looks like. */
public struct PaymentSettingsDto: Sendable, Codable, Hashable {

    /** The vendor mailbox to write to about buying, extending or changing the subscription, picked for the portal  language. It is not the portal's own support address. */
    public var salesEmail: String?
    /** Not populated: nothing fills this field in, so it always comes back empty. The help and support addresses  live in `externalResources` of `GET api/2.0/settings` instead. */
    public var feedbackAndSupportUrl: String?
    /** The vendor page for buying or extending the subscription, chosen for the licence kind the installation was  built for and for the portal language. It is a page for a person to open, not an API to call. */
    public var buyUrl: String?
    /** Whether this is a server installation someone administers themselves rather than a portal in the cloud,  which decides whether payment means uploading a licence file or a subscription in the vendor's store. */
    public var standalone: Bool
    /** The subscription in force, reduced to the two facts a payment page needs. */
    public var currentLicense: CurrentLicenseInfo
    /** The largest quantity of a paid item - members, storage - that may be bought in one go, `999` unless the  installation configures another cap. It bounds a single purchase, not the total a portal may hold. */
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

