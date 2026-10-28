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

/** The space that stored documents take in each section of the portal, in bytes. The figures cover every account of  the portal rather than the caller alone, and a section the portal does not have comes back as null instead of a  zero figure. */
public struct FilesStatisticsResultDto: Sendable, Codable, Hashable {

    /** The space taken by the personal Files sections of all accounts of the portal added together. An item deleted  to the trash keeps taking space and is counted in `trashUsedSpace` until the trash is emptied. */
    public var myDocumentsUsedSpace: FilesStatisticsFolder?
    /** The space held by the items deleted to the trash from any section, which is given back only when the trash is  emptied or the items are erased for good. */
    public var trashUsedSpace: FilesStatisticsFolder?
    /** The space taken by the content of the archived rooms, the archived form filling rooms included. Restoring a  room moves its space back to `roomsUsedSpace` or `formsUsedSpace`. */
    public var archiveUsedSpace: FilesStatisticsFolder?
    /** The space taken by the content of the active rooms, except the form filling rooms, whose content is reported  in `formsUsedSpace`. Archiving a room moves its space to `archiveUsedSpace`. */
    public var roomsUsedSpace: FilesStatisticsFolder?
    /** The space taken by the content of the AI agents section, which exists only in a portal where the AI agents  feature is active; creating an AI room is not enough to bring the section into being. */
    public var aiAgentsUsedSpace: FilesStatisticsFolder?
    /** The space taken by the content of the active form filling rooms, which is kept apart from `roomsUsedSpace`  even though those rooms are listed among the rooms. */
    public var formsUsedSpace: FilesStatisticsFolder?

    public init(myDocumentsUsedSpace: FilesStatisticsFolder? = nil, trashUsedSpace: FilesStatisticsFolder? = nil, archiveUsedSpace: FilesStatisticsFolder? = nil, roomsUsedSpace: FilesStatisticsFolder? = nil, aiAgentsUsedSpace: FilesStatisticsFolder? = nil, formsUsedSpace: FilesStatisticsFolder? = nil) {
        self.myDocumentsUsedSpace = myDocumentsUsedSpace
        self.trashUsedSpace = trashUsedSpace
        self.archiveUsedSpace = archiveUsedSpace
        self.roomsUsedSpace = roomsUsedSpace
        self.aiAgentsUsedSpace = aiAgentsUsedSpace
        self.formsUsedSpace = formsUsedSpace
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case myDocumentsUsedSpace
        case trashUsedSpace
        case archiveUsedSpace
        case roomsUsedSpace
        case aiAgentsUsedSpace
        case formsUsedSpace
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(myDocumentsUsedSpace, forKey: .myDocumentsUsedSpace)
        try container.encodeIfPresent(trashUsedSpace, forKey: .trashUsedSpace)
        try container.encodeIfPresent(archiveUsedSpace, forKey: .archiveUsedSpace)
        try container.encodeIfPresent(roomsUsedSpace, forKey: .roomsUsedSpace)
        try container.encodeIfPresent(aiAgentsUsedSpace, forKey: .aiAgentsUsedSpace)
        try container.encodeIfPresent(formsUsedSpace, forKey: .formsUsedSpace)
    }
}

