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

/** The Document Builder task parameters. */
public struct DocumentBuilderTaskDto: Sendable, Codable, Hashable {

    /** The Document Builder task ID. */
    public var id: String?
    /** The error message occurred during the document building process. */
    public var error: String?
    /** The progress percentage of the document building process. */
    public var percentage: Int
    /** Specifies whether the document building process is completed or not. */
    public var isCompleted: Bool
    public var status: DistributedTaskStatus
    /** The result file ID. */
    public var resultFileId: JSONValue?
    /** The result file name. */
    public var resultFileName: String?
    /** The result file URL. */
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
