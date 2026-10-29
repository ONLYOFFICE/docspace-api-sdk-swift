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

/** A spending limit on the AI services: for the portal as a whole, for every user, or for one user. */
public struct ServiceLimitDto: Sendable, Codable, Hashable {

    /** The service limit ID, used to read, change, switch off or delete the limit. In the list of the users the same  ID repeats for every user the limit for every user applies to. */
    public var id: Int?
    /** The limited service group; the AI services are `ai-services`. */
    public var serviceGroupName: String?
    /** The number of the billing account of the portal the limit belongs to. */
    public var customerAccountNumber: Int?
    /** Whom the limit applies to. */
    public var scope: ServiceLimitScope?
    /** The ID of the portal user the limit applies to: the user of a personal limit, or, in the list of the users, the  user a limit for every user applies to. Null for a limit of the portal as a whole, and for a limit for every  user read on its own. */
    public var userId: UUID?
    /** The most money the AI services may cost per period, in `currency`; null when the limit has no money threshold. */
    public var amountValue: Double?
    /** The currency `amountValue` is expressed in; null when the limit has no money threshold. */
    public var currency: String?
    /** The largest quantity the AI services may consume per period, in `serviceUnit`; null when the limit has no  quantity threshold. */
    public var quantityValue: Int?
    /** The unit `quantityValue` is expressed in; null when the limit has no quantity threshold. */
    public var serviceUnit: String?
    /** The window the thresholds apply to. A day, week or month resets at the start of the next one in UTC (a week on  Monday), not a fixed time after the first charge; a lifetime limit never resets. */
    public var period: ServiceLimitPeriod?
    /** The last moment of the current period, in UTC, after which the spending starts over from zero; null for a  lifetime limit, which never resets. Filled for every limit, the limit for every user included, whose spending is  counted per user. */
    public var periodEnd: Date?
    /** The moment a lifetime limit counts from, in UTC; null for the other periods. */
    public var usageFrom: Date?
    /** Whether the limit is in force. A switched-off limit no longer restricts the AI services and can be switched  back on. */
    public var enabled: Bool?
    /** The date and time when the limit was created, in UTC. */
    public var created: Date?
    /** The date and time when the limit was last changed, in UTC. */
    public var modified: Date?
    /** What was spent against the limit in its current period and what is left. Filled for the limit of the portal as  a whole and in the list of the users; null where the spending is not read, such as for a limit read by its ID  or the limit for every user, whose spending is counted per user. */
    public var usage: ServiceLimitUsageDto?

    public init(id: Int? = nil, serviceGroupName: String? = nil, customerAccountNumber: Int? = nil, scope: ServiceLimitScope? = nil, userId: UUID? = nil, amountValue: Double? = nil, currency: String? = nil, quantityValue: Int? = nil, serviceUnit: String? = nil, period: ServiceLimitPeriod? = nil, periodEnd: Date? = nil, usageFrom: Date? = nil, enabled: Bool? = nil, created: Date? = nil, modified: Date? = nil, usage: ServiceLimitUsageDto? = nil) {
        self.id = id
        self.serviceGroupName = serviceGroupName
        self.customerAccountNumber = customerAccountNumber
        self.scope = scope
        self.userId = userId
        self.amountValue = amountValue
        self.currency = currency
        self.quantityValue = quantityValue
        self.serviceUnit = serviceUnit
        self.period = period
        self.periodEnd = periodEnd
        self.usageFrom = usageFrom
        self.enabled = enabled
        self.created = created
        self.modified = modified
        self.usage = usage
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case serviceGroupName
        case customerAccountNumber
        case scope
        case userId
        case amountValue
        case currency
        case quantityValue
        case serviceUnit
        case period
        case periodEnd
        case usageFrom
        case enabled
        case created
        case modified
        case usage
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(serviceGroupName, forKey: .serviceGroupName)
        try container.encodeIfPresent(customerAccountNumber, forKey: .customerAccountNumber)
        try container.encodeIfPresent(scope, forKey: .scope)
        try container.encodeIfPresent(userId, forKey: .userId)
        try container.encodeIfPresent(amountValue, forKey: .amountValue)
        try container.encodeIfPresent(currency, forKey: .currency)
        try container.encodeIfPresent(quantityValue, forKey: .quantityValue)
        try container.encodeIfPresent(serviceUnit, forKey: .serviceUnit)
        try container.encodeIfPresent(period, forKey: .period)
        try container.encodeIfPresent(periodEnd, forKey: .periodEnd)
        try container.encodeIfPresent(usageFrom, forKey: .usageFrom)
        try container.encodeIfPresent(enabled, forKey: .enabled)
        try container.encodeIfPresent(created, forKey: .created)
        try container.encodeIfPresent(modified, forKey: .modified)
        try container.encodeIfPresent(usage, forKey: .usage)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension ServiceLimitDto: Identifiable {}
