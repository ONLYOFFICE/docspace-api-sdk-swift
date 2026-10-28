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

/** The answer to a report generation request: the queued task, the form whose answers are collected, and whether the  report file is being created or refreshed. */
public struct XlsxReportResponseDto: Sendable, Codable, Hashable {

    /** The original form the answers are collected from. It is not the produced spreadsheet - that one arrives with  the task, once the task reports completion. */
    public var form: FileDto?
    /** The queued generation. Poll it with `GET api/2.0/files/file/{fileId}/xlsx` until it reports completion, and  take the produced file from it then. */
    public var task: DocumentBuilderTaskDto?
    /** True when this run creates the report file, false when an existing report is rewritten in place, which means  it keeps its id and the links already shared for it. */
    public var isNewFile: Bool?

    public init(form: FileDto? = nil, task: DocumentBuilderTaskDto? = nil, isNewFile: Bool? = nil) {
        self.form = form
        self.task = task
        self.isNewFile = isNewFile
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case form
        case task
        case isNewFile
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(form, forKey: .form)
        try container.encodeIfPresent(task, forKey: .task)
        try container.encodeIfPresent(isNewFile, forKey: .isNewFile)
    }
}

