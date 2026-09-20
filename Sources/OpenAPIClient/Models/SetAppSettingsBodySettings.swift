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

/** The configuration the application reads, as any valid JSON value. Its shape is defined by the application and  is neither validated nor interpreted by the portal, which stores it verbatim. It replaces the whole stored  document rather than merging into it, and `null` drops it so the application falls back to its own defaults. */
public enum SetAppSettingsBodySettings: Sendable, Codable, Hashable {
    case typeInt(Int)
    case typeString(String)

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .typeInt(let value):
            try container.encode(value)
        case .typeString(let value):
            try container.encode(value)
        }
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(Int.self) {
            self = .typeInt(value)
        } else if let value = try? container.decode(String.self) {
            self = .typeString(value)
        } else {
            throw DecodingError.typeMismatch(Self.Type.self, .init(codingPath: decoder.codingPath, debugDescription: "Unable to decode instance of SetAppSettingsBodySettings"))
        }
    }
}

