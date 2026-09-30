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

/** The parameters of a file that the portal creates from a template or a blank document. */
public struct CreateFileJsonElement: Sendable, Codable, Hashable {

    public static let titleRule = StringRule(minLength: 0, maxLength: 165, pattern: nil)
    /** The title of the new file. The extension in it decides the format, and one of a known text, spreadsheet or  presentation format is rewritten to the DOCX, XLSX or PPTX of the portal unless `enableExternalExt` says  otherwise; a title with no extension gets DOCX added. */
    public var title: String?
    public var templateId: CreateFileJsonElementTemplateId?
    /** Whether the extension of the title is kept as it is: `true` stores the title verbatim, `false` rewrites a  known foreign format to the format the portal edits itself. */
    public var enableExternalExt: Bool?
    /** A ready form from the form gallery of the portal to copy instead of a template, named by the identifier the  gallery reports for it. It takes precedence over `templateId`; 0 means no form. */
    public var formId: Int?

    public init(title: String?, templateId: CreateFileJsonElementTemplateId? = nil, enableExternalExt: Bool? = nil, formId: Int? = nil) {
        self.title = title
        self.templateId = templateId
        self.enableExternalExt = enableExternalExt
        self.formId = formId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case title
        case templateId
        case enableExternalExt
        case formId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(title, forKey: .title)
        try container.encodeIfPresent(templateId, forKey: .templateId)
        try container.encodeIfPresent(enableExternalExt, forKey: .enableExternalExt)
        try container.encodeIfPresent(formId, forKey: .formId)
    }
}

