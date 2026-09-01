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

public struct AiProfilesListProviderModelsRequest: Sendable, Codable, Hashable {

    /** Provider whose catalog to list. */
    public var providerType: AiProviderType
    /** Provider API base URL. */
    public var baseUrl: String
    /** Provider API key. */
    public var apiKey: String

    public init(providerType: AiProviderType, baseUrl: String, apiKey: String) {
        self.providerType = providerType
        self.baseUrl = baseUrl
        self.apiKey = apiKey
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case providerType
        case baseUrl
        case apiKey
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(providerType, forKey: .providerType)
        try container.encode(baseUrl, forKey: .baseUrl)
        try container.encode(apiKey, forKey: .apiKey)
    }
}

