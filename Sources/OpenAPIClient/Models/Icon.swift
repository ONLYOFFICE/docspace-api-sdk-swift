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

public struct Icon: Sendable, Codable, Hashable {

    public var icon48: String?
    public var icon32: String?
    public var icon24: String?
    public var icon16: String?

    public init(icon48: String?, icon32: String?, icon24: String?, icon16: String?) {
        self.icon48 = icon48
        self.icon32 = icon32
        self.icon24 = icon24
        self.icon16 = icon16
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case icon48
        case icon32
        case icon24
        case icon16
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(icon48, forKey: .icon48)
        try container.encode(icon32, forKey: .icon32)
        try container.encode(icon24, forKey: .icon24)
        try container.encode(icon16, forKey: .icon16)
    }
}

