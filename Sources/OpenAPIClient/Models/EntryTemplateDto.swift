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

/** A metadata template assigned to an entry: the template with every field of it, each field carrying its value on the entry. */
public struct EntryTemplateDto: Sendable, Codable, Hashable {

    /** The template ID. */
    public var id: Int?
    /** The template name. */
    public var name: String?
    /** Specifies if the template is visible in the UI pickers. */
    public var visible: Bool?
    /** Whether the template cascades from this entry to the folders and files below it. Only a folder or a room can  cascade; on a file the value is always false. */
    public var cascade: Bool?
    /** How the cascade of this entry treats a value an entry below already holds. Null while the template does not  cascade from this entry. */
    public var conflictResolveType: MetadataConflictResolveType?
    /** The template fields with their values on the entry. */
    public var fields: [EntryFieldDto]?

    public init(id: Int? = nil, name: String? = nil, visible: Bool? = nil, cascade: Bool? = nil, conflictResolveType: MetadataConflictResolveType? = nil, fields: [EntryFieldDto]? = nil) {
        self.id = id
        self.name = name
        self.visible = visible
        self.cascade = cascade
        self.conflictResolveType = conflictResolveType
        self.fields = fields
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case visible
        case cascade
        case conflictResolveType
        case fields
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(visible, forKey: .visible)
        try container.encodeIfPresent(cascade, forKey: .cascade)
        try container.encodeIfPresent(conflictResolveType, forKey: .conflictResolveType)
        try container.encodeIfPresent(fields, forKey: .fields)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension EntryTemplateDto: Identifiable {}
