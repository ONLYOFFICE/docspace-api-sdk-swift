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

/** AI model metadata. Describes a single model available from a provider. */
public struct AiModel: Sendable, Codable, Hashable {

    /** Model identifier as used by the provider API (e.g. `gpt-4o`, `claude-sonnet-4-20250514`). */
    public var id: String
    /** Human-readable model name for display in the UI. */
    public var name: String
    /** Provider that offers this model. */
    public var provider: AiProviderType
    /** Whether this model supports extended thinking / chain-of-thought reasoning. */
    public var reasoning: Bool?
    /** Bitmask of model capabilities (Chat, Image, Vision, Tools, etc.). Used to filter models per `ActionType`. */
    public var capabilities: Double?

    public init(id: String, name: String, provider: AiProviderType, reasoning: Bool? = nil, capabilities: Double? = nil) {
        self.id = id
        self.name = name
        self.provider = provider
        self.reasoning = reasoning
        self.capabilities = capabilities
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case provider
        case reasoning
        case capabilities
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(name, forKey: .name)
        try container.encode(provider, forKey: .provider)
        try container.encodeIfPresent(reasoning, forKey: .reasoning)
        try container.encodeIfPresent(capabilities, forKey: .capabilities)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension AiModel: Identifiable {}
