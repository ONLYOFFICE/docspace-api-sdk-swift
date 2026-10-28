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

/** The state of a background document building task: how far it has got, how it ended, and the file it produced. */
public struct DocumentBuilderTaskDto: Sendable, Codable, Hashable {

    /** The identifier of the task. It is derived from the portal, the account and the kind of report, so starting the  same report again while it runs returns this same value, which is how a resumed poll is told from a newly  queued build. */
    public var id: String?
    /** The message of the failure that stopped the build. It is filled in only for a task that ended in the failed  state, and stays empty while the task runs and after it succeeds. */
    public var error: String?
    /** How far the build has got, from 0 to 100. It advances in a few coarse steps rather than smoothly, so it is a  progress hint and not a measure of the time left; wait on the completion flag instead. */
    public var percentage: Int
    /** True once the task has stopped for any reason, a failure and a cancellation included. It is the field to poll  on, and the status tells those outcomes apart. */
    public var isCompleted: Bool
    /** How the task ended, or that it has not started yet. Read it together with the completion flag: a stopped task  can be a finished build, a cancelled one or a failure, and only this field separates them. */
    public var status: DistributedTaskStatus
    public var resultFileId: JSONValue?
    /** The name the produced file was saved with, extension included. The name is built from the subject of the  report and is not unique: a second build adds another file instead of replacing the first. */
    public var resultFileName: String?
    /** The address of the produced file in the document editor, relative to the portal root, so prefix it with the  portal address to open it. It stays empty until the build succeeds. */
    public var resultFileUrl: String?

    public init(id: String?, error: String?, percentage: Int, isCompleted: Bool, status: DistributedTaskStatus, resultFileId: JSONValue?, resultFileName: String?, resultFileUrl: String?) {
        self.id = id
        self.error = error
        self.percentage = percentage
        self.isCompleted = isCompleted
        self.status = status
        self.resultFileId = resultFileId
        self.resultFileName = resultFileName
        self.resultFileUrl = resultFileUrl
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case error
        case percentage
        case isCompleted
        case status
        case resultFileId
        case resultFileName
        case resultFileUrl
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(error, forKey: .error)
        try container.encode(percentage, forKey: .percentage)
        try container.encode(isCompleted, forKey: .isCompleted)
        try container.encode(status, forKey: .status)
        try container.encode(resultFileId, forKey: .resultFileId)
        try container.encode(resultFileName, forKey: .resultFileName)
        try container.encode(resultFileUrl, forKey: .resultFileUrl)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension DocumentBuilderTaskDto: Identifiable {}
