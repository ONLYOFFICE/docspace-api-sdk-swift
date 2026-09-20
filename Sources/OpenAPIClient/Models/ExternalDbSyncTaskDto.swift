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

/** The state of the job that exports the collected form data of a form filling room into the external database of the  portal. */
public struct ExternalDbSyncTaskDto: Sendable, Codable, Hashable {

    /** The identifier of the job, which stays the same while a job for this room exists and is worth quoting when a  failure has to be traced in the portal logs. Polling is done by room, so the value is not needed to read the  state again. */
    public var id: String?
    /** The message of a failure that stopped the whole job. It is empty while the job is running and after a job that  ended without such a failure; a job that finished with individual forms rejected reports those in `forms` and  leaves this field empty. */
    public var error: String?
    /** How much of the work is done, from 0 to 100. It advances as the forms of the room are processed one by one, so  it is a usable progress indicator for a room with many forms and jumps straight to the end for a room with  one. */
    public var percentage: Int
    /** Whether the job has ended. It is set both for a job that finished its work and for one that stopped on an  error, so this is the flag to poll for, and `status` and `error` are what tell the two apart. */
    public var isCompleted: Bool
    /** How the job ended, or how far it has got: queued, running, finished, cancelled or failed. It is the only field  that separates a successful end from a failed one once `isCompleted` is set. */
    public var status: DistributedTaskStatus
    /** The outcome for every original form of the room, one entry each. The list is empty while the job is running  and is filled in only when the job ends, so it is what to read after `isCompleted` turns true; it stays empty  for a room that holds no forms at all. */
    public var forms: [ExternalDbSyncFormResultDto]?

    public init(id: String?, error: String? = nil, percentage: Int, isCompleted: Bool, status: DistributedTaskStatus, forms: [ExternalDbSyncFormResultDto]?) {
        self.id = id
        self.error = error
        self.percentage = percentage
        self.isCompleted = isCompleted
        self.status = status
        self.forms = forms
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case error
        case percentage
        case isCompleted
        case status
        case forms
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encodeIfPresent(error, forKey: .error)
        try container.encode(percentage, forKey: .percentage)
        try container.encode(isCompleted, forKey: .isCompleted)
        try container.encode(status, forKey: .status)
        try container.encode(forms, forKey: .forms)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension ExternalDbSyncTaskDto: Identifiable {}
