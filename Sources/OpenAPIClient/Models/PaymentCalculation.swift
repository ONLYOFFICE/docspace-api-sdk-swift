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

/** The parameters of the calculated payment amount. */
public struct PaymentCalculation: Sendable, Codable, Hashable {

    /** The operation unique identifier. */
    public var operationId: Int64?
    /** The calculated payment amount. */
    public var amount: Double?
    /** The three-character ISO 4217 currency symbol used for the payment calculation. */
    public var currency: String?
    /** The quantity associated with the payment calculation. */
    public var quantity: Int?

    public init(operationId: Int64? = nil, amount: Double? = nil, currency: String? = nil, quantity: Int? = nil) {
        self.operationId = operationId
        self.amount = amount
        self.currency = currency
        self.quantity = quantity
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case operationId
        case amount
        case currency
        case quantity
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(operationId, forKey: .operationId)
        try container.encodeIfPresent(amount, forKey: .amount)
        try container.encodeIfPresent(currency, forKey: .currency)
        try container.encodeIfPresent(quantity, forKey: .quantity)
    }
}

