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

/** Aggregated customer usage statistics for a service over a period. */
public struct CustomerServiceUsageDto: Sendable, Codable, Hashable {

    /** The name of the service. */
    public var service: String?
    /** The title of the service. */
    public var title: String?
    /** The unit of measurement for the service. */
    public var serviceUnit: String?
    /** The three-character ISO 4217 currency symbol of the amounts. */
    public var currency: String?
    /** The total number of units consumed. */
    public var totalQuantity: Int?
    /** The total amount charged for the service. */
    public var totalAmount: Double?
    /** The number of individual purchase operations. */
    public var operationCount: Int?
    /** The price of the service. */
    public var price: Double?
    /** Indicates whether the service is subscription-based. */
    public var subscription: Bool?

    public init(service: String? = nil, title: String? = nil, serviceUnit: String? = nil, currency: String? = nil, totalQuantity: Int? = nil, totalAmount: Double? = nil, operationCount: Int? = nil, price: Double? = nil, subscription: Bool? = nil) {
        self.service = service
        self.title = title
        self.serviceUnit = serviceUnit
        self.currency = currency
        self.totalQuantity = totalQuantity
        self.totalAmount = totalAmount
        self.operationCount = operationCount
        self.price = price
        self.subscription = subscription
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case service
        case title
        case serviceUnit
        case currency
        case totalQuantity
        case totalAmount
        case operationCount
        case price
        case subscription
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(service, forKey: .service)
        try container.encodeIfPresent(title, forKey: .title)
        try container.encodeIfPresent(serviceUnit, forKey: .serviceUnit)
        try container.encodeIfPresent(currency, forKey: .currency)
        try container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)
        try container.encodeIfPresent(totalAmount, forKey: .totalAmount)
        try container.encodeIfPresent(operationCount, forKey: .operationCount)
        try container.encodeIfPresent(price, forKey: .price)
        try container.encodeIfPresent(subscription, forKey: .subscription)
    }
}

