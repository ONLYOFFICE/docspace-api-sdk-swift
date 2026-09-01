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

/** The room template status. */
public struct RoomTemplateStatusDto: Sendable, Codable, Hashable {

    /** The room template ID. */
    public var templateId: Int
    /** The progress of the room template creation process. */
    public var progress: Double
    /** The error message that is sent when the room template is not created successfully. */
    public var error: String?
    /** Specifies whether the process of creating the room template is completed. */
    public var isCompleted: Bool

    public init(templateId: Int, progress: Double, error: String? = nil, isCompleted: Bool) {
        self.templateId = templateId
        self.progress = progress
        self.error = error
        self.isCompleted = isCompleted
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case templateId
        case progress
        case error
        case isCompleted
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(templateId, forKey: .templateId)
        try container.encode(progress, forKey: .progress)
        try container.encodeIfPresent(error, forKey: .error)
        try container.encode(isCompleted, forKey: .isCompleted)
    }
}

