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

/** The pricing of a single image model. */
public struct AiImageModelPricing: Sendable, Codable, Hashable {

    /** The identifier of the model, as the provider expects it on the wire. */
    public var id: String?
    /** The display name of the model. */
    public var alias: String?
    /** The owner of the model, as reported by the provider. */
    public var ownedBy: String?
    /** The provider that serves the model. */
    public var provider: String?
    /** The link to the pricing page of the model. */
    public var link: String?
    /** The price of an image model: per prompt token and per generated image. */
    public var price: AiImagePrice

    public init(id: String?, alias: String? = nil, ownedBy: String? = nil, provider: String? = nil, link: String? = nil, price: AiImagePrice) {
        self.id = id
        self.alias = alias
        self.ownedBy = ownedBy
        self.provider = provider
        self.link = link
        self.price = price
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case alias
        case ownedBy
        case provider
        case link
        case price
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encodeIfPresent(alias, forKey: .alias)
        try container.encodeIfPresent(ownedBy, forKey: .ownedBy)
        try container.encodeIfPresent(provider, forKey: .provider)
        try container.encodeIfPresent(link, forKey: .link)
        try container.encode(price, forKey: .price)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension AiImageModelPricing: Identifiable {}
