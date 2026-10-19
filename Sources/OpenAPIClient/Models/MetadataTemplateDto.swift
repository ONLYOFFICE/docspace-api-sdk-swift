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

/** The metadata template information. */
public struct MetadataTemplateDto: Sendable, Codable, Hashable {

    /** The template ID. */
    public var id: Int?
    /** The template name. */
    public var name: String?
    /** Specifies if the template is visible in the UI pickers. */
    public var visible: Bool?
    /** The user who created the template. A user who has since left the portal comes back as the lost user placeholder. */
    public var createBy: EmployeeDto?
    /** The template creation date. */
    public var createOn: ApiDateTime?
    /** The user who changed the template itself last: its name or its visibility. The creator until somebody changes  it; a change of a field is recorded on the field, not here. */
    public var modifiedBy: EmployeeDto?
    /** The date when the template was modified last. */
    public var modifiedOn: ApiDateTime?
    /** The template metadata fields. */
    public var fields: [MetadataFieldDto]?

    public init(id: Int? = nil, name: String? = nil, visible: Bool? = nil, createBy: EmployeeDto? = nil, createOn: ApiDateTime? = nil, modifiedBy: EmployeeDto? = nil, modifiedOn: ApiDateTime? = nil, fields: [MetadataFieldDto]? = nil) {
        self.id = id
        self.name = name
        self.visible = visible
        self.createBy = createBy
        self.createOn = createOn
        self.modifiedBy = modifiedBy
        self.modifiedOn = modifiedOn
        self.fields = fields
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case visible
        case createBy
        case createOn
        case modifiedBy
        case modifiedOn
        case fields
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(visible, forKey: .visible)
        try container.encodeIfPresent(createBy, forKey: .createBy)
        try container.encodeIfPresent(createOn, forKey: .createOn)
        try container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
        try container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
        try container.encodeIfPresent(fields, forKey: .fields)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension MetadataTemplateDto: Identifiable {}
