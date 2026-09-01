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

/** The information about the current subscription and its unused balance. */
public struct SubscriptionBalanceInfo: Sendable, Codable, Hashable {

    /** The total cost of the current billing period (the sum across all subscription items). */
    public var totalCost: Double?
    /** The three-character ISO 4217 currency symbol of the subscription. */
    public var currency: String?
    /** The start of the current billing period. */
    public var periodStart: Date?
    /** The end of the current billing period. */
    public var periodEnd: Date?
    /** The boundary of the used part of the period (the moment of the request). */
    public var periodUsedUntil: Date?
    /** The number of days elapsed since the start of the period (inclusive). */
    public var daysElapsed: Int?
    /** The unused balance of the subscription, in the subscription currency. */
    public var remainingBalance: Double?
    /** The unused balance of the subscription, converted to the wallet currency. */
    public var remainingBalanceInWalletCurrency: Double?
    /** The three-character ISO 4217 currency symbol of the wallet. */
    public var walletCurrency: String?

    public init(totalCost: Double? = nil, currency: String? = nil, periodStart: Date? = nil, periodEnd: Date? = nil, periodUsedUntil: Date? = nil, daysElapsed: Int? = nil, remainingBalance: Double? = nil, remainingBalanceInWalletCurrency: Double? = nil, walletCurrency: String? = nil) {
        self.totalCost = totalCost
        self.currency = currency
        self.periodStart = periodStart
        self.periodEnd = periodEnd
        self.periodUsedUntil = periodUsedUntil
        self.daysElapsed = daysElapsed
        self.remainingBalance = remainingBalance
        self.remainingBalanceInWalletCurrency = remainingBalanceInWalletCurrency
        self.walletCurrency = walletCurrency
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case totalCost
        case currency
        case periodStart
        case periodEnd
        case periodUsedUntil
        case daysElapsed
        case remainingBalance
        case remainingBalanceInWalletCurrency
        case walletCurrency
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(totalCost, forKey: .totalCost)
        try container.encodeIfPresent(currency, forKey: .currency)
        try container.encodeIfPresent(periodStart, forKey: .periodStart)
        try container.encodeIfPresent(periodEnd, forKey: .periodEnd)
        try container.encodeIfPresent(periodUsedUntil, forKey: .periodUsedUntil)
        try container.encodeIfPresent(daysElapsed, forKey: .daysElapsed)
        try container.encodeIfPresent(remainingBalance, forKey: .remainingBalance)
        try container.encodeIfPresent(remainingBalanceInWalletCurrency, forKey: .remainingBalanceInWalletCurrency)
        try container.encodeIfPresent(walletCurrency, forKey: .walletCurrency)
    }
}

