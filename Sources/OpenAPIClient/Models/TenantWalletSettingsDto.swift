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

/** The automatic wallet top-up settings of the portal, together with the low-balance warning state the portal keeps  for them. */
public struct TenantWalletSettingsDto: Sendable, Codable, Hashable {

    /** Whether the payment method on file is charged automatically when the wallet balance runs low. */
    public var enabled: Bool?
    /** The balance below which a top-up is charged, in `currency`; 0 while top-up has never been configured. */
    public var minBalance: Int?
    /** The balance a top-up brings the wallet up to, in `currency`; 0 while top-up has never been configured. */
    public var upToBalance: Int?
    /** The three-letter ISO 4217 code both amounts are expressed in, or `null` while top-up has never been configured. */
    public var currency: String?
    /** The wallet balance below which the portal sends its low-balance warning. The portal maintains it; it cannot be  set by a request. */
    public var lowBalanceThreshold: Int?
    /** Whether the low-balance warning has already been sent for the current dip below `lowBalanceThreshold`. The  portal maintains it, and switching top-up on re-arms it. */
    public var lowBalanceNotified: Bool?
    /** When the settings were last stored; when they were never stored, the moment they were read instead. */
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

