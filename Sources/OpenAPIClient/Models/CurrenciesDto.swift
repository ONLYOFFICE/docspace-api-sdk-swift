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

/** One currency the portal's subscription prices can be quoted in, with the region it belongs to. */
public struct CurrenciesDto: Sendable, Codable, Hashable {

    /** The two-letter ISO code of the country the currency is that of, which is the region the price list was  picked for rather than the country of the caller. */
    public var isoCountryCode: String?
    /** The three-letter ISO 4217 code of the currency. On the first item of the answer it is the currency the  amounts from `GET api/2.0/portal/payment/prices` are expressed in. */
    public var isoCurrencySymbol: String?
    /** The currency name in the language of its own region - not in the portal language, and not a symbol. */
    public var currencyNativeName: String?

    public init(isoCountryCode: String? = nil, isoCurrencySymbol: String? = nil, currencyNativeName: String? = nil) {
        self.isoCountryCode = isoCountryCode
        self.isoCurrencySymbol = isoCurrencySymbol
        self.currencyNativeName = currencyNativeName
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case isoCountryCode
        case isoCurrencySymbol
        case currencyNativeName
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(isoCountryCode, forKey: .isoCountryCode)
        try container.encodeIfPresent(isoCurrencySymbol, forKey: .isoCurrencySymbol)
        try container.encodeIfPresent(currencyNativeName, forKey: .currencyNativeName)
    }
}

