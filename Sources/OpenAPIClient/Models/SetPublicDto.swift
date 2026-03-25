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

/** The public settings of the room template to set. */
public struct SetPublicDto: Sendable, Codable, Hashable {

    /** The room template ID. */
    public var id: Int
    /** Specifies whether the room template is public or not. */
    public var _public: Bool?

    public init(id: Int, _public: Bool? = nil) {
        self.id = id
        self._public = _public
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case _public = "public"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encodeIfPresent(_public, forKey: ._public)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension SetPublicDto: Identifiable {}
