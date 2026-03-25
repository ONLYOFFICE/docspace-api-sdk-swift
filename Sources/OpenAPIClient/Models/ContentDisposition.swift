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

public struct ContentDisposition: Sendable, Codable, Hashable {

    public var dispositionType: String?
    public var parameters: [JSONValue]?
    public var fileName: String?
    public var creationDate: Date?
    public var modificationDate: Date?
    public var inline: Bool?
    public var readDate: Date?
    public var size: Int64?

    public init(dispositionType: String? = nil, parameters: [JSONValue]? = nil, fileName: String? = nil, creationDate: Date? = nil, modificationDate: Date? = nil, inline: Bool? = nil, readDate: Date? = nil, size: Int64? = nil) {
        self.dispositionType = dispositionType
        self.parameters = parameters
        self.fileName = fileName
        self.creationDate = creationDate
        self.modificationDate = modificationDate
        self.inline = inline
        self.readDate = readDate
        self.size = size
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case dispositionType
        case parameters
        case fileName
        case creationDate
        case modificationDate
        case inline
        case readDate
        case size
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(dispositionType, forKey: .dispositionType)
        try container.encodeIfPresent(parameters, forKey: .parameters)
        try container.encodeIfPresent(fileName, forKey: .fileName)
        try container.encodeIfPresent(creationDate, forKey: .creationDate)
        try container.encodeIfPresent(modificationDate, forKey: .modificationDate)
        try container.encodeIfPresent(inline, forKey: .inline)
        try container.encodeIfPresent(readDate, forKey: .readDate)
        try container.encodeIfPresent(size, forKey: .size)
    }
}

