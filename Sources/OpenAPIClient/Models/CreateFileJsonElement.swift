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

/** The parameters for creating a file. */
public struct CreateFileJsonElement: Sendable, Codable, Hashable {

    public static let titleRule = StringRule(minLength: 0, maxLength: 165, pattern: nil)
    /** The file title for creation. */
    public var title: String?
    public var templateId: CreateFileJsonElementTemplateId?
    /** Specifies whether to allow creating a file of an external extension or not. */
    public var enableExternalExt: Bool?
    /** The form ID for creation. */
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

