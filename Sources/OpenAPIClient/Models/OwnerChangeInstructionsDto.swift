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

/** The owner change instructions parameters. */
public struct OwnerChangeInstructionsDto: Sendable, Codable, Hashable {

    /** The owner change instructions status. */
    public var status: Int?
    /** The owner change instructions message. */
    public var message: String?

    public init(status: Int? = nil, message: String? = nil) {
        self.status = status
        self.message = message
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case status
        case message
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(message, forKey: .message)
    }
}

