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

public struct AiProjectModelProfile: Sendable, Codable, Hashable {

    /** The profile id. */
    public var id: String
    /** The profile name; empty when the profile is gone. */
    public var name: String
    /** The provider type of the profile; `null` when the profile is gone. */
    public var provider: String?
    /** `false` when the profile is gone or cannot chat: the project's rounds are refused. */
    public var available: Bool

    public init(id: String, name: String, provider: String?, available: Bool) {
        self.id = id
        self.name = name
        self.provider = provider
        self.available = available
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case provider
        case available
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(name, forKey: .name)
        try container.encode(provider, forKey: .provider)
        try container.encode(available, forKey: .available)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension AiProjectModelProfile: Identifiable {}
