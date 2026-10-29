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

/** What has been spent against a spending limit in its current period, and what is left. */
public struct ServiceLimitUsageDto: Sendable, Codable, Hashable {

    /** The start of the current period, in UTC. */
    public var periodStart: Date?
    /** The end of the current period, in UTC: the moment the spending starts again from zero. Null for a lifetime  limit, which never resets. */
    public var periodEnd: Date?
    /** The money charged in the current period, in the currency of the limit. */
    public var amountConsumed: Double?
    /** The money still available in the current period: the threshold less what was charged and what is reserved for  operations in progress, never below zero. Null when the limit has no money threshold. */
    public var amountAvailable: Double?
    /** The quantity consumed in the current period, in the unit of the limit. */
    public var quantityConsumed: Int?
    /** The quantity still available in the current period, never below zero; null when the limit has no quantity  threshold. */
    public var quantityAvailable: Int?

    public init(periodStart: Date? = nil, periodEnd: Date? = nil, amountConsumed: Double? = nil, amountAvailable: Double? = nil, quantityConsumed: Int? = nil, quantityAvailable: Int? = nil) {
        self.periodStart = periodStart
        self.periodEnd = periodEnd
        self.amountConsumed = amountConsumed
        self.amountAvailable = amountAvailable
        self.quantityConsumed = quantityConsumed
        self.quantityAvailable = quantityAvailable
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case periodStart
        case periodEnd
        case amountConsumed
        case amountAvailable
        case quantityConsumed
        case quantityAvailable
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(periodStart, forKey: .periodStart)
        try container.encodeIfPresent(periodEnd, forKey: .periodEnd)
        try container.encodeIfPresent(amountConsumed, forKey: .amountConsumed)
        try container.encodeIfPresent(amountAvailable, forKey: .amountAvailable)
        try container.encodeIfPresent(quantityConsumed, forKey: .quantityConsumed)
        try container.encodeIfPresent(quantityAvailable, forKey: .quantityAvailable)
    }
}

