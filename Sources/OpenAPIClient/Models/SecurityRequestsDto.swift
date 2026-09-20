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

/** Which member is granted or denied the administrator role of which portal module. */
public struct SecurityRequestsDto: Sendable, Codable, Hashable {

    /** The module the role applies to, given by its GUID. The all-zero GUID stands for the portal itself and grants  or revokes the DocSpace administrator role, which covers every module at once; a GUID that names no module  group is stored without effect rather than refused. */
    public var productId: UUID
    /** The portal member the role is given to or taken from, by user ID. The member has to exist already - nobody is  created here - and promoting a guest or a plain member turns them into a paid one. */
    public var userId: UUID
    /** Which way the role goes: `true` adds the member to the module administrator group, `false` removes them from  it. Taking away the portal-wide role also drops the member from every product group. */
    public var administrator: Bool?

    public init(productId: UUID, userId: UUID, administrator: Bool? = nil) {
        self.productId = productId
        self.userId = userId
        self.administrator = administrator
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case productId
        case userId
        case administrator
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(productId, forKey: .productId)
        try container.encode(userId, forKey: .userId)
        try container.encodeIfPresent(administrator, forKey: .administrator)
    }
}

