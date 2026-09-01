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

/** The upcoming payment parameters. */
public struct UpcomingPaymentDto: Sendable, Codable, Hashable {

    /** The quota ID. */
    public var id: Int?
    /** The quota name. */
    public var name: String?
    /** The quota title. */
    public var title: String?
    /** The quota unit of measure. */
    public var unitOfMeasure: String?
    /** The quantity that will be charged (the next quantity if set, otherwise the current quantity). */
    public var quantity: Int?
    /** The quota applies to the wallet or not. */
    public var wallet: Bool?
    /** The due date of the upcoming payment in the portal time zone. */
    public var dueDate: Date?
    /** The amount that will be charged (unit price multiplied by the quantity). */
    public var amount: Double?
    /** The three-character ISO 4217 currency symbol of the amount. */
    public var currency: String?

    public init(id: Int? = nil, name: String? = nil, title: String? = nil, unitOfMeasure: String? = nil, quantity: Int? = nil, wallet: Bool? = nil, dueDate: Date? = nil, amount: Double? = nil, currency: String? = nil) {
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
