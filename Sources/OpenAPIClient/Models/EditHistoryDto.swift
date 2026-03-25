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

/** The file editing history parameters. */
public struct EditHistoryDto: Sendable, Codable, Hashable {

    /** The document ID. */
    public var id: Int?
    /** The document identifier used to unambiguously identify the document file. */
    public var key: String?
    /** The document version number. */
    public var version: Int?
    /** The document version group. */
    public var versionGroup: Int?
    public var user: EditHistoryAuthor?
    public var created: ApiDateTime?
    /** The file history changes in the string format. */
    public var changesHistory: String?
    /** The list of file history changes. */
    public var changes: [EditHistoryChangesWrapper]?
    /** The current server version number. */
    public var serverVersion: String?

    public init(id: Int? = nil, key: String? = nil, version: Int? = nil, versionGroup: Int? = nil, user: EditHistoryAuthor? = nil, created: ApiDateTime? = nil, changesHistory: String? = nil, changes: [EditHistoryChangesWrapper]? = nil, serverVersion: String? = nil) {
        self.id = id
        self.key = key
        self.version = version
        self.versionGroup = versionGroup
        self.user = user
        self.created = created
        self.changesHistory = changesHistory
        self.changes = changes
        self.serverVersion = serverVersion
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case key
        case version
        case versionGroup
        case user
        case created
        case changesHistory
        case changes
        case serverVersion
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(key, forKey: .key)
        try container.encodeIfPresent(version, forKey: .version)
        try container.encodeIfPresent(versionGroup, forKey: .versionGroup)
        try container.encodeIfPresent(user, forKey: .user)
        try container.encodeIfPresent(created, forKey: .created)
        try container.encodeIfPresent(changesHistory, forKey: .changesHistory)
        try container.encodeIfPresent(changes, forKey: .changes)
        try container.encodeIfPresent(serverVersion, forKey: .serverVersion)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension EditHistoryDto: Identifiable {}
