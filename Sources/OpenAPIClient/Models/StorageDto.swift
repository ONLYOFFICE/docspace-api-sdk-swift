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

/** The storage information. */
public struct StorageDto: Sendable, Codable, Hashable {

    /** The storage ID. */
    public var id: String?
    /** The storage title. */
    public var title: String?
    /** The list of storage authentication keys. */
    public var properties: [AuthKey]?
    /** Specifies if this is the current portal storage or not. */
    public var current: Bool
    /** Specifies if this storage can be set or not. */
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
