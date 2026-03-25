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

/** The AI model information. */
public struct ModelDto: Sendable, Codable, Hashable {

    /** The unique identifier of the AI provider that offers this model. */
    public var providerId: Int?
    /** The human-readable display name of the AI provider (e.g., OpenAI, Anthropic). */
    public var providerTitle: String?
    /** The model identifier as recognized by the AI provider (e.g., gpt-4o, claude-sonnet-4-20250514). */
    public var modelId: String?
    public var price: AiChatPrice?
    public var currency: CurrencyInfo?

    public init(providerId: Int? = nil, providerTitle: String?, modelId: String?, price: AiChatPrice? = nil, currency: CurrencyInfo? = nil) {
        self.providerId = providerId
        self.providerTitle = providerTitle
        self.modelId = modelId
        self.price = price
        self.currency = currency
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case providerId
        case providerTitle
        case modelId
        case price
        case currency
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(providerId, forKey: .providerId)
        try container.encode(providerTitle, forKey: .providerTitle)
        try container.encode(modelId, forKey: .modelId)
        try container.encodeIfPresent(price, forKey: .price)
        try container.encodeIfPresent(currency, forKey: .currency)
    }
}

