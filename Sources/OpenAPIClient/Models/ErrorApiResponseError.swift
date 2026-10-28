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

/** What went wrong. */
public struct ErrorApiResponseError: Sendable, Codable, Hashable {

    /** The human-readable error message. */
    public var message: String?
    /** The .NET type of the underlying exception. Only sent when stack traces are enabled. */
    public var type: String?
    /** The stack trace of the underlying exception. Only sent when stack traces are enabled. */
    public var stack: String?
    /** The HRESULT of the underlying exception. Only sent when stack traces are enabled. */
    public var hresult: Int?

    public init(message: String? = nil, type: String? = nil, stack: String? = nil, hresult: Int? = nil) {
        self.message = message
        self.type = type
        self.stack = stack
        self.hresult = hresult
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case message
        case type
        case stack
        case hresult
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(message, forKey: .message)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(stack, forKey: .stack)
        try container.encodeIfPresent(hresult, forKey: .hresult)
    }
}

