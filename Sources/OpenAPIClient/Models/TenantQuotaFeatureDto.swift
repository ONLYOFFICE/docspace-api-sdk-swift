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

/** One feature a quota switches on, with the limit it grants and how much of that limit is used. */
public struct TenantQuotaFeatureDto: Sendable, Codable, Hashable {

    /** The stable key of the feature - `total_size`, `manager`, `room`, `backup` and so on. It is the value to  branch on, since `title` is prose in the portal language. */
    public var id: String?
    /** The feature described in the portal language, with its limit already substituted into the sentence, so it  can be printed as it is. It is empty when this build ships no wording for the feature. */
    public var title: String?
    /** The feature's icon as SVG markup to render inline - not a URL to fetch. It is filled in only when the  quota comes from the catalogue, and left empty on the quota the portal is actually on, on a feature that  this quota switches off, and on a feature that ships no icon. */
    public var image: String?
    public var value: JSONValue?
    /** How to read `value` and `used`: `size` for bytes, `count` for a number of things, `flag` for a feature  that is merely on or off. */
    public var type: String?
    /** How much of the limit is already used. It is present only on the quota the portal is actually on, and  only for a feature whose consumption is counted; a guest is shown none of these figures and a plain member  only the one for total size, so an absent value can mean the caller may not see it rather than that  nothing is used. */
    public var used: FeatureUsedDto?
    /** What the feature is charged as, in the portal language - for instance the per-unit price of an add-on. It  is filled in only for a feature that costs money on top of the plan. */
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
