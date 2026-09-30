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

/** Represents a price of the service. */
public struct ServicePriceInfo: Sendable, Codable, Hashable {

    /** The price unique identifier. */
    public var id: Int?
    /** The account number. */
    public var accountNumber: Int?
    /** The service ID. */
    public var serviceId: Int?
    /** The time unit the price is bound to. */
    public var timeUnit: PriceTimeUnit?
    /** The cost price. */
    public var costPrice: Double?
    /** The extra charge added to the cost price. */
    public var extraCharge: Double?
    /** The resulting service price. */
    public var servicePrice: Double?
    /** The quota the price is set for. */
    public var quota: Double?
    /** The period the price is effective in. */
    public var timeBound: TimeBound?
    /** The price status. */
    public var status: PriceStatus?
    /** The date and time when the price was created. */
    public var created: Date?
    /** The discount category ID. */
    public var discountCategoryId: Int?
    /** The discount category. */
    public var discountCategory: DiscountCategory?

    public init(id: Int? = nil, accountNumber: Int? = nil, serviceId: Int? = nil, timeUnit: PriceTimeUnit? = nil, costPrice: Double? = nil, extraCharge: Double? = nil, servicePrice: Double? = nil, quota: Double? = nil, timeBound: TimeBound? = nil, status: PriceStatus? = nil, created: Date? = nil, discountCategoryId: Int? = nil, discountCategory: DiscountCategory? = nil) {
        self.id = id
        self.accountNumber = accountNumber
        self.serviceId = serviceId
        self.timeUnit = timeUnit
        self.costPrice = costPrice
        self.extraCharge = extraCharge
        self.servicePrice = servicePrice
        self.quota = quota
        self.timeBound = timeBound
        self.status = status
        self.created = created
        self.discountCategoryId = discountCategoryId
        self.discountCategory = discountCategory
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case accountNumber
        case serviceId
        case timeUnit
        case costPrice
        case extraCharge
        case servicePrice
        case quota
        case timeBound
        case status
        case created
        case discountCategoryId
        case discountCategory
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(accountNumber, forKey: .accountNumber)
        try container.encodeIfPresent(serviceId, forKey: .serviceId)
        try container.encodeIfPresent(timeUnit, forKey: .timeUnit)
        try container.encodeIfPresent(costPrice, forKey: .costPrice)
        try container.encodeIfPresent(extraCharge, forKey: .extraCharge)
        try container.encodeIfPresent(servicePrice, forKey: .servicePrice)
        try container.encodeIfPresent(quota, forKey: .quota)
        try container.encodeIfPresent(timeBound, forKey: .timeBound)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(created, forKey: .created)
        try container.encodeIfPresent(discountCategoryId, forKey: .discountCategoryId)
        try container.encodeIfPresent(discountCategory, forKey: .discountCategory)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension ServicePriceInfo: Identifiable {}
