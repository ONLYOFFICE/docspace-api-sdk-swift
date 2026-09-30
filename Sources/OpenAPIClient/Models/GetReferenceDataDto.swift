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

/** The body of a spreadsheet reference request: the source spreadsheet, and the three ways of naming the document it  refers to, which are tried in the order they are described. */
public struct GetReferenceDataDto: Sendable, Codable, Hashable {

    /** The id of the referenced file as the document service recorded it in the formula. It is tried first, and only  when `instanceId` names this portal. */
    public var fileKey: String?
    /** The portal the reference was made on, as the document service recorded it. Only the id of this portal makes  the file key resolvable; any other value falls through to the path and the link. */
    public var instanceId: String?
    /** The spreadsheet the formula sits in. The path is resolved against it - the referenced file is looked for among  the files lying next to it - and it is the file whose read access is checked. */
    public var sourceFileId: Int?
    /** The title of the referenced file exactly as the formula spells it, matched against the files lying next to the  source file. It is tried after the file key, and only when no link is given. */
    public var path: String?
    /** The web address the formula points at, an editor link of this portal or one of its short links. It is tried  last, and an address belonging to another site is not resolved at all but handed back for the client to follow  as it is. */
    public var link: String?

    public init(fileKey: String?, instanceId: String?, sourceFileId: Int? = nil, path: String? = nil, link: String? = nil) {
        self.fileKey = fileKey
        self.instanceId = instanceId
        self.sourceFileId = sourceFileId
        self.path = path
        self.link = link
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case fileKey
        case instanceId
        case sourceFileId
        case path
        case link
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(fileKey, forKey: .fileKey)
        try container.encode(instanceId, forKey: .instanceId)
        try container.encodeIfPresent(sourceFileId, forKey: .sourceFileId)
        try container.encodeIfPresent(path, forKey: .path)
        try container.encodeIfPresent(link, forKey: .link)
    }
}

