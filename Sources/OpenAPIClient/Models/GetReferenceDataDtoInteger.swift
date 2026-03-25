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

/** The request parameters for getting reference data. */
public struct GetReferenceDataDtoInteger: Sendable, Codable, Hashable {

    /** The unique document identifier used by the service to get a link to the file. */
    public var fileKey: String?
    /** The unique system identifier. */
    public var instanceId: String?
    /** The source file ID. */
    public var sourceFileId: Int?
    /** The file name or relative path for the formula editor. */
    public var path: String?
    /** The file link. */
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

