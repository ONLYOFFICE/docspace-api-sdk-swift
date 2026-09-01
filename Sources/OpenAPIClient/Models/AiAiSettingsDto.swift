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

/** The AI module settings. */
public struct AiAiSettingsDto: Sendable, Codable, Hashable {

    /** Indicates whether document vectorization is enabled. */
    public var vectorizationEnabled: Bool?
    /** Indicates whether the embedding provider API key needs to be reconfigured. */
    public var vectorizationNeedReset: Bool?
    /** Indicates whether the AI subsystem is fully configured and operational. */
    public var aiReady: Bool?
    /** The name of the embedding model used for document vectorization. */
    public var embeddingModel: String?
    /** Indicates whether the system-level AI provider is enabled. */
    public var systemAiEnabled: Bool?
    /** The identifier of the model recommended for form generation. */
    public var recommendedModelForForms: String?

    public init(vectorizationEnabled: Bool? = nil, vectorizationNeedReset: Bool? = nil, aiReady: Bool? = nil, embeddingModel: String?, systemAiEnabled: Bool? = nil, recommendedModelForForms: String? = nil) {
        self.vectorizationEnabled = vectorizationEnabled
        self.vectorizationNeedReset = vectorizationNeedReset
        self.aiReady = aiReady
        self.embeddingModel = embeddingModel
        self.systemAiEnabled = systemAiEnabled
        self.recommendedModelForForms = recommendedModelForForms
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case vectorizationEnabled
        case vectorizationNeedReset
        case aiReady
        case embeddingModel
        case systemAiEnabled
        case recommendedModelForForms
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(vectorizationEnabled, forKey: .vectorizationEnabled)
        try container.encodeIfPresent(vectorizationNeedReset, forKey: .vectorizationNeedReset)
        try container.encodeIfPresent(aiReady, forKey: .aiReady)
        try container.encode(embeddingModel, forKey: .embeddingModel)
        try container.encodeIfPresent(systemAiEnabled, forKey: .systemAiEnabled)
        try container.encodeIfPresent(recommendedModelForForms, forKey: .recommendedModelForForms)
    }
}

