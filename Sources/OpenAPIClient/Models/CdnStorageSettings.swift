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

public struct CdnStorageSettings: Sendable, Codable, Hashable {

    public var module: String?
    public var props: [String: String]?
    public var lastModified: Date?

    public init(module: String? = nil, props: [String: String]? = nil, lastModified: Date? = nil) {
        self.module = module
        self.props = props
        self.lastModified = lastModified
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case module
        case props
        case lastModified
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(module, forKey: .module)
        try container.encodeIfPresent(props, forKey: .props)
        try container.encodeIfPresent(lastModified, forKey: .lastModified)
    }
}

