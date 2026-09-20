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

/** One saved revision of a file, as the editing service recorded it. */
public struct EditHistoryDto: Sendable, Codable, Hashable {

    /** The file the revision belongs to; every entry of one history carries the same value. */
    public var id: Int?
    /** The document key of this revision, which the editing service uses to tell the revisions of a file apart and to  reuse the copy it has cached. Hand it back unchanged when asking the editor for this revision. */
    public var key: String?
    /** The number of the revision, counting up from 1 in the order the revisions were saved. It is the value the  operations that show the changes of a revision or restore it expect. */
    public var version: Int?
    /** Groups the revisions written by one editing session: entries sharing this number were saved while the same  session was open, which is how a client collapses a long list of revisions into the versions a person would  recognise. */
    public var versionGroup: Int?
    /** The account that saved the revision. A revision saved by an account that no longer exists, or through an  anonymous link, is reported as a guest. */
    public var user: EditHistoryAuthor?
    /** When the revision was saved, written with the offset of the portal's time zone rather than as plain UTC. The  times of one history are consistent with each other, so order and display the revisions by them. */
    public var created: ApiDateTime?
    /** The change record the editing service stored for this revision, as the raw JSON it was written in, and empty  for a revision the portal has no record for - one uploaded as a whole file, for instance. `changes` is the  same record already parsed. */
    public var changesHistory: String?
    /** The single changes this revision introduced - who made each of them and when - taken from the stored change  record. It comes back empty both for a revision whose changes were never recorded and for one whose record is  in a format the portal no longer reads, so an empty list is not proof that nothing changed. */
    public var changes: [EditHistoryChangesWrapper]?
    /** The build of the editing service that wrote the change record of this revision, taken from the record itself;  empty when the portal holds no record for the revision. */
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
