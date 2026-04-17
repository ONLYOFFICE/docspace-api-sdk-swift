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

/** The XLSX report task response parameters. */
public struct XlsxReportResponseDto: Sendable, Codable, Hashable {

    public var form: FileDtoInteger?
    public var task: DocumentBuilderTaskDto?
    /** Specifies whether the XLSX report file is newly created or an existing file will be updated. */
    public var isNewFile: Bool?

    public init(form: FileDtoInteger? = nil, task: DocumentBuilderTaskDto? = nil, isNewFile: Bool? = nil) {
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

