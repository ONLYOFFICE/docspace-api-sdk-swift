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

    public static let backUrlRule = StringRule(minLength: 0, maxLength: 255, pattern: nil)
    public static let successUrlRule = StringRule(minLength: 0, maxLength: 255, pattern: nil)
    /** The URL where the user will be redirected after payment cancellation. */
    public var backUrl: String
    /** The URL where the user will be redirected after successful payment. */
    public var successUrl: String
    /** The payment quantity. */
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

