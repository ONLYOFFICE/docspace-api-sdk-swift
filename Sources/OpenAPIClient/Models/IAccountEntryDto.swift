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

/** One entry of an account search: either a user or a group. */
public enum IAccountEntryDto: Sendable, Codable, Hashable {
    case typeEmployeeFullDto(EmployeeFullDto)
    case typeGroupDto(GroupDto)

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .typeEmployeeFullDto(let value):
            try container.encode(value)
        case .typeGroupDto(let value):
            try container.encode(value)
        }
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(EmployeeFullDto.self) {
            self = .typeEmployeeFullDto(value)
        } else if let value = try? container.decode(GroupDto.self) {
            self = .typeGroupDto(value)
        } else {
            throw DecodingError.typeMismatch(Self.Type.self, .init(codingPath: decoder.codingPath, debugDescription: "Unable to decode instance of IAccountEntryDto"))
        }
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension IAccountEntryDto: Identifiable {}
