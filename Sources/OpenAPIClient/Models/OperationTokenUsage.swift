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

/** Tokens an AI operation consumed, as recorded in the operation metadata. A kind the provider did not report is `0`. */
public struct OperationTokenUsage: Sendable, Codable, Hashable {

    /** All tokens of the request: prompt plus completion. */
    public var totalTokens: Int64?
    /** Tokens sent to the model, cached ones included. */
    public var promptTokens: Int64?
    /** Tokens the model generated, reasoning ones included. */
    public var completionTokens: Int64?
    /** Part of the prompt tokens read from the provider cache. */
    public var cachedTokens: Int64?
    /** Part of the prompt tokens written to the provider cache. */
    public var cacheWriteTokens: Int64?
    /** Part of the completion tokens the model spent on reasoning. */
    public var reasoningTokens: Int64?
    /** Tokens spent on images. */
    public var imageTokens: Int64?

    public init(totalTokens: Int64? = nil, promptTokens: Int64? = nil, completionTokens: Int64? = nil, cachedTokens: Int64? = nil, cacheWriteTokens: Int64? = nil, reasoningTokens: Int64? = nil, imageTokens: Int64? = nil) {
        self.totalTokens = totalTokens
        self.promptTokens = promptTokens
        self.completionTokens = completionTokens
        self.cachedTokens = cachedTokens
        self.cacheWriteTokens = cacheWriteTokens
        self.reasoningTokens = reasoningTokens
        self.imageTokens = imageTokens
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case totalTokens
        case promptTokens
        case completionTokens
        case cachedTokens
        case cacheWriteTokens
        case reasoningTokens
        case imageTokens
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(totalTokens, forKey: .totalTokens)
        try container.encodeIfPresent(promptTokens, forKey: .promptTokens)
        try container.encodeIfPresent(completionTokens, forKey: .completionTokens)
        try container.encodeIfPresent(cachedTokens, forKey: .cachedTokens)
        try container.encodeIfPresent(cacheWriteTokens, forKey: .cacheWriteTokens)
        try container.encodeIfPresent(reasoningTokens, forKey: .reasoningTokens)
        try container.encodeIfPresent(imageTokens, forKey: .imageTokens)
    }
}

