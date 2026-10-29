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

/** The spending limit to create on the AI services: for the portal as a whole, for every user, or for one user. */
public struct CreateServiceLimitRequestDto: Sendable, Codable, Hashable {

    public static let amountValueRule = NumericRule<Double>(minimum: 0, exclusiveMinimum: false, maximum: 10000, exclusiveMaximum: false, multipleOf: nil)
    public static let quantityValueRule = NumericRule<Int>(minimum: 0, exclusiveMinimum: false, maximum: 2147483647, exclusiveMaximum: false, multipleOf: nil)
    /** Whom the limit applies to. */
    public var scope: ServiceLimitScope?
    /** The ID of the portal user a personal limit is set for, as returned in `id` by the people operations. */
    public var userId: UUID?
    /** The most money the AI services may cost per period, in their currency, which cannot be chosen. Zero blocks the  AI services completely. */
    public var amountValue: Double?
    /** The largest quantity the AI services may consume per period, in their common unit. Zero blocks the AI services  completely. */
    public var quantityValue: Int?
    /** The window the thresholds apply to, in UTC. A day, week or month is calendar-aligned rather than rolling - a  daily limit resets at midnight UTC, a weekly one on Monday - while a lifetime limit counts from its creation and  never resets. */
    public var period: ServiceLimitPeriod?

    public init(scope: ServiceLimitScope? = nil, userId: UUID? = nil, amountValue: Double? = nil, quantityValue: Int? = nil, period: ServiceLimitPeriod? = nil) {
        self.scope = scope
        self.userId = userId
        self.amountValue = amountValue
        self.quantityValue = quantityValue
        self.period = period
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case scope
        case userId
        case amountValue
        case quantityValue
        case period
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(scope, forKey: .scope)
        try container.encodeIfPresent(userId, forKey: .userId)
        try container.encodeIfPresent(amountValue, forKey: .amountValue)
        try container.encodeIfPresent(quantityValue, forKey: .quantityValue)
        try container.encodeIfPresent(period, forKey: .period)
    }
}

