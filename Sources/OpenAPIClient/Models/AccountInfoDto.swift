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

/** The account information parameters. */
public struct AccountInfoDto: Sendable, Codable, Hashable {

    /** The account provider. */
    public var provider: String?
    /** The account URL. */
    public var url: String?
    /** Specifies if an account is linked with other profiles or not. */
    public var linked: Bool

    public init(provider: String?, url: String?, linked: Bool) {
        self.provider = provider
        self.url = url
        self.linked = linked
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case provider
        case url
        case linked
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(provider, forKey: .provider)
        try container.encode(url, forKey: .url)
        try container.encode(linked, forKey: .linked)
    }
}

