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

/** The pricing of a single web search provider, per request. */
public struct AiWebSearchPricing: Sendable, Codable, Hashable {

    /** The identifier of the web search provider. */
    public var id: String?
    /** The provider that serves the web search requests. */
    public var provider: String?
    /** The price of a single web search request. */
    public var price: Double?
    /** The link to the pricing page of the provider. */
    public var link: String?

    public init(id: String? = nil, provider: String? = nil, price: Double? = nil, link: String? = nil) {
        self.id = id
        self.provider = provider
        self.price = price
        self.link = link
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case provider
        case price
        case link
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(provider, forKey: .provider)
        try container.encodeIfPresent(price, forKey: .price)
        try container.encodeIfPresent(link, forKey: .link)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension AiWebSearchPricing: Identifiable {}
