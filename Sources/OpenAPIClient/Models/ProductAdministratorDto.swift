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

/** The product administrator parameters. */
public struct ProductAdministratorDto: Sendable, Codable, Hashable {

    /** The product ID. */
    public var productId: UUID
    /** The user unique identifier. */
    public var userId: UUID
    /** Indicates whether the user has administrator privileges for the product. */
    public var administrator: Bool

    public init(productId: UUID, userId: UUID, administrator: Bool) {
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
        try container.encode(administrator, forKey: .administrator)
    }
}

