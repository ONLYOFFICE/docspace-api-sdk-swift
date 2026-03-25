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

/** The configuration parameters of the user currently viewing or editing the document. */
public struct UserConfig: Sendable, Codable, Hashable {

    /** The user ID. */
    public var id: String?
    /** The full name of the user. */
    public var name: String?
    /** The path to the user's avatar. */
    public var image: String?
    /** Roles */
    public var roles: [String]?
    /** Customer identifier associated with the user. */
    public var customerId: String?

    public init(id: String? = nil, name: String? = nil, image: String? = nil, roles: [String]? = nil, customerId: String? = nil) {
        self.id = id
        self.name = name
        self.image = image
        self.roles = roles
        self.customerId = customerId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case image
        case roles
        case customerId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(image, forKey: .image)
        try container.encodeIfPresent(roles, forKey: .roles)
        try container.encodeIfPresent(customerId, forKey: .customerId)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension UserConfig: Identifiable {}
