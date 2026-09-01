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

/** The request parameters for updating an invitation link. */
public struct InvitationLinkUpdateRequestDto: Sendable, Codable, Hashable {

    public static let maxUseCountRule = NumericRule<Int>(minimum: 1, exclusiveMinimum: false, maximum: 1000, exclusiveMaximum: false, multipleOf: nil)
    /** The ID of the invitation link. */
    public var id: UUID
    /** The expiration date of the invitation link. */
    public var expiration: Date?
    /** The maximum number of times the invitation link can be used. */
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
