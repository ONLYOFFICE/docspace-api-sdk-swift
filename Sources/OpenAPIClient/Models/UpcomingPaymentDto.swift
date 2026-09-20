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

/** One charge the portal is going to be billed for at the start of the next period. */
public struct UpcomingPaymentDto: Sendable, Codable, Hashable {

    /** The quota that is going to be charged. When a switch to another quota is scheduled, this is the quota  being switched to, so it can differ from what `GET api/2.0/portal/tariff` reports for today. */
    public var id: Int?
    /** The quota's stable key, which is the same identifier the wallet operations use for a service. */
    public var name: String?
    /** The quota name in the portal language, meant to be printed on an invoice preview. */
    public var title: String?
    /** What `quantity` counts, in the portal language - seats, administrators, gigabytes. It is empty for a quota  that is simply on or off. */
    public var unitOfMeasure: String?
    /** How much is going to be charged for, which is the quantity scheduled for the next period when one has been  scheduled and today's quantity otherwise. */
    public var quantity: Int?
    /** Whether the charge is paid out of the portal wallet rather than from the subscription. */
    public var wallet: Bool?
    /** When the charge falls due, in the portal time zone. */
    public var dueDate: ApiDateTime?
    /** What the charge comes to: the unit price of the quota multiplied by `quantity`. Taxes are not part of it,  and a quota with no price of its own is not listed at all rather than listed with a zero. */
    public var amount: Double?
    /** The currency `amount` is expressed in, as a three-letter ISO 4217 code. It follows the portal's billing  account, so every entry of one answer carries the same code. */
    public var currency: String?

    public init(id: Int? = nil, name: String? = nil, title: String? = nil, unitOfMeasure: String? = nil, quantity: Int? = nil, wallet: Bool? = nil, dueDate: ApiDateTime? = nil, amount: Double? = nil, currency: String? = nil) {
        self.id = id
        self.name = name
        self.title = title
        self.unitOfMeasure = unitOfMeasure
        self.quantity = quantity
        self.wallet = wallet
        self.dueDate = dueDate
        self.amount = amount
        self.currency = currency
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case title
        case unitOfMeasure
        case quantity
        case wallet
        case dueDate
        case amount
        case currency
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(title, forKey: .title)
        try container.encodeIfPresent(unitOfMeasure, forKey: .unitOfMeasure)
        try container.encodeIfPresent(quantity, forKey: .quantity)
        try container.encodeIfPresent(wallet, forKey: .wallet)
        try container.encodeIfPresent(dueDate, forKey: .dueDate)
        try container.encodeIfPresent(amount, forKey: .amount)
        try container.encodeIfPresent(currency, forKey: .currency)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension UpcomingPaymentDto: Identifiable {}
