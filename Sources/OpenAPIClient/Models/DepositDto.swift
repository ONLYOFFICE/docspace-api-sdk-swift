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

/** One payment into the portal wallet: when it was made, how much it brought in, how it ended, and whether an  invoice stands behind it. */
public struct DepositDto: Sendable, Codable, Hashable {

    /** The identifier of the top-up, which is what `GET api/2.0/portal/payment/customer/deposits/{id}/invoice` takes  to read its invoice. */
    public var id: Int64?
    /** When the top-up was booked, as an ISO 8601 timestamp that carries its own offset: that of the portal's time  zone, written as `Z` for a portal in UTC - the zone in which `startDate` and `endDate` without an offset are  read. */
    public var date: ApiDateTime?
    /** The amount that went into the wallet, in `currency`. */
    public var amount: Double?
    /** The currency `amount` is expressed in, as a three-letter ISO 4217 code - the accounting currency of the  wallet. */
    public var currency: String?
    /** How the top-up ended. A pending one is still being settled and may change later, so only a completed one has  actually raised the balance. */
    public var status: OperationStatus?
    /** Whether the billing provider holds an invoice for the payment behind the top-up, which is when  `GET api/2.0/portal/payment/customer/deposits/{id}/invoice` can open it. It is `false` for a top-up whose  payment came without one, and asking for its invoice then fails with 404. */
    public var hasInvoice: Bool?

    public init(id: Int64? = nil, date: ApiDateTime? = nil, amount: Double? = nil, currency: String? = nil, status: OperationStatus? = nil, hasInvoice: Bool? = nil) {
        self.id = id
        self.date = date
        self.amount = amount
        self.currency = currency
        self.status = status
        self.hasInvoice = hasInvoice
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case date
        case amount
        case currency
        case status
        case hasInvoice
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(date, forKey: .date)
        try container.encodeIfPresent(amount, forKey: .amount)
        try container.encodeIfPresent(currency, forKey: .currency)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(hasInvoice, forKey: .hasInvoice)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension DepositDto: Identifiable {}
