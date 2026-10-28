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

/** The vocabularies the audit and login-history filters accept, one array of names per dimension of an event. */
public struct AuditTrailTypesDto: Sendable, Codable, Hashable {

    /** Every action name the build can record, spelled as the `action` filter of  `GET api/2.0/security/audit/events/filter` and `GET api/2.0/security/audit/login/filter` expects it. It is  the whole vocabulary, not the actions this portal has recorded, and only a handful of the names are the  sign-in actions the login filter accepts. */
    public var actions: [String]?
    /** The kinds of change an action can stand for, spelled as the `actionType` filter of  `GET api/2.0/security/audit/events/filter` expects it. */
    public var actionTypes: [String]?
    /** The products an action can belong to, spelled as the `productType` filter of  `GET api/2.0/security/audit/mappers` expects it. The audit trail itself cannot be filtered by product. */
    public var productTypes: [String]?
    /** The locations inside those products, spelled as the `moduleType` filter of  `GET api/2.0/security/audit/events/filter` and `GET api/2.0/security/audit/mappers` expects it. */
    public var moduleTypes: [String]?
    /** The kinds of object an action can be applied to, spelled as the `entryType` filter of  `GET api/2.0/security/audit/events/filter` expects it. */
    public var entryTypes: [String]?

    public init(actions: [String]? = nil, actionTypes: [String]? = nil, productTypes: [String]? = nil, moduleTypes: [String]? = nil, entryTypes: [String]? = nil) {
        self.actions = actions
        self.actionTypes = actionTypes
        self.productTypes = productTypes
        self.moduleTypes = moduleTypes
        self.entryTypes = entryTypes
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case actions
        case actionTypes
        case productTypes
        case moduleTypes
        case entryTypes
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(actions, forKey: .actions)
        try container.encodeIfPresent(actionTypes, forKey: .actionTypes)
        try container.encodeIfPresent(productTypes, forKey: .productTypes)
        try container.encodeIfPresent(moduleTypes, forKey: .moduleTypes)
        try container.encodeIfPresent(entryTypes, forKey: .entryTypes)
    }
}

