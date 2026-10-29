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

/** The new thresholds and state of an existing service limit. */
public struct UpdateServiceLimitRequestDto: Sendable, Codable, Hashable {

    public static let idRule = NumericRule<Int>(minimum: 1, exclusiveMinimum: false, maximum: 2147483647, exclusiveMaximum: false, multipleOf: nil)
    public static let amountValueRule = NumericRule<Double>(minimum: 0, exclusiveMinimum: false, maximum: 10000, exclusiveMaximum: false, multipleOf: nil)
    public static let quantityValueRule = NumericRule<Int>(minimum: 0, exclusiveMinimum: false, maximum: 2147483647, exclusiveMaximum: false, multipleOf: nil)
    /** The ID of the service limit, as returned in `id` by the operation that created it or by the reads of limits. */
    public var id: Int
    /** The most money the AI services may cost per period, in their currency. Zero blocks the AI services completely. */
    public var amountValue: Double?
    /** The largest quantity the AI services may consume per period, in their common unit. Zero blocks the AI services  completely. */
    public var quantityValue: Int?
    /** Whether the limit is in force: false switches it off at once, true switches it back on. */
    public var enabled: Bool?

    public init(id: Int, amountValue: Double? = nil, quantityValue: Int? = nil, enabled: Bool? = nil) {
        self.id = id
        self.amountValue = amountValue
        self.quantityValue = quantityValue
        self.enabled = enabled
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case amountValue
        case quantityValue
        case enabled
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encodeIfPresent(amountValue, forKey: .amountValue)
        try container.encodeIfPresent(quantityValue, forKey: .quantityValue)
        try container.encodeIfPresent(enabled, forKey: .enabled)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension UpdateServiceLimitRequestDto: Identifiable {}
