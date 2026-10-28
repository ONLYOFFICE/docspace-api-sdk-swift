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

/** What one wallet service was consumed and cost over the requested period, added up rather than listed. */
public struct CustomerServiceUsageDto: Sendable, Codable, Hashable {

    /** The stable key of the service, which is what the `serviceName` filter of this operation matches on and  what `GET api/2.0/portal/payment/walletservice` looks a service up by. */
    public var service: String?
    /** The service name in the portal language, for printing rather than matching. */
    public var title: String?
    /** What `totalQuantity` counts, in the portal language. AI consumption is reported in tokens here rather  than in the AI credits the service is sold in, so it does not line up with the price list. */
    public var serviceUnit: String?
    /** The currency `totalAmount` and `price` are expressed in, as a three-letter ISO 4217 code. */
    public var currency: String?
    /** How many units of the service were consumed over the period, in the unit named by `serviceUnit`. */
    public var totalQuantity: Int?
    /** What that consumption cost over the period. It is what was actually charged, so it can differ from  `price` times `totalQuantity` when the price changed inside the period. */
    public var totalAmount: Double?
    /** How many separate charges the total was added up from. The charges themselves are in  `GET api/2.0/portal/payment/customer/operations`. */
    public var operationCount: Int?
    /** What one unit of the service costs today, not what it cost during the period. It is `0` when the service  is no longer on the installation's price list. */
    public var price: Double?
    /** Whether the service is billed as a standing subscription rather than per unit consumed. It is derived  from today's price list, so it describes the service as it is sold now. */
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

