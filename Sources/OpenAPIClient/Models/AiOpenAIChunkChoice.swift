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

/** One choice of a streaming completion, carrying the part this chunk adds. */
public struct AiOpenAIChunkChoice: Sendable, Codable, Hashable {

    /** The zero-based position of the choice. This service emits a single choice, so always 0. */
    public var index: Double
    /** What this chunk adds to the choice. */
    public var delta: AiOpenAIChoiceDelta
    /** Why the completion stopped, or null while it is still streaming. */
    public var finishReason: AiOpenAIFinishReason?

    public init(index: Double, delta: AiOpenAIChoiceDelta, finishReason: AiOpenAIFinishReason?) {
        self.index = index
        self.delta = delta
        self.finishReason = finishReason
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case index
        case delta
        case finishReason = "finish_reason"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(index, forKey: .index)
        try container.encode(delta, forKey: .delta)
        try container.encode(finishReason, forKey: .finishReason)
    }
}

