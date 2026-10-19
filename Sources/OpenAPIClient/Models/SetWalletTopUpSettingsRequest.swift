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

/** The part of the automatic top-up settings a payer chooses. The low-balance warning state is kept by the portal  itself and cannot be set here. */
public struct SetWalletTopUpSettingsRequest: Sendable, Codable, Hashable {

    public static let minBalanceRule = NumericRule<Int>(minimum: 5, exclusiveMinimum: false, maximum: 1000, exclusiveMaximum: false, multipleOf: nil)
    public static let upToBalanceRule = NumericRule<Int>(minimum: 6, exclusiveMinimum: false, maximum: 5000, exclusiveMaximum: false, multipleOf: nil)
    /** Whether the payment method on file is charged automatically when the wallet balance runs low. */
    public var enabled: Bool?
    /** The balance below which a top-up is charged, in `currency`. */
    public var minBalance: Int?
    /** The balance a top-up brings the wallet up to, in `currency`. */
    public var upToBalance: Int?
    /** The three-letter ISO 4217 code both amounts are expressed in; it has to be the currency of the wallet. */
    public var currency: String?
    /** Accepted for compatibility with earlier clients and not read: the server keeps its own value. */
    public var lowBalanceThreshold: Int?
    /** Accepted for compatibility with earlier clients and not read: the server keeps its own value. */
    public var lowBalanceNotified: Bool?
    /** Accepted for compatibility with earlier clients and not read: the server keeps its own value. */
    public var lastModified: Date?

    public init(enabled: Bool? = nil, minBalance: Int? = nil, upToBalance: Int? = nil, currency: String? = nil, lowBalanceThreshold: Int? = nil, lowBalanceNotified: Bool? = nil, lastModified: Date? = nil) {
        self.enabled = enabled
        self.minBalance = minBalance
        self.upToBalance = upToBalance
        self.currency = currency
        self.lowBalanceThreshold = lowBalanceThreshold
        self.lowBalanceNotified = lowBalanceNotified
        self.lastModified = lastModified
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case enabled
        case minBalance
        case upToBalance
        case currency
        case lowBalanceThreshold
        case lowBalanceNotified
        case lastModified
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(enabled, forKey: .enabled)
        try container.encodeIfPresent(minBalance, forKey: .minBalance)
        try container.encodeIfPresent(upToBalance, forKey: .upToBalance)
        try container.encodeIfPresent(currency, forKey: .currency)
        try container.encodeIfPresent(lowBalanceThreshold, forKey: .lowBalanceThreshold)
        try container.encodeIfPresent(lowBalanceNotified, forKey: .lowBalanceNotified)
        try container.encodeIfPresent(lastModified, forKey: .lastModified)
    }
}

