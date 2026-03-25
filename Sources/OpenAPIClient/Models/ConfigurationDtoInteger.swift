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

/** The configuration parameters. */
public struct ConfigurationDtoInteger: Sendable, Codable, Hashable {

    public var document: DocumentConfigDto
    /** The document type. */
    public var documentType: String?
    public var editorConfig: EditorConfigurationDto
    public var editorType: EditorType
    /** The editor URL. */
    public var editorUrl: String?
    /** The token of the file configuration. */
    public var token: String?
    /** The platform type. */
    public var type: String?
    public var file: FileDtoInteger
    /** The error message. */
    public var errorMessage: String?
    /** Specifies if the file filling has started or not. */
    public var startFilling: Bool?
    /** The file filling status. */
    public var fillingStatus: Bool?
    public var startFillingMode: StartFillingMode?
    /** The file filling session ID. */
    public var fillingSessionId: String?
    public var quotaExceededScope: QuotaScope?
    public var generationToolCallState: EditorToolCallStateDto?

    public init(document: DocumentConfigDto, documentType: String?, editorConfig: EditorConfigurationDto, editorType: EditorType, editorUrl: String?, token: String? = nil, type: String? = nil, file: FileDtoInteger, errorMessage: String? = nil, startFilling: Bool? = nil, fillingStatus: Bool? = nil, startFillingMode: StartFillingMode? = nil, fillingSessionId: String? = nil, quotaExceededScope: QuotaScope? = nil, generationToolCallState: EditorToolCallStateDto? = nil) {
        self.document = document
        self.documentType = documentType
        self.editorConfig = editorConfig
        self.editorType = editorType
        self.editorUrl = editorUrl
        self.token = token
        self.type = type
        self.file = file
        self.errorMessage = errorMessage
        self.startFilling = startFilling
        self.fillingStatus = fillingStatus
        self.startFillingMode = startFillingMode
        self.fillingSessionId = fillingSessionId
        self.quotaExceededScope = quotaExceededScope
        self.generationToolCallState = generationToolCallState
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case document
        case documentType
        case editorConfig
        case editorType
        case editorUrl
        case token
        case type
        case file
        case errorMessage
        case startFilling
        case fillingStatus
        case startFillingMode
        case fillingSessionId
        case quotaExceededScope
        case generationToolCallState
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(document, forKey: .document)
        try container.encode(documentType, forKey: .documentType)
        try container.encode(editorConfig, forKey: .editorConfig)
        try container.encode(editorType, forKey: .editorType)
        try container.encode(editorUrl, forKey: .editorUrl)
        try container.encodeIfPresent(token, forKey: .token)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encode(file, forKey: .file)
        try container.encodeIfPresent(errorMessage, forKey: .errorMessage)
        try container.encodeIfPresent(startFilling, forKey: .startFilling)
        try container.encodeIfPresent(fillingStatus, forKey: .fillingStatus)
        try container.encodeIfPresent(startFillingMode, forKey: .startFillingMode)
        try container.encodeIfPresent(fillingSessionId, forKey: .fillingSessionId)
        try container.encodeIfPresent(quotaExceededScope, forKey: .quotaExceededScope)
        try container.encodeIfPresent(generationToolCallState, forKey: .generationToolCallState)
    }
}

