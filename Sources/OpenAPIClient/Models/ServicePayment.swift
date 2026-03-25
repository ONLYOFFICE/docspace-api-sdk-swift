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

/** Represents service payment information. */
public struct ServicePayment: Sendable, Codable, Hashable {

    /** The payment operation ID. */
    public var operationId: Int?
    /** The balance of the sub-account in the specified currency. */
    public var amount: Double?
    /** The three-character ISO 4217 currency symbol. */
    public var currency: String?
    /** Total quantity of operations. */
    public var quantity: Int?
    /** The subscription ID */
    public var subscriptionId: Int?
    /** The subscription start date. */
    public var startDate: Date?
    /** The subscription end date. */
    public var endDate: Date?

    public init(operationId: Int? = nil, amount: Double? = nil, currency: String? = nil, quantity: Int? = nil, subscriptionId: Int? = nil, startDate: Date? = nil, endDate: Date? = nil) {
        self.operationId = operationId
        self.amount = amount
        self.currency = currency
        self.quantity = quantity
        self.subscriptionId = subscriptionId
        self.startDate = startDate
        self.endDate = endDate
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case operationId
        case amount
        case currency
        case quantity
        case subscriptionId
        case startDate
        case endDate
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(operationId, forKey: .operationId)
        try container.encodeIfPresent(amount, forKey: .amount)
        try container.encodeIfPresent(currency, forKey: .currency)
        try container.encodeIfPresent(quantity, forKey: .quantity)
        try container.encodeIfPresent(subscriptionId, forKey: .subscriptionId)
        try container.encodeIfPresent(startDate, forKey: .startDate)
        try container.encodeIfPresent(endDate, forKey: .endDate)
    }
}

