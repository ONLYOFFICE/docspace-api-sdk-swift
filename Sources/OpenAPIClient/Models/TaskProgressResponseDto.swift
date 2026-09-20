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

/** The task progress response parameters. */
public struct TaskProgressResponseDto: Sendable, Codable, Hashable {

    /** The ID of the queued job. It identifies this run of the job and changes every time the job is started again. */
    public var id: String?
    /** The message of the error that stopped the job. It is empty while the job is running and after a job that  succeeded, and it is the only place where the reason for a failure is reported. */
    public var error: String?
    /** The share of the job that is already done, from 0 to 100. */
    public var percentage: Int
    /** Specifies whether the job has stopped running. This is the field to poll: true means the job will not change  any more, whether it succeeded, failed or was cancelled, and `status` tells which of the three it is. */
    public var isCompleted: Bool
    /** The state of the job: `Created` while it waits in the queue, `Running` while it works, `Completed` once it has  finished on its own, `Canceled` after a terminate operation, and `Failted` when it stopped on an error, in  which case `error` carries the reason. */
    public var status: DistributedTaskStatus

    public init(id: String?, error: String? = nil, percentage: Int, isCompleted: Bool, status: DistributedTaskStatus) {
        self.id = id
        self.error = error
        self.percentage = percentage
        self.isCompleted = isCompleted
        self.status = status
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case error
        case percentage
        case isCompleted
        case status
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encodeIfPresent(error, forKey: .error)
        try container.encode(percentage, forKey: .percentage)
        try container.encode(isCompleted, forKey: .isCompleted)
        try container.encode(status, forKey: .status)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension TaskProgressResponseDto: Identifiable {}
