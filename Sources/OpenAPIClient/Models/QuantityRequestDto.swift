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

/** The new size of the portal subscription. */
public struct QuantityRequestDto: Sendable, Codable, Hashable {

    /** The plan and the number of units it is to cover, as a single pair. While the portal is on a priced plan the  key has to be the `name` of that same plan, which `GET api/2.0/portal/payment/quota` reports, because the  subscription is resized rather than swapped; the value is the total the subscription is to have afterwards,  not the difference. Exactly one pair is accepted, and a value that is already in effect is refused with 400. */
    public var quantity: [String: Int]

    public init(quantity: [String: Int]) {
        self.quantity = quantity
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case quantity
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(quantity, forKey: .quantity)
    }
}

