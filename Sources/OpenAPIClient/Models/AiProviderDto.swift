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

/** AI provider details. */
public struct AiProviderDto: Sendable, Codable, Hashable {

    /** AI provider identifier. */
    public var id: Int?
    /** AI provider display title. */
    public var title: String?
    public var type: ProviderType?
    /** API endpoint URL for the AI provider. */
    public var url: String?
    public var createdOn: ApiDateTime
    public var modifiedOn: ApiDateTime
    /** Indicates whether the provider's API key needs to be reset. */
    public var needReset: Bool?
    /** Indicates whether this provider is the default provider for the tenant. */
    public var isDefault: Bool?

    public init(id: Int? = nil, title: String?, type: ProviderType? = nil, url: String? = nil, createdOn: ApiDateTime, modifiedOn: ApiDateTime, needReset: Bool? = nil, isDefault: Bool? = nil) {
        self.id = id
        self.title = title
        self.type = type
        self.url = url
        self.createdOn = createdOn
        self.modifiedOn = modifiedOn
        self.needReset = needReset
        self.isDefault = isDefault
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case title
        case type
        case url
        case createdOn
        case modifiedOn
        case needReset
        case isDefault
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encode(title, forKey: .title)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(url, forKey: .url)
        try container.encode(createdOn, forKey: .createdOn)
        try container.encode(modifiedOn, forKey: .modifiedOn)
        try container.encodeIfPresent(needReset, forKey: .needReset)
        try container.encodeIfPresent(isDefault, forKey: .isDefault)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension AiProviderDto: Identifiable {}
