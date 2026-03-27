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

/** The quota parameters.  <example>  {    id: 1,    quantity: 50,    wallet: false,    dueDate: 2026-03-31T00:00:00Z,    nextQuantity: 100,    state: Active  }  </example> */
public struct Quota: Sendable, Codable, Hashable {

    /** The quota ID. */
    public var id: Int?
    /** The quota quantity. */
    public var quantity: Int?
    /** The quota applies to the wallet or not */
    public var wallet: Bool?
    /** The quota due date. */
    public var dueDate: Date?
    /** The quota next quantity. */
    public var nextQuantity: Int?
    public var state: QuotaState?

    public init(id: Int? = nil, quantity: Int? = nil, wallet: Bool? = nil, dueDate: Date? = nil, nextQuantity: Int? = nil, state: QuotaState? = nil) {
        self.id = id
        self.quantity = quantity
        self.wallet = wallet
        self.dueDate = dueDate
        self.nextQuantity = nextQuantity
        self.state = state
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case quantity
        case wallet
        case dueDate
        case nextQuantity
        case state
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(quantity, forKey: .quantity)
        try container.encodeIfPresent(wallet, forKey: .wallet)
        try container.encodeIfPresent(dueDate, forKey: .dueDate)
        try container.encodeIfPresent(nextQuantity, forKey: .nextQuantity)
        try container.encodeIfPresent(state, forKey: .state)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension Quota: Identifiable {}
