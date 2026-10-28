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

/** The error that ended the stream: its message, type, code and the offending parameter. */
public struct AiOpenAIStreamErrorError: Sendable, Codable, Hashable {

    public var message: String
    public var type: String
    public var code: String?
    public var param: String?

    public init(message: String, type: String, code: String?, param: String?) {
        self.message = message
        self.type = type
        self.code = code
        self.param = param
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case message
        case type
        case code
        case param
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(message, forKey: .message)
        try container.encode(type, forKey: .type)
        try container.encode(code, forKey: .code)
        try container.encode(param, forKey: .param)
    }
}

