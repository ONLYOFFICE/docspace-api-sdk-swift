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

/** Represents the usage statistics of a DocsCloud tenant for the current period. */
public struct DocsCloudStats: Sendable, Codable, Hashable {

    /** The length of the statistics period in days. */
    public var periodDay: Int?
    /** The statistics for editor users. */
    public var editor: DocsCloudUserStats?
    /** The statistics for viewer users. */
    public var viewer: DocsCloudUserStats?

    public init(periodDay: Int? = nil, editor: DocsCloudUserStats? = nil, viewer: DocsCloudUserStats? = nil) {
        self.periodDay = periodDay
        self.editor = editor
        self.viewer = viewer
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case periodDay
        case editor
        case viewer
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(periodDay, forKey: .periodDay)
        try container.encodeIfPresent(editor, forKey: .editor)
        try container.encodeIfPresent(viewer, forKey: .viewer)
    }
}

