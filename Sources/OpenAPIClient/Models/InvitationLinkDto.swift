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

/** The portal's standing invitation link for one role: what it grants, how long it lasts, how often it was used. */
public struct InvitationLinkDto: Sendable, Codable, Hashable {

    /** The identifier to address the link by in `PUT api/2.0/portal/users/invitationlink` and  `DELETE api/2.0/portal/users/invitationlink`. It survives a change of deadline or use limit, so it is  worth storing rather than re-reading. */
    public var id: UUID?
    /** The role an account gets by joining through this link. A portal keeps at most one link per role, and the  role of an existing link cannot be changed - the link has to be deleted and created again. */
    public var employeeType: EmployeeType
    /** When the link stops working, in the portal time zone. It is empty for a link that never expires, which is  what omitting the deadline on create or update leaves behind. */
    public var expiration: ApiDateTime?
    /** Whether that deadline has already passed. A link without a deadline always reports `false`, and an expired  link is still returned rather than treated as gone - it can be revived by moving `expiration`. */
    public var isExpired: Bool?
    /** How many accounts may join through the link in total. It is empty for a link with no use limit, and an  update may not lower it below `currentUseCount`. */
    public var maxUseCount: Int?
    /** How many accounts have already joined through the link. It only ever grows, and reaching `maxUseCount`  retires the link as surely as a passed deadline. */
    public var currentUseCount: Int?
    /** The shortened address to hand to the people being invited. It is signed for the account that read it, so  two administrators are given two different URLs for one and the same link and both of them work; the `id`  above, not this string, is what identifies the link. */
    public var url: String?

    public init(id: UUID? = nil, employeeType: EmployeeType, expiration: ApiDateTime? = nil, isExpired: Bool? = nil, maxUseCount: Int? = nil, currentUseCount: Int? = nil, url: String? = nil) {
        self.id = id
        self.employeeType = employeeType
        self.expiration = expiration
        self.isExpired = isExpired
        self.maxUseCount = maxUseCount
        self.currentUseCount = currentUseCount
        self.url = url
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case employeeType
        case expiration
        case isExpired
        case maxUseCount
        case currentUseCount
        case url
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encode(employeeType, forKey: .employeeType)
        try container.encodeIfPresent(expiration, forKey: .expiration)
        try container.encodeIfPresent(isExpired, forKey: .isExpired)
        try container.encodeIfPresent(maxUseCount, forKey: .maxUseCount)
        try container.encodeIfPresent(currentUseCount, forKey: .currentUseCount)
        try container.encodeIfPresent(url, forKey: .url)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension InvitationLinkDto: Identifiable {}
