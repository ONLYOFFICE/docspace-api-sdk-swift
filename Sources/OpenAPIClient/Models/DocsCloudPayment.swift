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

/** Represents the payment information of a DocsCloud tenant. */
public struct DocsCloudPayment: Sendable, Codable, Hashable {

    /** The cart ID. */
    public var cartId: String?
    /** The product ID. */
    public var productId: Int?
    /** The payment status. */
    public var status: Int?
    /** The interval unit. */
    public var intervalUnit: Int?
    /** Whether the payment interval is yearly. */
    public var isYear: Bool?
    /** Whether the payment is prepaid. */
    public var isPrepaid: Bool?
    /** The quantity. */
    public var quantity: Int?
    /** The three-character ISO 4217 currency symbol of the payment. */
    public var currency: String?

    public init(cartId: String? = nil, productId: Int? = nil, status: Int? = nil, intervalUnit: Int? = nil, isYear: Bool? = nil, isPrepaid: Bool? = nil, quantity: Int? = nil, currency: String? = nil) {
        self.cartId = cartId
        self.productId = productId
        self.status = status
        self.intervalUnit = intervalUnit
        self.isYear = isYear
        self.isPrepaid = isPrepaid
        self.quantity = quantity
        self.currency = currency
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case cartId
        case productId
        case status
        case intervalUnit
        case isYear
        case isPrepaid
        case quantity
        case currency
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(cartId, forKey: .cartId)
        try container.encodeIfPresent(productId, forKey: .productId)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(intervalUnit, forKey: .intervalUnit)
        try container.encodeIfPresent(isYear, forKey: .isYear)
        try container.encodeIfPresent(isPrepaid, forKey: .isPrepaid)
        try container.encodeIfPresent(quantity, forKey: .quantity)
        try container.encodeIfPresent(currency, forKey: .currency)
    }
}

