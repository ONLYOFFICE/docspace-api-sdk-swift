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

/** The metadata of an entry: the assigned templates with their values, and the custom fields holding a value. */
public struct EntryMetadataDto: Sendable, Codable, Hashable {

    /** The assigned metadata templates, each field carrying its value on the entry. */
    public var templates: [EntryTemplateDto]?
    /** The custom fields with their values. */
    public var customFields: [CustomFieldValueDto]?
    /** Whether the entry has a metadata field a user can see and fill, by hand or with the AI filling: a field of a  template in `templates` whose `visible` is true, or a custom field in `customFields`. False when both lists are  empty, when every template is hidden, or when none of the visible ones has a field. It says nothing about the  values: it stays true once every field is filled. The same flag is carried by the entry in a folder listing and  in the file and folder info responses as `hasMetadataFields`, so a client that has the listing needs no call here  to decide whether to offer the filling. */
    public var hasMetadataFields: Bool?

    public init(templates: [EntryTemplateDto]? = nil, customFields: [CustomFieldValueDto]? = nil, hasMetadataFields: Bool? = nil) {
        self.templates = templates
        self.customFields = customFields
        self.hasMetadataFields = hasMetadataFields
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case templates
        case customFields
        case hasMetadataFields
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(templates, forKey: .templates)
        try container.encodeIfPresent(customFields, forKey: .customFields)
        try container.encodeIfPresent(hasMetadataFields, forKey: .hasMetadataFields)
    }
}

