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

/** The request parameters for linking accounts. */
public struct LinkAccountRequestDto: Sendable, Codable, Hashable {

    /** The profile a completed provider authorization produced, in the serialized form the login flow hands back.  Pass that value unchanged; it carries the provider, the third-party account ID and the authorization result,  and a hand-written object is not accepted. */
    public var serializedProfile: String?

    public init(serializedProfile: String? = nil) {
        self.serializedProfile = serializedProfile
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case serializedProfile
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(serializedProfile, forKey: .serializedProfile)
    }
}

