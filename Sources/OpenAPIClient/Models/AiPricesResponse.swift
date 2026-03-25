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

public struct AiPricesResponse: Sendable, Codable, Hashable {

    public var chat: [AiChatModelPricing]?
    public var embedding: [AiEmbeddingModelPricing]?
    public var webSearch: AiWebSearchPricing
    public var currency: CurrencyInfo

    public init(chat: [AiChatModelPricing]?, embedding: [AiEmbeddingModelPricing]?, webSearch: AiWebSearchPricing, currency: CurrencyInfo) {
        self.chat = chat
        self.embedding = embedding
        self.webSearch = webSearch
        self.currency = currency
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case chat
        case embedding
        case webSearch
        case currency
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(chat, forKey: .chat)
        try container.encode(embedding, forKey: .embedding)
        try container.encode(webSearch, forKey: .webSearch)
        try container.encode(currency, forKey: .currency)
    }
}

