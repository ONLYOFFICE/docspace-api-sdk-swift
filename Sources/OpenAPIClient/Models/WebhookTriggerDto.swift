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

/** The webhook trigger with its availability for the current user. */
public struct WebhookTriggerDto: Sendable, Codable, Hashable {

    /** The trigger name. */
    public var name: String?
    /** The trigger bit value. */
    public var id: Int64?
    /** Specifies whether this trigger is available for the current user's role. */
    public var available: Bool?

    public init(name: String? = nil, id: Int64? = nil, available: Bool? = nil) {
        self.name = name
        self.id = id
        self.available = available
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case id
        case available
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(available, forKey: .available)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension WebhookTriggerDto: Identifiable {}
