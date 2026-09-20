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

public struct AiOpenaiChatCompletions403ResponseError: Sendable, Codable, Hashable {

    /** Human-readable description of the failure. */
    public var message: String
    /** OpenAI error class, for example `invalid_request_error`. */
    public var type: String
    /** Machine-readable code, when the provider supplies one. */
    public var code: String?
    /** The request parameter at fault, when the failure names one. */
    public var param: String?

    public init(message: String, type: String, code: String? = nil, param: String? = nil) {
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

    public var additionalProperties: [String: JSONValue] = [:]

    public subscript(key: String) -> JSONValue? {
        get {
            if let value = additionalProperties[key] {
                return value
            }
            return nil
        }

        set {
            additionalProperties[key] = newValue
        }
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(message, forKey: .message)
        try container.encode(type, forKey: .type)
        try container.encodeIfPresent(code, forKey: .code)
        try container.encodeIfPresent(param, forKey: .param)
        var additionalPropertiesContainer = encoder.container(keyedBy: String.self)
        try additionalPropertiesContainer.encodeMap(additionalProperties)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        message = try container.decode(String.self, forKey: .message)
        type = try container.decode(String.self, forKey: .type)
        code = try container.decodeIfPresent(String.self, forKey: .code)
        param = try container.decodeIfPresent(String.self, forKey: .param)
        var nonAdditionalPropertyKeys = Set<String>()
        nonAdditionalPropertyKeys.insert("message")
        nonAdditionalPropertyKeys.insert("type")
        nonAdditionalPropertyKeys.insert("code")
        nonAdditionalPropertyKeys.insert("param")
        let additionalPropertiesContainer = try decoder.container(keyedBy: String.self)
        additionalProperties = try additionalPropertiesContainer.decodeMap(JSONValue.self, excludedKeys: nonAdditionalPropertyKeys)
    }
}

