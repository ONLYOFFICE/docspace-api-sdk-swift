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

public struct AiVectorizationStartTask200Response: Sendable, Codable, Hashable {

    /** Envelope field from the internal service; 0 for this operation. */
    public var count: Int
    /** Envelope status flag from the internal service. */
    public var status: Int
    /** HTTP status the internal service answered with. */
    public var statusCode: Int

    public init(count: Int, status: Int, statusCode: Int) {
        self.count = count
        self.status = status
        self.statusCode = statusCode
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case count
        case status
        case statusCode
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
        try container.encode(count, forKey: .count)
        try container.encode(status, forKey: .status)
        try container.encode(statusCode, forKey: .statusCode)
        var additionalPropertiesContainer = encoder.container(keyedBy: String.self)
        try additionalPropertiesContainer.encodeMap(additionalProperties)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        count = try container.decode(Int.self, forKey: .count)
        status = try container.decode(Int.self, forKey: .status)
        statusCode = try container.decode(Int.self, forKey: .statusCode)
        var nonAdditionalPropertyKeys = Set<String>()
        nonAdditionalPropertyKeys.insert("count")
        nonAdditionalPropertyKeys.insert("status")
        nonAdditionalPropertyKeys.insert("statusCode")
        let additionalPropertiesContainer = try decoder.container(keyedBy: String.self)
        additionalProperties = try additionalPropertiesContainer.decodeMap(JSONValue.self, excludedKeys: nonAdditionalPropertyKeys)
    }
}

