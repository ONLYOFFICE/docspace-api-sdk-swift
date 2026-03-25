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

/** The request parameters for putting money on deposit. */
public struct TopUpDepositRequestDto: Sendable, Codable, Hashable {

    public static let amountRule = NumericRule<Int>(minimum: 1, exclusiveMinimum: false, maximum: 999999, exclusiveMaximum: false, multipleOf: nil)
    /** The amount of money for the operation. */
    public var amount: Int?
    /** The three-character ISO 4217 currency symbol. */
    public var currency: String?

    public init(amount: Int? = nil, currency: String? = nil) {
        self.amount = amount
        self.currency = currency
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case amount
        case currency
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(amount, forKey: .amount)
        try container.encodeIfPresent(currency, forKey: .currency)
    }
}

