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

/** Represents the DocsCloud server information. */
public struct DocsCloudServerInfo: Sendable, Codable, Hashable {

    /** The server version. */
    public var version: String?
    /** The server package type (Open Source, Enterprise Edition or Developer Edition). */
    public var packageType: String?
    /** The server build date. */
    public var date: Date?

    public init(version: String? = nil, packageType: String? = nil, date: Date? = nil) {
        self.version = version
        self.packageType = packageType
        self.date = date
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case version
        case packageType
        case date
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(version, forKey: .version)
        try container.encodeIfPresent(packageType, forKey: .packageType)
        try container.encodeIfPresent(date, forKey: .date)
    }
}

