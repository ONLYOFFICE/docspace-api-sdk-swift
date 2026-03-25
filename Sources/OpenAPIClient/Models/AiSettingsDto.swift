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
public struct AiSettingsDto: Sendable, Codable, Hashable {

    /** Indicates whether web search is enabled for AI chat sessions. */
    public var webSearchEnabled: Bool?
    /** Indicates whether the web search API key needs to be reconfigured. */
    public var webSearchNeedReset: Bool?
    /** Indicates whether document vectorization is enabled. */
    public var vectorizationEnabled: Bool?
    /** Indicates whether the embedding provider API key needs to be reconfigured. */
    public var vectorizationNeedReset: Bool?
    /** Indicates whether the AI subsystem is fully configured and operational. */
    public var aiReady: Bool?
    /** Indicates whether the AI provider API key needs to be reconfigured. */
    public var aiReadyNeedReset: Bool?
    /** The unique identifier of the portal-level MCP server, if configured. */
    public var portalMcpServerId: UUID?
    /** The name of the embedding model used for document vectorization. */
    public var embeddingModel: String?
    /** Mapping of model identifiers to human-readable aliases. */
    public var modelAliases: [String: String]?
    /** The tool name used by the AI assistant for knowledge base search. */
    public var knowledgeSearchToolName: String?
    /** The tool name used by the AI assistant for web search. */
    public var webSearchToolName: String?
    /** The tool name used by the AI assistant for web page crawling. */
    public var webCrawlingToolName: String?
    /** The tool name used by the AI to launch docx creation in the editor. */
    public var generateDocxToolName: String?
    /** The tool name used by the AI assistant to launch form creation in the editor. */
    public var generateFormToolName: String?
    /** The tool name used by the AI assistant to launch presentation creation in the editor. */
    public var generatePresentationToolName: String?
    /** Indicates whether the system-level AI provider is enabled. */
    public var systemAiEnabled: Bool?

    public init(webSearchEnabled: Bool? = nil, webSearchNeedReset: Bool? = nil, vectorizationEnabled: Bool? = nil, vectorizationNeedReset: Bool? = nil, aiReady: Bool? = nil, aiReadyNeedReset: Bool? = nil, portalMcpServerId: UUID? = nil, embeddingModel: String?, modelAliases: [String: String]?, knowledgeSearchToolName: String?, webSearchToolName: String?, webCrawlingToolName: String?, generateDocxToolName: String?, generateFormToolName: String?, generatePresentationToolName: String?, systemAiEnabled: Bool? = nil) {
        self.webSearchEnabled = webSearchEnabled
        self.webSearchNeedReset = webSearchNeedReset
        self.vectorizationEnabled = vectorizationEnabled
        self.vectorizationNeedReset = vectorizationNeedReset
        self.aiReady = aiReady
        self.aiReadyNeedReset = aiReadyNeedReset
        self.portalMcpServerId = portalMcpServerId
        self.embeddingModel = embeddingModel
        self.modelAliases = modelAliases
        self.knowledgeSearchToolName = knowledgeSearchToolName
        self.webSearchToolName = webSearchToolName
        self.webCrawlingToolName = webCrawlingToolName
        self.generateDocxToolName = generateDocxToolName
        self.generateFormToolName = generateFormToolName
        self.generatePresentationToolName = generatePresentationToolName
        self.systemAiEnabled = systemAiEnabled
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case webSearchEnabled
        case webSearchNeedReset
        case vectorizationEnabled
        case vectorizationNeedReset
        case aiReady
        case aiReadyNeedReset
        case portalMcpServerId
        case embeddingModel
        case modelAliases
        case knowledgeSearchToolName
        case webSearchToolName
        case webCrawlingToolName
        case generateDocxToolName
        case generateFormToolName
        case generatePresentationToolName
        case systemAiEnabled
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(webSearchEnabled, forKey: .webSearchEnabled)
        try container.encodeIfPresent(webSearchNeedReset, forKey: .webSearchNeedReset)
        try container.encodeIfPresent(vectorizationEnabled, forKey: .vectorizationEnabled)
        try container.encodeIfPresent(vectorizationNeedReset, forKey: .vectorizationNeedReset)
        try container.encodeIfPresent(aiReady, forKey: .aiReady)
        try container.encodeIfPresent(aiReadyNeedReset, forKey: .aiReadyNeedReset)
        try container.encodeIfPresent(portalMcpServerId, forKey: .portalMcpServerId)
        try container.encode(embeddingModel, forKey: .embeddingModel)
        try container.encode(modelAliases, forKey: .modelAliases)
        try container.encode(knowledgeSearchToolName, forKey: .knowledgeSearchToolName)
        try container.encode(webSearchToolName, forKey: .webSearchToolName)
        try container.encode(webCrawlingToolName, forKey: .webCrawlingToolName)
        try container.encode(generateDocxToolName, forKey: .generateDocxToolName)
        try container.encode(generateFormToolName, forKey: .generateFormToolName)
        try container.encode(generatePresentationToolName, forKey: .generatePresentationToolName)
        try container.encodeIfPresent(systemAiEnabled, forKey: .systemAiEnabled)
    }
}

