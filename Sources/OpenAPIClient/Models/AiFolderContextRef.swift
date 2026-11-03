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

/** A folder connected as the round's context - any folder of the portal, not only a room - named by its account and ID. */
public struct AiFolderContextRef: Sendable, Codable, Hashable {

    /** The account the folder belongs to; `docspace` for a folder of this portal. */
    public var cloud: String
    /** The folder ID. */
    public var id: String

    public init(cloud: String, id: String) {
        self.cloud = cloud
        self.id = id
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case cloud
        case id
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(cloud, forKey: .cloud)
        try container.encode(id, forKey: .id)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension AiFolderContextRef: Identifiable {}
