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

/** Field specific validation error */
public struct FieldError: Sendable, Codable, Hashable {

    /** The name of the field that failed validation */
    public var field: String?
    /** Error code for localization purposes */
    public var code: String?
    /** Human readable error message */
    public var message: String?

    public init(field: String? = nil, code: String? = nil, message: String? = nil) {
        self.field = field
        self.code = code
        self.message = message
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case field
        case code
        case message
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(field, forKey: .field)
        try container.encodeIfPresent(code, forKey: .code)
        try container.encodeIfPresent(message, forKey: .message)
    }
}

