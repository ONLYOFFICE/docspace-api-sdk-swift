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

/** The file upload result. */
public struct FileUploadResultDto: Sendable, Codable, Hashable {

    /** Specifies if the upload operation is successful or not. */
    public var success: Bool?
    /** The file upload result data. */
    public var data: JSONValue?
    /** The file upload result message. */
    public var message: String?

    public init(success: Bool? = nil, data: JSONValue? = nil, message: String? = nil) {
        self.success = success
        self.data = data
        self.message = message
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case success
        case data
        case message
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(success, forKey: .success)
        try container.encodeIfPresent(data, forKey: .data)
        try container.encodeIfPresent(message, forKey: .message)
    }
}

