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

/** The access rule stored for one portal module: whether it may be opened, and by whom. */
public struct WebItemSecurityRequestsDto: Sendable, Codable, Hashable {

    /** The module the rule applies to, given as a GUID. A value that is not a GUID fails the request as invalid. */
    public var id: String?
    /** Whether the module may be opened. It decides the outcome only while `subjects` names somebody: an empty  `subjects` array is stored as access for everyone whatever this flag says. */
    public var enabled: Bool?
    /** The users and groups the rule is stored for, given by their IDs. This is the whole allow-list that is to hold  afterwards and not a list of additions - what was stored before is dropped. Leaving it out applies `enabled`  to everyone and skips the audit trail entry, while sending it empty stores access for everyone. */
    public var subjects: [UUID]?

    public init(id: String?, enabled: Bool? = nil, subjects: [UUID]? = nil) {
        self.id = id
        self.enabled = enabled
        self.subjects = subjects
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case enabled
        case subjects
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encodeIfPresent(enabled, forKey: .enabled)
        try container.encodeIfPresent(subjects, forKey: .subjects)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension WebItemSecurityRequestsDto: Identifiable {}
