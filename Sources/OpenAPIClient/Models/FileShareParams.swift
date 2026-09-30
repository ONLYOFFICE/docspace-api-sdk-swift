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

/** One sharing entry: an account, a group or an email address, and the access level it is given. */
public struct FileShareParams: Sendable, Codable, Hashable {

    public static let emailRule = StringRule(minLength: nil, maxLength: 255, pattern: nil)
    /** The address of somebody who has no portal account yet. An invitation is sent to it and an account is created  once it is accepted, so this is the field to use instead of an account identifier when the person is new to  the portal. */
    public var email: String?
    /** The account or the group the entry is about, taken from the portal people and group listings. Leave it out and  give an email address instead to share with somebody who has no account yet. */
    public var shareTo: UUID?
    /** What the subject may do with the shared item. The value 0 takes the access away again, and which of the other  levels are accepted depends on what is being shared. */
    public var access: FileShare?

    public init(email: String? = nil, shareTo: UUID? = nil, access: FileShare? = nil) {
        self.email = email
        self.shareTo = shareTo
        self.access = access
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case email
        case shareTo
        case access
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(email, forKey: .email)
        try container.encodeIfPresent(shareTo, forKey: .shareTo)
        try container.encodeIfPresent(access, forKey: .access)
    }
}

