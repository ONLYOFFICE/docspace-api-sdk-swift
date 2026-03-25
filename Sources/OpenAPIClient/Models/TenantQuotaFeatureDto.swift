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

/** The tenant quota feature parameters. */
public struct TenantQuotaFeatureDto: Sendable, Codable, Hashable {

    /** The ID of the tenant quota feature. */
    public var id: String?
    /** The title of the tenant quota feature. */
    public var title: String?
    /** The image URL of the tenant quota feature. */
    public var image: String?
    /** The value of the tenant quota feature. */
    public var value: JSONValue?
    /** The type of the tenant quota feature. */
    public var type: String?
    public var used: FeatureUsedDto?
    /** The price title of the tenant quota feature. */
    public var priceTitle: String?

    public init(id: String? = nil, title: String? = nil, image: String? = nil, value: JSONValue? = nil, type: String? = nil, used: FeatureUsedDto? = nil, priceTitle: String? = nil) {
        self.id = id
        self.title = title
        self.image = image
        self.value = value
        self.type = type
        self.used = used
        self.priceTitle = priceTitle
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case title
        case image
        case value
        case type
        case used
        case priceTitle
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(title, forKey: .title)
        try container.encodeIfPresent(image, forKey: .image)
        try container.encodeIfPresent(value, forKey: .value)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(used, forKey: .used)
        try container.encodeIfPresent(priceTitle, forKey: .priceTitle)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension TenantQuotaFeatureDto: Identifiable {}
