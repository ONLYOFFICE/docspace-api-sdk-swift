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

/** One file of a bulk download, together with the format it is converted to. */
public struct DownloadRequestItemDto: Sendable, Codable, Hashable {

    public var key: DownloadRequestItemDtoKey
    /** The format the file is converted to before it is packed, as a file extension without a leading dot. */
    public var value: String?
    /** The password that opens the source file, for a file protected with one; a protected file cannot be converted  without it. */
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

