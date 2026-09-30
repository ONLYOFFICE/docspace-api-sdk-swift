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

/** The subscription this portal runs on: its state, the end of the current period, and the quotas it is made of. */
public struct TariffDto: Sendable, Codable, Hashable {

    /** Whether the installation runs the open-source build, which has no paid plan at all. This flag and the two  below describe the build rather than the subscription, and all three are left empty for a caller without  the portal-settings right. */
    public var openSource: Bool?
    /** Whether the installation runs on an Enterprise licence file, which is what makes the licence operations  under `api/2.0/settings/license` usable. */
    public var enterprise: Bool?
    /** Whether the installation runs on a Developer licence, an Enterprise licence meant for embedding rather  than for production use. */
    public var developer: Bool?
    /** The identifier of the subscription record itself, for quoting when a charge has to be traced. It is filled  in for a caller with the portal-settings right only, and nothing accepts it as an argument. */
    public var id: Int?
    /** How the subscription stands: on trial, paid, inside the grace period that follows the due date, or unpaid.  It is the one field every caller gets, whatever their role, so a client can warn about payment without  needing administrator rights. */
    public var state: TariffState?
    /** When the current period ends, in the portal time zone. It is filled in for a room or DocSpace  administrator only, and set to the largest value a date can hold for a subscription that never ends. */
    public var dueDate: ApiDateTime?
    /** When the grace period after `dueDate` runs out and the portal is cut off, in the portal time zone. Filled  in under the same conditions as `dueDate`, and equal to it when the plan grants no grace period. */
    public var delayDueDate: ApiDateTime?
    /** When the licence file behind the subscription was issued, in the portal time zone. It is meaningful on a  server installation and filled in for a caller with the portal-settings right only. */
    public var licenseDate: ApiDateTime?
    /** The account in the billing system the subscription is charged to, empty for a portal that has never been  billed. Filled in for a caller with the portal-settings right only. */
    public var customerId: String?
    /** The quotas the subscription is made of - the plan itself and its add-ons - with the overdue ones listed  alongside the current ones, so an entry here is not proof that it is still being paid for; read each  entry's own `state` for that. Filled in for a caller with the portal-settings right only. */
    public var quotas: [TariffQuotaDto]?

    public init(openSource: Bool? = nil, enterprise: Bool? = nil, developer: Bool? = nil, id: Int? = nil, state: TariffState? = nil, dueDate: ApiDateTime? = nil, delayDueDate: ApiDateTime? = nil, licenseDate: ApiDateTime? = nil, customerId: String? = nil, quotas: [TariffQuotaDto]? = nil) {
        self.openSource = openSource
        self.enterprise = enterprise
        self.developer = developer
        self.id = id
        self.state = state
        self.dueDate = dueDate
        self.delayDueDate = delayDueDate
        self.licenseDate = licenseDate
        self.customerId = customerId
        self.quotas = quotas
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case openSource
        case enterprise
        case developer
        case id
        case state
        case dueDate
        case delayDueDate
        case licenseDate
        case customerId
        case quotas
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(openSource, forKey: .openSource)
        try container.encodeIfPresent(enterprise, forKey: .enterprise)
        try container.encodeIfPresent(developer, forKey: .developer)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(state, forKey: .state)
        try container.encodeIfPresent(dueDate, forKey: .dueDate)
        try container.encodeIfPresent(delayDueDate, forKey: .delayDueDate)
        try container.encodeIfPresent(licenseDate, forKey: .licenseDate)
        try container.encodeIfPresent(customerId, forKey: .customerId)
        try container.encodeIfPresent(quotas, forKey: .quotas)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension TariffDto: Identifiable {}
