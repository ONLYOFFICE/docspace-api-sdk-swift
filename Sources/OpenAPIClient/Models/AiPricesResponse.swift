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

/** The AI price list: per-model pricing for every model kind, in a single currency. */
public struct AiPricesResponse: Sendable, Codable, Hashable {

    /** The pricing of every available chat model. */
    public var chat: [AiChatModelPricing]?
    /** The pricing of every available embedding model. */
    public var embedding: [AiEmbeddingModelPricing]?
    /** The pricing of every available image model. */
    public var image: [AiImageModelPricing]?
    /** The pricing of every available web search provider. */
    public var search: [AiWebSearchPricing]?
    /** The currency the AI prices are quoted in. */
    public var currency: CurrencyInfo

    public init(chat: [AiChatModelPricing]?, embedding: [AiEmbeddingModelPricing]?, image: [AiImageModelPricing]?, search: [AiWebSearchPricing]?, currency: CurrencyInfo) {
        self.chat = chat
        self.embedding = embedding
        self.image = image
        self.search = search
        self.currency = currency
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case chat
        case embedding
        case image
        case search
        case currency
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(chat, forKey: .chat)
        try container.encode(embedding, forKey: .embedding)
        try container.encode(image, forKey: .image)
        try container.encode(search, forKey: .search)
        try container.encode(currency, forKey: .currency)
    }
}

