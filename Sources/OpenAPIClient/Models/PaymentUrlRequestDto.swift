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

/** The request parameters for the payment URL configuration with quantity information. */
public struct PaymentUrlRequestDto: Sendable, Codable, Hashable {

    /** The URL where the user will be redirected after payment processing. */
    public var backUrl: String?
    /** The payment quantity. */
    public var quantity: [String: Int]?

    public init(backUrl: String? = nil, quantity: [String: Int]? = nil) {
        self.backUrl = backUrl
        self.quantity = quantity
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case backUrl
        case quantity
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(backUrl, forKey: .backUrl)
        try container.encodeIfPresent(quantity, forKey: .quantity)
    }
}

