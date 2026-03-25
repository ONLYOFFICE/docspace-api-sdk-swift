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

/** The backup progress parameters. */
public struct BackupProgress: Sendable, Codable, Hashable {

    /** Specifies if the backup is completed or not. */
    public var isCompleted: Bool?
    /** The backup progress in percentage. */
    public var progress: Int?
    /** The backup error message. */
    public var error: String?
    /** The backup warning message. */
    public var warning: String?
    /** The backup link. */
    public var link: String?
    /** The tenant ID. */
    public var tenantId: Int?
    public var backupProgressEnum: BackupProgressEnum?
    public var status: DistributedTaskStatus?
    /** The task ID. */
    public var taskId: String?

    public init(isCompleted: Bool? = nil, progress: Int? = nil, error: String? = nil, warning: String? = nil, link: String? = nil, tenantId: Int? = nil, backupProgressEnum: BackupProgressEnum? = nil, status: DistributedTaskStatus? = nil, taskId: String? = nil) {
        self.isCompleted = isCompleted
        self.progress = progress
        self.error = error
        self.warning = warning
        self.link = link
        self.tenantId = tenantId
        self.backupProgressEnum = backupProgressEnum
        self.status = status
        self.taskId = taskId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case isCompleted
        case progress
        case error
        case warning
        case link
        case tenantId
        case backupProgressEnum
        case status
        case taskId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(isCompleted, forKey: .isCompleted)
        try container.encodeIfPresent(progress, forKey: .progress)
        try container.encodeIfPresent(error, forKey: .error)
        try container.encodeIfPresent(warning, forKey: .warning)
        try container.encodeIfPresent(link, forKey: .link)
        try container.encodeIfPresent(tenantId, forKey: .tenantId)
        try container.encodeIfPresent(backupProgressEnum, forKey: .backupProgressEnum)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(taskId, forKey: .taskId)
    }
}

