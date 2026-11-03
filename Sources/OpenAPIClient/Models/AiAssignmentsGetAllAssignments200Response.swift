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

public enum AiAssignmentsGetAllAssignments200Response: Sendable, Codable, Hashable, ParameterConvertible {
    case typeAiAssignmentsExpanded(AiAssignmentsExpanded)
    case typeArrayOfString: String([String: String])

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .typeAiAssignmentsExpanded(let value):
            try container.encode(value)
        case .typeArrayOfString: String(let value):
            try container.encode(value)
        }
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(AiAssignmentsExpanded.self) {
            self = .typeAiAssignmentsExpanded(value)
        } else if let value = try? container.decode([String: String].self) {
            self = .typeArrayOfString: String(value)
        } else {
            throw DecodingError.typeMismatch(Self.Type.self, .init(codingPath: decoder.codingPath, debugDescription: "Unable to decode instance of AiAssignmentsGetAllAssignments200Response"))
        }
    }

    func asParameter(codableHelper: CodableHelper) -> any Sendable {
        switch self {
        case .typeAiAssignmentsExpanded(let value):
            return encodeIfPossible(value, codableHelper: codableHelper)
        case .typeArrayOfString: String(let value):
            return encodeIfPossible(value, codableHelper: codableHelper)
        }
    }
}

