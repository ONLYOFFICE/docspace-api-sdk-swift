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

/** Represents a sub-account with a specific currency and balance. */
public struct SubAccount: Sendable, Codable, Hashable {

    /** The three-character ISO 4217 currency symbol of the sub-account. */
    public var currency: String?
    /** The balance of the sub-account in the specified currency. */
    public var amount: Double?

    public init(currency: String? = nil, amount: Double? = nil) {
        self.currency = currency
        self.amount = amount
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case currency
        case amount
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(currency, forKey: .currency)
        try container.encodeIfPresent(amount, forKey: .amount)
    }
}

