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

/** What the AI features cost out of the portal wallet, grouped by the kind of model, in one currency. */
public struct AiPricesDto: Sendable, Codable, Hashable {

    /** The chat models on offer, each priced per million prompt and completion tokens. A model listed here is one  the installation can bill for, not necessarily one this portal may use -  `GET api/2.0/portal/payment/ai-model/restrictions` says which are allowed. */
    public var chat: [AiEntryPricingDtoAiChatPriceDto]?
    /** The embedding models on offer, priced per million tokens of input; an embedding model has no completion  side, so its price object carries `prompt` alone. */
    public var embedding: [AiEntryPricingDtoAiEmbeddingPriceDto]?
    /** The image models on offer, priced per million prompt and completion tokens plus a price for each image  produced. */
    public var image: [AiEntryPricingDtoAiImagePriceDto]?
    /** The web search providers on offer. Their `price` is a bare number - the cost of one search - rather than  an object, because there are no tokens to distinguish. */
    public var webSearch: [AiEntryPricingDtoDecimal]?
    /** The currency every price above is expressed in, with its ISO code and symbol. One answer never mixes  currencies, so this is the only place to read it. */
    public var currency: CurrencyInfo

    public init(chat: [AiEntryPricingDtoAiChatPriceDto]?, embedding: [AiEntryPricingDtoAiEmbeddingPriceDto]?, image: [AiEntryPricingDtoAiImagePriceDto]?, webSearch: [AiEntryPricingDtoDecimal]?, currency: CurrencyInfo) {
        self.chat = chat
        self.embedding = embedding
        self.image = image
        self.webSearch = webSearch
        self.currency = currency
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case chat
        case embedding
        case image
        case webSearch
        case currency
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(chat, forKey: .chat)
        try container.encode(embedding, forKey: .embedding)
        try container.encode(image, forKey: .image)
        try container.encode(webSearch, forKey: .webSearch)
        try container.encode(currency, forKey: .currency)
    }
}

