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

/** The currencies parameters. */
public struct CurrenciesDto: Sendable, Codable, Hashable {

    /** The ISO country code. */
    public var isoCountryCode: String?
    /** The ISO currency symbol. */
    public var isoCurrencySymbol: String?
    /** The currency native name. */
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

