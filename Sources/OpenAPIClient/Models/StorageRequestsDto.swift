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

/** The request parameters for configuring the storage module settings. */
public struct StorageRequestsDto: Sendable, Codable, Hashable {

    /** The name for the storage module to be configured. */
    public var module: String?
    /** The list of configuration key-value pairs for the storage module. */
    public var props: [ItemKeyValuePairStringString]?

    public init(module: String?, props: [ItemKeyValuePairStringString]? = nil) {
        self.module = module
        self.props = props
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case module
        case props
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(module, forKey: .module)
        try container.encodeIfPresent(props, forKey: .props)
    }
}

