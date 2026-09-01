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

/** The parameters for checking file conversion. */
public struct CheckConversionRequestDtoInteger: Sendable, Codable, Hashable {

    /** The file ID to check conversion proccess. */
    public var fileId: Int?
    /** Specifies if the conversion process is synchronous or not. */
    public var sync: Bool?
    /** Specifies whether to start a conversion process or not. */
    public var startConvert: Bool?
    /** The file version that is converted. */
    public var version: Int?
    /** The password of the converted file. */
    public var password: String?
    /** The conversion output type. */
    public var outputType: String?
    /** Specifies whether to create a new file if it exists or not. */
    public var createNewIfExist: Bool?

    public init(fileId: Int? = nil, sync: Bool? = nil, startConvert: Bool? = nil, version: Int? = nil, password: String? = nil, outputType: String? = nil, createNewIfExist: Bool? = nil) {
        self.fileId = fileId
        self.sync = sync
        self.startConvert = startConvert
        self.version = version
        self.password = password
        self.outputType = outputType
        self.createNewIfExist = createNewIfExist
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case fileId
        case sync
        case startConvert
        case version
        case password
        case outputType
        case createNewIfExist
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(fileId, forKey: .fileId)
        try container.encodeIfPresent(sync, forKey: .sync)
        try container.encodeIfPresent(startConvert, forKey: .startConvert)
        try container.encodeIfPresent(version, forKey: .version)
        try container.encodeIfPresent(password, forKey: .password)
        try container.encodeIfPresent(outputType, forKey: .outputType)
        try container.encodeIfPresent(createNewIfExist, forKey: .createNewIfExist)
    }
}

