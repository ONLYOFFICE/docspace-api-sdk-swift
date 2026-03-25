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

/** The tariff parameters. */
public struct Tariff: Sendable, Codable, Hashable {

    /** The tariff ID. */
    public var id: Int?
    public var state: TariffState?
    /** The tariff due date. */
    public var dueDate: Date
    /** The tariff delay due date. */
    public var delayDueDate: Date?
    /** The tariff license date. */
    public var licenseDate: Date?
    /** The tariff customer ID. */
    public var customerId: String?
    /** The list of tariff quotas. */
    public var quotas: [Quota]?
    /** The list of overdue tariff quotas. */
    public var overdueQuotas: [Quota]?

    public init(id: Int? = nil, state: TariffState? = nil, dueDate: Date, delayDueDate: Date? = nil, licenseDate: Date? = nil, customerId: String? = nil, quotas: [Quota]?, overdueQuotas: [Quota]? = nil) {
        self.id = id
        self.state = state
        self.dueDate = dueDate
        self.delayDueDate = delayDueDate
        self.licenseDate = licenseDate
        self.customerId = customerId
        self.quotas = quotas
        self.overdueQuotas = overdueQuotas
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case state
        case dueDate
        case delayDueDate
        case licenseDate
        case customerId
        case quotas
        case overdueQuotas
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(state, forKey: .state)
        try container.encode(dueDate, forKey: .dueDate)
        try container.encodeIfPresent(delayDueDate, forKey: .delayDueDate)
        try container.encodeIfPresent(licenseDate, forKey: .licenseDate)
        try container.encodeIfPresent(customerId, forKey: .customerId)
        try container.encode(quotas, forKey: .quotas)
        try container.encodeIfPresent(overdueQuotas, forKey: .overdueQuotas)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension Tariff: Identifiable {}
