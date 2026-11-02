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

/** A room linked to an AI project as its source. */
public struct AiProjectSourceDto: Sendable, Codable, Hashable {

    /** ID of the room. */
    public var id: Int
    /** Room title. */
    public var title: String?
    /** Room logo. */
    public var logo: LogoDto?

    public init(id: Int, title: String?, logo: LogoDto? = nil) {
        self.id = id
        self.title = title
        self.logo = logo
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case title
        case logo
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(title, forKey: .title)
        try container.encodeIfPresent(logo, forKey: .logo)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension AiProjectSourceDto: Identifiable {}
