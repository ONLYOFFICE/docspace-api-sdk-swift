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

/** Response containing validation errors */
public struct ValidationErrorResponse: Sendable, Codable, Hashable {

    /** Error type identifier */
    public var error: String?
    /** General error message */
    public var message: String?
    /** List of field specific validation errors */
    public var errors: [FieldError]?

    public init(error: String? = nil, message: String? = nil, errors: [FieldError]? = nil) {
        self.error = error
        self.message = message
        self.errors = errors
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case error
        case message
        case errors
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(error, forKey: .error)
        try container.encodeIfPresent(message, forKey: .message)
        try container.encodeIfPresent(errors, forKey: .errors)
    }
}

