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

/** The invitation link being changed, with the deadline and use limit it is to have afterwards. */
public struct InvitationLinkUpdateRequestDto: Sendable, Codable, Hashable {

    public static let maxUseCountRule = NumericRule<Int>(minimum: 1, exclusiveMinimum: false, maximum: 1000, exclusiveMaximum: false, multipleOf: nil)
    /** The link to change, by the `id` that creating or reading it returned. The role behind that id cannot be  changed here. */
    public var id: UUID
    /** The new deadline, read in the portal time zone. The body is applied as a whole, so leaving it out clears the  deadline rather than keeping the current one; a moment in the past is refused. */
    public var expiration: Date?
    /** The new total number of accounts that may join through the link. It may not be lower than the uses already  spent, which the link reports as `currentUseCount`, and leaving it out removes the limit rather than keeping  the current one. */
    public var maxUseCount: Int?

    public init(id: UUID, expiration: Date? = nil, maxUseCount: Int? = nil) {
        self.id = id
        self.expiration = expiration
        self.maxUseCount = maxUseCount
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case expiration
        case maxUseCount
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encodeIfPresent(expiration, forKey: .expiration)
        try container.encodeIfPresent(maxUseCount, forKey: .maxUseCount)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension InvitationLinkUpdateRequestDto: Identifiable {}
