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

public struct AiMetaFill200ResponseUnresolvedInner: Sendable, Codable, Hashable {

    public enum Reason: String, Sendable, Codable, CaseIterable {
        case alreadySet = "already_set"
        case notFound = "not_found"
        case invalidValue = "invalid_value"
        case unknownOption = "unknown_option"
        case writeFailed = "write_failed"
    }
    public var fieldId: Double?
    public var name: String
    public var reason: Reason

    public init(fieldId: Double? = nil, name: String, reason: Reason) {
        self.fieldId = fieldId
        self.name = name
        self.reason = reason
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case fieldId
        case name
        case reason
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(fieldId, forKey: .fieldId)
        try container.encode(name, forKey: .name)
        try container.encode(reason, forKey: .reason)
    }
}

