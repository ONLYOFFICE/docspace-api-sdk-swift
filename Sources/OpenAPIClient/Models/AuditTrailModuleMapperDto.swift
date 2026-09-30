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

/** The audit trail actions of one module. */
public struct AuditTrailModuleMapperDto: Sendable, Codable, Hashable {

    /** The location inside the product, as the `moduleType` filter of `GET api/2.0/security/audit/events/filter`  spells it. */
    public var moduleType: String?
    /** Every action this module can record. Each action appears under exactly one module, so this tree is where a  caller learns which module a given action belongs to. */
    public var actions: [AuditTrailActionMapperDto]?

    public init(moduleType: String? = nil, actions: [AuditTrailActionMapperDto]? = nil) {
        self.moduleType = moduleType
        self.actions = actions
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case moduleType
        case actions
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(moduleType, forKey: .moduleType)
        try container.encodeIfPresent(actions, forKey: .actions)
    }
}

