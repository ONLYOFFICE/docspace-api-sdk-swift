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

/** The plan being bought and the two pages the hosted checkout returns the buyer to. */
public struct PaymentUrlRequestDto: Sendable, Codable, Hashable {

    public static let backUrlRule = StringRule(minLength: 0, maxLength: 255, pattern: nil)
    public static let successUrlRule = StringRule(minLength: 0, maxLength: 255, pattern: nil)
    /** The absolute address the hosted checkout page sends the buyer back to when the purchase is abandoned. It has  to be a well-formed URL and is carried into the checkout page as it is given, so it must be reachable by the  buyer rather than by the portal. */
    public var backUrl: String
    /** The absolute address the hosted checkout page sends the buyer to once the payment provider accepts the  purchase. Reaching it says the provider took the money, not that the portal has already been switched to the  new plan, so a client that lands here reads the plan back rather than assuming it. */
    public var successUrl: String
    /** The plan being bought, as a single pair of the plan name and the number of units of it. The key is the `name`  of a monthly, non-wallet quota from `GET api/2.0/portal/payment/quotas`, and the value is how many  administrators the plan is to cover, which has to be greater than zero. Exactly one pair is accepted; yearly  and wallet products are refused with 400, and wallet services are bought through  `PUT api/2.0/portal/payment/updatewallet` instead. */
    public var quantity: [String: Int]

    public init(backUrl: String, successUrl: String, quantity: [String: Int]) {
        self.backUrl = backUrl
        self.successUrl = successUrl
        self.quantity = quantity
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case backUrl
        case successUrl
        case quantity
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(backUrl, forKey: .backUrl)
        try container.encode(successUrl, forKey: .successUrl)
        try container.encode(quantity, forKey: .quantity)
    }
}

