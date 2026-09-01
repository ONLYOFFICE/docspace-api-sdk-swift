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

/** A field-scoped validation error: which form field was rejected, and why. */
public struct AiTErrorData: Sendable, Codable, Hashable {

    public enum Field: String, Sendable, Codable, CaseIterable {
        case key = "key"
        case url = "url"
        case name = "name"
    }
    /** The rejected field. */
    public var field: Field
    /** The human-readable reason the field was rejected. */
    public var message: String

    public init(field: Field, message: String) {
        self.field = field
        self.message = message
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case field
        case message
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(field, forKey: .field)
        try container.encode(message, forKey: .message)
    }
}

