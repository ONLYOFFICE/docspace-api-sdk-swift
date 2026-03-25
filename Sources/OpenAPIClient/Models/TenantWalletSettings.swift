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

/** The tenant wallet settings. */
public struct TenantWalletSettings: Sendable, Codable, Hashable {

    public static let minBalanceRule = NumericRule<Int>(minimum: 5, exclusiveMinimum: false, maximum: 1000, exclusiveMaximum: false, multipleOf: nil)
    public static let upToBalanceRule = NumericRule<Int>(minimum: 6, exclusiveMinimum: false, maximum: 5000, exclusiveMaximum: false, multipleOf: nil)
    /** Specifies whether automatic top-up for the tenant wallet is enabled. */
    public var enabled: Bool?
    /** The minimum wallet balance at which automatic top-up will be triggered. Must be between 5 and 1000. */
    public var minBalance: Int?
    /** The maximum wallet balance at which automatic top-up will be triggered. Must be between 6 and 5000. */
    public var upToBalance: Int?
    /** The three-character ISO 4217 currency symbol. */
    public var currency: String?
    /** The date and time when the tenant wallet settings were last modified. */
    public var lastModified: Date?

    public init(enabled: Bool? = nil, minBalance: Int? = nil, upToBalance: Int? = nil, currency: String? = nil, lastModified: Date? = nil) {
        self.enabled = enabled
        self.minBalance = minBalance
        self.upToBalance = upToBalance
        self.currency = currency
        self.lastModified = lastModified
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case enabled
        case minBalance
        case upToBalance
        case currency
        case lastModified
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(enabled, forKey: .enabled)
        try container.encodeIfPresent(minBalance, forKey: .minBalance)
        try container.encodeIfPresent(upToBalance, forKey: .upToBalance)
        try container.encodeIfPresent(currency, forKey: .currency)
        try container.encodeIfPresent(lastModified, forKey: .lastModified)
    }
}

