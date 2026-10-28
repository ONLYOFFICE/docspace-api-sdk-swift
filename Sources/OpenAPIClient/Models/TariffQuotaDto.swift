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

/** One quota the subscription is made of - the plan itself or an add-on - with its quantity and its own deadline. */
public struct TariffQuotaDto: Sendable, Codable, Hashable {

    /** The quota this entry stands for. `GET api/2.0/portal/payment/quotas` describes the quota behind the ID,  including what its `quantity` counts; a negative ID belongs to a built-in quota rather than a purchased  one. */
    public var id: Int?
    /** How much of the quota the portal holds, in whatever the quota itself is measured in - seats for a plan,  gigabytes for storage. It is `1` for a quota that is simply on or off. */
    public var quantity: Int?
    /** Whether the quota is paid for out of the portal wallet as it is consumed, rather than being part of the  subscription charged per period. */
    public var wallet: Bool?
    /** Whether this is an add-on bought on top of the plan rather than the plan itself. Exactly one entry of  `quotas` is the plan, and the rest are add-ons. */
    public var additional: Bool?
    /** When this quota runs out, in the portal time zone. An add-on can end earlier or later than the  subscription; a quota with no deadline of its own reports the subscription's `dueDate` instead of an empty  value. */
    public var dueDate: ApiDateTime?
    /** The quantity the next period is going to be charged for, when a change has been scheduled. It is empty  while `quantity` simply carries over. */
    public var nextQuantity: Int?
    /** The quota this one is scheduled to be replaced by at the start of the next period, empty when no such  switch is planned. `GET api/2.0/portal/tariff/upcoming` already reports the charge for the replacement. */
    public var nextQuota: Int?
    /** Whether the quota is still running or its deadline has passed. It is empty for a quota that has no  deadline of its own, which means it lasts as long as the subscription does. */
    public var state: QuotaState?

    public init(id: Int? = nil, quantity: Int? = nil, wallet: Bool? = nil, additional: Bool? = nil, dueDate: ApiDateTime? = nil, nextQuantity: Int? = nil, nextQuota: Int? = nil, state: QuotaState? = nil) {
        self.id = id
        self.quantity = quantity
        self.wallet = wallet
        self.additional = additional
        self.dueDate = dueDate
        self.nextQuantity = nextQuantity
        self.nextQuota = nextQuota
        self.state = state
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case quantity
        case wallet
        case additional
        case dueDate
        case nextQuantity
        case nextQuota
        case state
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(quantity, forKey: .quantity)
        try container.encodeIfPresent(wallet, forKey: .wallet)
        try container.encodeIfPresent(additional, forKey: .additional)
        try container.encodeIfPresent(dueDate, forKey: .dueDate)
        try container.encodeIfPresent(nextQuantity, forKey: .nextQuantity)
        try container.encodeIfPresent(nextQuota, forKey: .nextQuota)
        try container.encodeIfPresent(state, forKey: .state)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension TariffQuotaDto: Identifiable {}
