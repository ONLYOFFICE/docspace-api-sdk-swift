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

/** The parameters for changing version history. */
public struct ChangeHistory: Sendable, Codable, Hashable {

    /** The file version of the change history. */
    public var version: Int
    /** Specifies whether to start a new version or continue revision of the change history. */
    public var continueVersion: Bool?

    public init(version: Int, continueVersion: Bool? = nil) {
        self.version = version
        self.continueVersion = continueVersion
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case version
        case continueVersion
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(version, forKey: .version)
        try container.encodeIfPresent(continueVersion, forKey: .continueVersion)
    }
}

