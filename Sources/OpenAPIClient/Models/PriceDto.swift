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

/** The price parameters. */
public struct PriceDto: Sendable, Codable, Hashable {

    /** The price value. */
    public var value: Double?
    /** The currency symbol. */
    public var currencySymbol: String?
    /** The three-character ISO 4217 currency symbol. */
    public var isoCurrencySymbol: String?

    public init(value: Double? = nil, currencySymbol: String? = nil, isoCurrencySymbol: String? = nil) {
        self.value = value
        self.currencySymbol = currencySymbol
        self.isoCurrencySymbol = isoCurrencySymbol
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case value
        case currencySymbol
        case isoCurrencySymbol
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(value, forKey: .value)
        try container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
        try container.encodeIfPresent(isoCurrencySymbol, forKey: .isoCurrencySymbol)
    }
}

