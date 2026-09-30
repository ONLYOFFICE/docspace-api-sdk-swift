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

/** Everything an editor client needs in order to open one document: the document itself, the editor setup for this  caller, and the signature that lets the editors trust both. */
public struct ConfigurationDto: Sendable, Codable, Hashable {

    /** The document as the editors address it: its revision key, title, type, download address and the permissions of  this caller on it. */
    public var document: DocumentConfigDto
    /** The editor family the file opens in - `word`, `cell`, `slide`, `pdf` or `diagram`. It comes back empty for a  format no editor handles. */
    public var documentType: String?
    /** How the editor is set up for this opening: the mode, the language, the interface customization, the callback  the editors save through, and the account they attribute changes to. */
    public var editorConfig: EditorConfigurationDto
    /** The layout the configuration was actually built for. It echoes the requested one except where the room  overruled it, as the templates folder does by forcing the embedded viewer. */
    public var editorType: EditorType
    /** The address of the editor api script the client has to load, with the shard key of this document already  appended. Load it as it is given rather than assembling it by hand. */
    public var editorUrl: String?
    /** Signs this whole configuration so that the editors can trust it; anything a client changes in the  configuration invalidates it. It stays empty on a portal that has no signature secret configured for the  document service. */
    public var token: String?
    /** The layout spelled as a lowercase word - `desktop`, `mobile` or `embedded` - the same value the editor type  carries as a number. */
    public var type: String?
    /** The file the configuration was built for, in the same shape the file listings report it. */
    public var file: FileDto
    /** Filled in when the document could not be prepared for opening; the rest of the configuration should then not  be handed to the editors. */
    public var errorMessage: String?
    /** Whether this caller may start a filling session on the form from inside the editor. It stays empty when the  file is not a form opened where starting is possible at all. */
    public var startFilling: Bool?
    /** True once the caller holds a role in the running filling session of this form. It stays empty outside a  virtual data room, where roles are the only place it is set. */
    public var fillingStatus: Bool?
    /** Which filling button the editor offers: none at all, sharing the form out for others to fill, starting a  filling session, or starting one inside the form-filling room. */
    public var startFillingMode: StartFillingMode?
    /** Identifies the filling session this opening belongs to, and is empty when the document is not opened as part  of one. Submissions made in the editor are collected under it. */
    public var fillingSessionId: String?
    /** Names the quota that ran out - the user, the room or the portal - and is set only when the document had to be  opened read-only because of it. */
    public var quotaExceededScope: QuotaScope?
    /** The generation the editor should run as soon as the document opens. It is set only for a document an AI agent  produced and left waiting for its content, and is empty for every other file. */
    public var generationToolCallState: EditorToolCallStateDto?

    public init(document: DocumentConfigDto, documentType: String?, editorConfig: EditorConfigurationDto, editorType: EditorType, editorUrl: String?, token: String? = nil, type: String? = nil, file: FileDto, errorMessage: String? = nil, startFilling: Bool? = nil, fillingStatus: Bool? = nil, startFillingMode: StartFillingMode? = nil, fillingSessionId: String? = nil, quotaExceededScope: QuotaScope? = nil, generationToolCallState: EditorToolCallStateDto? = nil) {
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

