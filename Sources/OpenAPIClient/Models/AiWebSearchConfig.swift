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

/** Web-search provider configuration. Credentials and provider selection for the built-in web-search tool group. */
public struct AiWebSearchConfig: Sendable, Codable, Hashable {

    /** Provider identifier (e.g. `exa`). */
    public var provider: String
    /** API key for the provider. Optional for self-hosted or keyless setups. */
    public var key: String?
    /** Optional override for the provider's base URL. */
    public var baseUrl: String?
    /** Whether this provider is cloud-hosted (vs. self-hosted). */
    public var isCloudProvider: Bool?
    /** Extra HTTP headers sent with each request to the ONLYOFFICE / cloud backend (e.g. `X-Tenant`). Merged after the derived `Authorization` header, so a custom header of the same name wins. */
    public var headers: [String: String]?

    public init(provider: String, key: String? = nil, baseUrl: String? = nil, isCloudProvider: Bool? = nil, headers: [String: String]? = nil) {
        self.provider = provider
        self.key = key
        self.baseUrl = baseUrl
        self.isCloudProvider = isCloudProvider
        self.headers = headers
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case provider
        case key
        case baseUrl
        case isCloudProvider
        case headers
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(provider, forKey: .provider)
        try container.encodeIfPresent(key, forKey: .key)
        try container.encodeIfPresent(baseUrl, forKey: .baseUrl)
        try container.encodeIfPresent(isCloudProvider, forKey: .isCloudProvider)
        try container.encodeIfPresent(headers, forKey: .headers)
    }
}

