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

public struct MultiSizeLogoCover: Sendable, Codable, Hashable {

    /** The logo cover ID. */
    public var id: String?
    /** The logo cover data. */
    public var data: [String: String]?

    public init(id: String?, data: [String: String]?) {
        self.id = id
        self.data = data
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case data
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(data, forKey: .data)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension MultiSizeLogoCover: Identifiable {}
