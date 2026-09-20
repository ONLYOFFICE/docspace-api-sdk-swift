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

/** The person a saved revision of a file, or one single change in it, is attributed to. */
public struct EditHistoryAuthor: Sendable, Codable, Hashable {

    /** The account the revision or the change is attributed to, as the editing service stored it. It is normally the  identifier of a portal account; the empty identifier stands for a change nobody could be named for. */
    public var id: String?
    /** The display name of that account as the portal spells it now, which need not be the name that was stored with  the revision. An account that cannot be resolved - one removed from the portal, or a change made through an  anonymous link - is reported as a guest. */
    public var name: String?

    public init(id: String?, name: String? = nil) {
        self.id = id
        self.name = name
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encodeIfPresent(name, forKey: .name)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension EditHistoryAuthor: Identifiable {}
