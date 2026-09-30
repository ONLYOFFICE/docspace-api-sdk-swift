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

/** The editor tool call parameters. */
public enum EditorToolCallParametersDto: Sendable, Codable, Hashable {
    case typeGenerateDocxToolCallParametersDto(GenerateDocxToolCallParametersDto)
    case typeGenerateFormToolCallParametersDto(GenerateFormToolCallParametersDto)
    case typeGeneratePresentationToolCallParametersDto(GeneratePresentationToolCallParametersDto)

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .typeGenerateDocxToolCallParametersDto(let value):
            try container.encode(value)
        case .typeGenerateFormToolCallParametersDto(let value):
            try container.encode(value)
        case .typeGeneratePresentationToolCallParametersDto(let value):
            try container.encode(value)
        }
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(GenerateDocxToolCallParametersDto.self) {
            self = .typeGenerateDocxToolCallParametersDto(value)
        } else if let value = try? container.decode(GenerateFormToolCallParametersDto.self) {
            self = .typeGenerateFormToolCallParametersDto(value)
        } else if let value = try? container.decode(GeneratePresentationToolCallParametersDto.self) {
            self = .typeGeneratePresentationToolCallParametersDto(value)
        } else {
            throw DecodingError.typeMismatch(Self.Type.self, .init(codingPath: decoder.codingPath, debugDescription: "Unable to decode instance of EditorToolCallParametersDto"))
        }
    }
}

