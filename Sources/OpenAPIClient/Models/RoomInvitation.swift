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

/** The room invitation parameters. */
public struct RoomInvitation: Sendable, Codable, Hashable {

    public static let emailRule = StringRule(minLength: nil, maxLength: 255, pattern: nil)
    /** The email address. */
    public var email: String?
    /** The ID of the user to share a room with. */
    public var id: UUID?
    public var access: FileShare?

    public init(email: String? = nil, id: UUID? = nil, access: FileShare? = nil) {
        self.email = email
        self.id = id
        self.access = access
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case email
        case id
        case access
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(email, forKey: .email)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(access, forKey: .access)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension RoomInvitation: Identifiable {}
