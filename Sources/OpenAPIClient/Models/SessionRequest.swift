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

/** The session request parameters. */
public struct SessionRequest: Sendable, Codable, Hashable {

    /** The file name. */
    public var fileName: String?
    /** The file size. */
    public var fileSize: Int64?
    /** The relative path to the file. */
    public var relativePath: String?
    public var createOn: ApiDateTime?
    /** Specifies whether the file is encrypted or not. */
    public var encrypted: Bool?
    /** Specifies whether to create a new file if it already exists. */
    public var createNewIfExist: Bool?

    public init(fileName: String?, fileSize: Int64? = nil, relativePath: String? = nil, createOn: ApiDateTime? = nil, encrypted: Bool? = nil, createNewIfExist: Bool? = nil) {
        self.fileName = fileName
        self.fileSize = fileSize
        self.relativePath = relativePath
        self.createOn = createOn
        self.encrypted = encrypted
        self.createNewIfExist = createNewIfExist
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case fileName
        case fileSize
        case relativePath
        case createOn
        case encrypted
        case createNewIfExist
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(fileName, forKey: .fileName)
        try container.encodeIfPresent(fileSize, forKey: .fileSize)
        try container.encodeIfPresent(relativePath, forKey: .relativePath)
        try container.encodeIfPresent(createOn, forKey: .createOn)
        try container.encodeIfPresent(encrypted, forKey: .encrypted)
        try container.encodeIfPresent(createNewIfExist, forKey: .createNewIfExist)
    }
}

