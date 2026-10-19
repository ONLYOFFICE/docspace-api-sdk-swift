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

/** The parameters of a metadata field choice option. */
public struct MetadataFieldOptionRequest: Sendable, Codable, Hashable {

    /** The option ID. Omit it for a new option. */
    public var id: UUID?
    /** The option value. */
    public var value: String?

    public init(id: UUID? = nil, value: String? = nil) {
        self.id = id
        self.value = value
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case value
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(value, forKey: .value)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension MetadataFieldOptionRequest: Identifiable {}
