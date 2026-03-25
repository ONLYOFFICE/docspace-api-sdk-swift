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

/** The request parameters for buying wallet service. */
public struct BuyWalletServiceRequestDto: Sendable, Codable, Hashable {

    public static let quantityRule = NumericRule<Int>(minimum: 1, exclusiveMinimum: false, maximum: 999999, exclusiveMaximum: false, multipleOf: nil)
    /** Number of services provided. */
    public var quantity: Int?
    /** The service name. */
    public var serviceName: String?

    public init(quantity: Int? = nil, serviceName: String? = nil) {
        self.quantity = quantity
        self.serviceName = serviceName
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case quantity
        case serviceName
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(quantity, forKey: .quantity)
        try container.encodeIfPresent(serviceName, forKey: .serviceName)
    }
}

