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

/** One AI model or service on the price list: how to name it, who provides it, and what it costs. */
public struct AiEntryPricingDtoAiImagePriceDto: Sendable, Codable, Hashable {

    /** The model identifier to send to the AI operations. It is the value to branch on, while `alias` is for display  only. */
    public var id: String?
    /** The model name as the vendor writes it, meant to be shown to a person rather than matched on. */
    public var alias: String?
    /** Who runs the model. Two entries can share a provider, and one provider's models can be priced quite  differently, so the price always belongs to the entry and never to the provider. */
    public var provider: String?
    /** The absolute URL of the provider's icon, for rendering next to the entry. */
    public var image: String?
    /** What the entry costs, in the currency the answer names. Amounts per token are normalised per million  tokens, so they are not the price of a single call. */
    public var price: AiImagePriceDto
    /** The provider's own page for the model, for a person to read the model's terms. It is empty when the  provider publishes none. */
    public var link: String?

    public init(id: String?, alias: String?, provider: String?, image: String?, price: AiImagePriceDto, link: String?) {
        self.id = id
        self.alias = alias
        self.provider = provider
        self.image = image
        self.price = price
        self.link = link
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case alias
        case provider
        case image
        case price
        case link
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(alias, forKey: .alias)
        try container.encode(provider, forKey: .provider)
        try container.encode(image, forKey: .image)
        try container.encode(price, forKey: .price)
        try container.encode(link, forKey: .link)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension AiEntryPricingDtoAiImagePriceDto: Identifiable {}
