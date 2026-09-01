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

/** The incremental part of one tool call the model requested. */
public struct AiOpenAIToolCallDelta: Sendable, Codable, Hashable {

    public enum ModelType: String, Sendable, Codable, CaseIterable {
        case function = "function"
    }
    /** The zero-based position of the tool call within the message. */
    public var index: Double
    /** The tool call identifier, quoted back when its result is submitted. */
    public var id: String?
    /** Always `function` - the only tool kind the API defines. */
    public var type: ModelType?
    public var function: AiOpenAIToolCallDeltaFunction?

    public init(index: Double, id: String? = nil, type: ModelType? = nil, function: AiOpenAIToolCallDeltaFunction? = nil) {
        self.index = index
        self.id = id
        self.type = type
        self.function = function
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case index
        case id
        case type
        case function
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(index, forKey: .index)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(function, forKey: .function)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension AiOpenAIToolCallDelta: Identifiable {}
