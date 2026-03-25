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

/** The request parameters for specifying payment quantity. */
public struct QuantityRequestDto: Sendable, Codable, Hashable {

    /** The mapping of item identifiers to their respective quantities in the payment. */
    public var quantity: [String: Int]?

    public init(quantity: [String: Int]? = nil) {
        self.quantity = quantity
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case quantity
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(quantity, forKey: .quantity)
    }
}

