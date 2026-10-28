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

/** What the portal spent from its wallet in one calendar month, added up across every service. */
public struct CustomerMonthlyUsageDto: Sendable, Codable, Hashable {

    /** The year the month belongs to. Months are cut in the portal time zone, so a movement at the edge of a  month falls where the portal sees it and not where UTC does. */
    public var year: Int?
    /** The month itself, January being 1. Only months that had spending appear at all, so a gap in the list is a  month with nothing in it rather than missing data. */
    public var month: Int?
    /** The currency `totalAmount` is expressed in, as a three-letter ISO 4217 code - the accounting currency of  the wallet. */
    public var currency: String?
    /** What the month came to across every service, as a positive amount spent rather than a signed balance. */
    public var totalAmount: Double?
    /** How many separate movements that total was added up from, for a client that wants to show the weight  behind a figure. The movements themselves are in `GET api/2.0/portal/payment/customer/operations`. */
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

