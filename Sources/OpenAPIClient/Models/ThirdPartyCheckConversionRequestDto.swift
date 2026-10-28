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

/** The parameters of one file conversion. */
public struct ThirdPartyCheckConversionRequestDto: Sendable, Codable, Hashable {

    /** The file to convert. It is taken from the route of the operation, so a value sent in the body is overwritten. */
    public var fileId: String?
    /** How to wait for the result: `true` converts inside the request and answers with the finished result, which is  only sensible for small documents, while `false` queues the conversion and answers with an entry to poll. */
    public var sync: Bool?
    /** Whether the conversion is to be started. It is set by the operation itself, so a value sent in the body is  overwritten. */
    public var startConvert: Bool?
    /** The version to convert; 0 or less means the current version. */
    public var version: Int?
    /** The password that opens the source document, for a file that is protected by one; anything else may be left  out. */
    public var password: String?
    /** The extension of the format to convert into, without the dot, and one the portal can produce from that  source format; left out, the default of the portal for that kind of document is used. */
    public var outputType: String?
    /** Where the result goes when the file has been converted before: `true` creates another file beside the source,  `false` replaces the converted file that already exists. */
    public var createNewIfExist: Bool?

    public init(fileId: String? = nil, sync: Bool? = nil, startConvert: Bool? = nil, version: Int? = nil, password: String? = nil, outputType: String? = nil, createNewIfExist: Bool? = nil) {
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

