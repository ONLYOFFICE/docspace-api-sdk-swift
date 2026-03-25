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

/** The file statistics result parameters. */
public struct FilesStatisticsResultDto: Sendable, Codable, Hashable {

    public var myDocumentsUsedSpace: FilesStatisticsFolder?
    public var trashUsedSpace: FilesStatisticsFolder?
    public var archiveUsedSpace: FilesStatisticsFolder?
    public var roomsUsedSpace: FilesStatisticsFolder?
    public var aiAgentsUsedSpace: FilesStatisticsFolder?

    public init(myDocumentsUsedSpace: FilesStatisticsFolder? = nil, trashUsedSpace: FilesStatisticsFolder? = nil, archiveUsedSpace: FilesStatisticsFolder? = nil, roomsUsedSpace: FilesStatisticsFolder? = nil, aiAgentsUsedSpace: FilesStatisticsFolder? = nil) {
        self.myDocumentsUsedSpace = myDocumentsUsedSpace
        self.trashUsedSpace = trashUsedSpace
        self.archiveUsedSpace = archiveUsedSpace
        self.roomsUsedSpace = roomsUsedSpace
        self.aiAgentsUsedSpace = aiAgentsUsedSpace
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case myDocumentsUsedSpace
        case trashUsedSpace
        case archiveUsedSpace
        case roomsUsedSpace
        case aiAgentsUsedSpace
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(myDocumentsUsedSpace, forKey: .myDocumentsUsedSpace)
        try container.encodeIfPresent(trashUsedSpace, forKey: .trashUsedSpace)
        try container.encodeIfPresent(archiveUsedSpace, forKey: .archiveUsedSpace)
        try container.encodeIfPresent(roomsUsedSpace, forKey: .roomsUsedSpace)
        try container.encodeIfPresent(aiAgentsUsedSpace, forKey: .aiAgentsUsedSpace)
    }
}

