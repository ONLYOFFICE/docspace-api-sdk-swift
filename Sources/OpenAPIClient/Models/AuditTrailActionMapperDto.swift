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

/** One audit trail action, with the kind of change it stands for and the kind of object it applies to. */
public struct AuditTrailActionMapperDto: Sendable, Codable, Hashable {

    /** The action name to send as the `action` filter of `GET api/2.0/security/audit/events/filter`, and the value  that comes back as `actionId` on an event. */
    public var messageAction: String?
    /** The kind of change the action makes, accepted by the `actionType` filter of the same operation. */
    public var actionType: String?
    /** The kind of object the action applies to, accepted by the `entryType` filter. It is `None` for an action  that targets no object, such as a settings change, and an action with a second object type reports only the  first one here. */
    public var entity: String?

    public init(messageAction: String? = nil, actionType: String? = nil, entity: String? = nil) {
        self.messageAction = messageAction
        self.actionType = actionType
        self.entity = entity
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case messageAction
        case actionType
        case entity
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(messageAction, forKey: .messageAction)
        try container.encodeIfPresent(actionType, forKey: .actionType)
        try container.encodeIfPresent(entity, forKey: .entity)
    }
}

