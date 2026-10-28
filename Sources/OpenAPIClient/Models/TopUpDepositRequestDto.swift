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

/** How much money is charged to the payment method on file and added to the portal wallet. */
public struct TopUpDepositRequestDto: Sendable, Codable, Hashable {

    public static let amountRule = NumericRule<Int>(minimum: 1, exclusiveMinimum: false, maximum: 999999, exclusiveMaximum: false, multipleOf: nil)
    public static let currencyRule = StringRule(minLength: 0, maxLength: 3, pattern: nil)
    /** The sum to charge, as a whole number of units of `currency` - 10 means ten dollars and not ten cents. The  bounds are what one call may move, not what the wallet may hold, so a larger top-up is made of several calls. */
    public var amount: Int?
    /** The currency the charge is made in, as an ISO 4217 code in upper case. It has to be one of the accounting  currencies this installation supports, which `GET api/2.0/portal/payment/accounting/currencies` lists; any  other code is refused with 400. The money lands on the wallet sub-account of that currency, so topping up in  a second currency does not add to the first one. */
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

