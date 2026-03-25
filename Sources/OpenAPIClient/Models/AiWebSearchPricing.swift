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

public struct AiWebSearchPricing: Sendable, Codable, Hashable {

    public var provider: String?
    public var search: Double?
    public var contents: Double?

    public init(provider: String? = nil, search: Double? = nil, contents: Double? = nil) {
        self.provider = provider
        self.search = search
        self.contents = contents
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case provider
        case search
        case contents
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(provider, forKey: .provider)
        try container.encodeIfPresent(search, forKey: .search)
        try container.encodeIfPresent(contents, forKey: .contents)
    }
}

