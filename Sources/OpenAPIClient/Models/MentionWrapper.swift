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

/** A user the editor may offer: to be mentioned in a comment, or to be picked when protecting a document. */
public struct MentionWrapper: Sendable, Codable, Hashable {

    /** The account itself, in the shape the people listings use. */
    public var user: UserInfo?
    /** Where a mention notification for this user is delivered. */
    public var email: String?
    /** The account id as text, the same value the account object carries; it is what identifies the user in a sharing  request built from this list. */
    public var id: String?
    /** An absolute address of the medium-sized avatar. A generated default avatar is reported when the user never  uploaded one, so the field is never empty. */
    public var image: String?
    /** Not filled in by the operations that return this list: it always comes back false. Whether a user can already  open the document has to be read from the sharing settings of the file. */
    public var hasAccess: Bool?
    /** The name to display, assembled the way the portal is configured to show names. */
    public var name: String?

    public init(user: UserInfo? = nil, email: String? = nil, id: String? = nil, image: String? = nil, hasAccess: Bool? = nil, name: String? = nil) {
        self.user = user
        self.email = email
        self.id = id
        self.image = image
        self.hasAccess = hasAccess
        self.name = name
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case user
        case email
        case id
        case image
        case hasAccess
        case name
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(user, forKey: .user)
        try container.encodeIfPresent(email, forKey: .email)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(image, forKey: .image)
        try container.encodeIfPresent(hasAccess, forKey: .hasAccess)
        try container.encodeIfPresent(name, forKey: .name)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension MentionWrapper: Identifiable {}
