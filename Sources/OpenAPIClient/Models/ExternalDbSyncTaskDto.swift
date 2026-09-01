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

/** The external DB synchronization task parameters. */
public struct ExternalDbSyncTaskDto: Sendable, Codable, Hashable {

    /** The task ID. */
    public var id: String?
    /** The error message if the synchronization failed. */
    public var error: String?
    /** The progress percentage of the synchronization. */
    public var percentage: Int
    /** Specifies whether the synchronization is completed or not. */
    public var isCompleted: Bool
    /** The status of the synchronization task. */
    public var status: DistributedTaskStatus
    /** The synchronization results for all original forms in the room. */
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
