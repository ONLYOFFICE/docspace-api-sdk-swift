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

/** One third-party storage provider the portal data can be kept in, with the keys it expects. */
public struct StorageDto: Sendable, Codable, Hashable {

    /** The provider's key, which is what `PUT api/2.0/settings/storage` and its CDN and backup counterparts take  as the storage to switch to. The built-in local storage has no entry of its own: a listing in which  nothing is `current` means the data sits locally. */
    public var id: String?
    /** The provider name in the portal language, falling back to `id` when this build ships no wording for it. */
    public var title: String?
    /** The settings the provider expects, each with its key, its localised label and the value the server  currently holds. For the entry marked `current` the values come from the portal's saved storage settings  and for the others from the installation configuration, so a setting nobody has configured comes back with  an empty value rather than being left out. */
    public var properties: [AuthKey]?
    /** Whether the portal is using this provider right now. At most one entry of a listing has it set. */
    public var current: Bool
    /** Whether the provider's keys are already filled in on the server, so it could be switched to without  sending credentials. It says nothing about whether the credentials still work. */
    public var isSet: Bool

    public init(id: String?, title: String?, properties: [AuthKey]? = nil, current: Bool, isSet: Bool) {
        self.id = id
        self.title = title
        self.properties = properties
        self.current = current
        self.isSet = isSet
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case title
        case properties
        case current
        case isSet
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(title, forKey: .title)
        try container.encodeIfPresent(properties, forKey: .properties)
        try container.encode(current, forKey: .current)
        try container.encode(isSet, forKey: .isSet)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension StorageDto: Identifiable {}
