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

/** Complete AI provider + model configuration saved by the user. Profiles are the primary way users save and reuse provider configurations. */
public struct AiProfile: Sendable, Codable, Hashable {

    /** Unique profile identifier (UUID). */
    public var id: String
    /** User-defined profile display name. */
    public var name: String
    /** Provider type for this profile. Use `external` to delegate all HTTP transport to `PlatformAdapter.externalFetch` while reusing an existing provider's response parser — see `Profile.basedOn` for the format selector. */
    public var providerType: AiProviderType
    /** Selects the response-format parser used by the `external` provider. Ignored for any other `providerType`.  Supported values are `openai`, `anthropic`, `mistral` and `openrouter`. Remaining values (`genai`, `stabilityai`, …) are accepted by the type but not yet implemented; passing one raises an error at request time. */
    public var basedOn: AiBuiltinProviderType?
    /** Base URL of the provider API. */
    public var baseUrl: String
    /** API key or token. Optional for local providers. */
    public var key: String?
    /** Extra HTTP headers sent with every request to this provider. Merged into the SDK client's default headers; an explicit `Authorization` here wins over the one derived from `key`. Honoured by the OpenAI-family providers. */
    public var headers: [String: String]?
    /** Selected model ID within this provider. */
    public var modelId: String
    /** Whether extended thinking is enabled for this profile's model. */
    public var reasoning: Bool?
    /** Bitmask of capabilities supported by the selected model. */
    public var capabilities: Double?
    /** Result of the live tool-capability probe performed at create time and on changes to `modelId` / `providerType` / `baseUrl`. `undefined` means the probe has never run for this profile (legacy record). */
    public var canUseTool: Bool?
    /** Result of the live Responses-API probe (parallel to `canUseTool`). `true` means the model speaks `/v1/responses` and the OpenAI provider must route through `client.responses.create` — required for gpt-5+ reasoning models that reject `reasoning_effort` together with `tools` on `/v1/chat/completions`. Probed at create time and whenever `modelId` / `providerType` / `baseUrl` change. `undefined` means the probe never ran (legacy record) — readers treat that as `false`. */
    public var useResponsesApi: Bool?
    /** Whether this profile uses a cloud-hosted provider (e.g. ONLYOFFICE DocSpace). */
    public var isCloudProvider: Bool?
    /** Route every provider request through the host's `fetchProxy` instead of the global `fetch`. Useful when the host runs the widget in a sandbox without direct network access (CORS, custom auth, etc.). Has no effect when the `PlatformAdapter.fetchProxy` is not configured. */
    public var useProxy: Bool?
    /** Creation timestamp (ms since epoch). Used to sort the AI models list newest-first. */
    public var createdAt: Double?

    public init(id: String, name: String, providerType: AiProviderType, basedOn: AiBuiltinProviderType? = nil, baseUrl: String, key: String? = nil, headers: [String: String]? = nil, modelId: String, reasoning: Bool? = nil, capabilities: Double? = nil, canUseTool: Bool? = nil, useResponsesApi: Bool? = nil, isCloudProvider: Bool? = nil, useProxy: Bool? = nil, createdAt: Double? = nil) {
        self.id = id
        self.name = name
        self.providerType = providerType
        self.basedOn = basedOn
        self.baseUrl = baseUrl
        self.key = key
        self.headers = headers
        self.modelId = modelId
        self.reasoning = reasoning
        self.capabilities = capabilities
        self.canUseTool = canUseTool
        self.useResponsesApi = useResponsesApi
        self.isCloudProvider = isCloudProvider
        self.useProxy = useProxy
        self.createdAt = createdAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case providerType
        case basedOn
        case baseUrl
        case key
        case headers
        case modelId
        case reasoning
        case capabilities
        case canUseTool
        case useResponsesApi
        case isCloudProvider
        case useProxy
        case createdAt
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(name, forKey: .name)
        try container.encode(providerType, forKey: .providerType)
        try container.encodeIfPresent(basedOn, forKey: .basedOn)
        try container.encode(baseUrl, forKey: .baseUrl)
        try container.encodeIfPresent(key, forKey: .key)
        try container.encodeIfPresent(headers, forKey: .headers)
        try container.encode(modelId, forKey: .modelId)
        try container.encodeIfPresent(reasoning, forKey: .reasoning)
        try container.encodeIfPresent(capabilities, forKey: .capabilities)
        try container.encodeIfPresent(canUseTool, forKey: .canUseTool)
        try container.encodeIfPresent(useResponsesApi, forKey: .useResponsesApi)
        try container.encodeIfPresent(isCloudProvider, forKey: .isCloudProvider)
        try container.encodeIfPresent(useProxy, forKey: .useProxy)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension AiProfile: Identifiable {}
