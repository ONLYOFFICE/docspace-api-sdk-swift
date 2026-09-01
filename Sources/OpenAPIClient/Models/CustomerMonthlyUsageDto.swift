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

/** Aggregated customer spending for a single calendar month. */
public struct CustomerMonthlyUsageDto: Sendable, Codable, Hashable {

    /** The calendar year. */
    public var year: Int?
    /** The calendar month (1-12). */
    public var month: Int?
    /** The three-character ISO 4217 currency symbol of the amounts. */
    public var currency: String?
    /** The total amount charged across all services in this month. */
    public var totalAmount: Double?
    /** The number of individual purchase operations in this month. */
    public var operationCount: Int?

    public init(year: Int? = nil, month: Int? = nil, currency: String? = nil, totalAmount: Double? = nil, operationCount: Int? = nil) {
        self.year = year
        self.month = month
        self.currency = currency
        self.totalAmount = totalAmount
        self.operationCount = operationCount
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case year
        case month
        case currency
        case totalAmount
        case operationCount
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(year, forKey: .year)
        try container.encodeIfPresent(month, forKey: .month)
        try container.encodeIfPresent(currency, forKey: .currency)
        try container.encodeIfPresent(totalAmount, forKey: .totalAmount)
        try container.encodeIfPresent(operationCount, forKey: .operationCount)
    }
}

