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

/** One portal module the calling user may open. */
public struct EnabledModuleDto: Sendable, Codable, Hashable {

    /** The module's product class name, HTML-escaped. It is a display-oriented identifier and not the GUID the  access-settings operations work with, so it must not be passed to `GET api/2.0/settings/security/{id}`. */
    public var id: String?
    /** The module name in the portal language, HTML-escaped and ready to be rendered as text. */
    public var title: String?

    public init(id: String? = nil, title: String? = nil) {
        self.id = id
        self.title = title
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case title
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(title, forKey: .title)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension EnabledModuleDto: Identifiable {}
