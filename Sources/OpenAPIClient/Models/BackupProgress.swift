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

/** The state of one backup or restoring job. */
public struct BackupProgress: Sendable, Codable, Hashable {

    /** Specifies whether the job has stopped running. This is the field to poll: true means the job will not  change any more, whether it succeeded, failed or was cancelled, and `status` tells which of the three  it is. */
    public var isCompleted: Bool?
    /** The share of the job that is already done, from 0 to 100. A job that has only been queued reports 0,  because the work starts when a separate worker service picks it up. */
    public var progress: Int?
    /** The message of the error that stopped the job. It is an empty string, not null, while the job runs  and after a job that succeeded, so the sign of a failure is a non-empty value - and this is the only  place where the reason is reported. */
    public var error: String?
    /** A message about a job that stopped without failing: it names the entry inside the archive that lists  the files which could not be read, when a backup finished without some of them, and it says so when  the job was cancelled. It is an empty string otherwise, and it is only ever filled in for a backup  job - a cancelled restoring job leaves it empty. */
    public var warning: String?
    /** The link to download the stored archive. It is an empty string until the archive has been uploaded,  and it is only ever filled in for a backup job, never for a restoring one. */
    public var link: String?
    /** The ID of the portal the job belongs to, or -1 for a job that covers the whole server. */
    public var tenantId: Int?
    /** Whether this is a backup or a restoring job, reported as a number rather than as a name. */
    public var backupProgressEnum: BackupProgressEnum?
    /** The state of the job: `Created` while it waits for a worker to pick it up, `Running` while it works,  `Completed` once it has finished on its own, `Canceled` after it was cancelled, and `Failted` when it  stopped on an error, in which case `error` carries the reason. Reported as a number rather than as a  name. */
    public var status: DistributedTaskStatus?
    /** The ID of the job. It is the handle to poll this operation with, and for a backup job it also becomes  the `id` of the record in `GET api/2.0/backup/getbackuphistory`. */
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

