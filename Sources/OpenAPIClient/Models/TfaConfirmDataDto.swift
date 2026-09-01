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

/** The TFA confirmation data. */
public struct TfaConfirmDataDto: Sendable, Codable, Hashable {

    /** The confirmation URL. */
    public var url: String?
    /** The confirmation cookie name. */
    public var cookieName: String?
    /** The confirmation cookie value. */
    public var cookieValue: String?

    public init(url: String? = nil, cookieName: String? = nil, cookieValue: String? = nil) {
        self.url = url
        self.cookieName = cookieName
        self.cookieValue = cookieValue
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case url
        case cookieName
        case cookieValue
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(url, forKey: .url)
        try container.encodeIfPresent(cookieName, forKey: .cookieName)
        try container.encodeIfPresent(cookieValue, forKey: .cookieValue)
    }
}

