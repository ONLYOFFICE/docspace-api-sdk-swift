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

/** The download request item with conversion parameters and security settings. */
public struct DownloadRequestItemDto: Sendable, Codable, Hashable {

    public var key: DownloadRequestItemDtoKey
    /** The target format or conversion type for the file download. */
    public var value: String?
    /** The optional password for accessing protected files. */
    public var password: String?

    public init(key: DownloadRequestItemDtoKey, value: String?, password: String? = nil) {
        self.key = key
        self.value = value
        self.password = password
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case key
        case value
        case password
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(key, forKey: .key)
        try container.encode(value, forKey: .value)
        try container.encodeIfPresent(password, forKey: .password)
    }
}

