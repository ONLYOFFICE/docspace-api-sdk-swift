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

/** The plugins parameters. */
public struct PluginsDto: Sendable, Codable, Hashable {

    /** Specifies if the plugins are enabled or not. */
    public var enabled: Bool?
    /** Specifies if the plugins can be uploaded or not. */
    public var upload: Bool?
    /** Specifies if the plugins can be deleted or not. */
    public var delete: Bool?

    public init(enabled: Bool? = nil, upload: Bool? = nil, delete: Bool? = nil) {
        self.enabled = enabled
        self.upload = upload
        self.delete = delete
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case enabled
        case upload
        case delete
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(enabled, forKey: .enabled)
        try container.encodeIfPresent(upload, forKey: .upload)
        try container.encodeIfPresent(delete, forKey: .delete)
    }
}

