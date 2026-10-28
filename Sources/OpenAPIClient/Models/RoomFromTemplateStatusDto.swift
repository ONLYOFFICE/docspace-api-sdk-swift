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

/** The progress of the job that creates a room out of a room template. */
public struct RoomFromTemplateStatusDto: Sendable, Codable, Hashable {

    /** The room the job is creating. It is meaningful once the room exists, which is guaranteed only after  `isCompleted` turns true and `error` stays empty; until then it carries no usable id. */
    public var roomId: Int
    /** How far the job has got. The value climbs while the contents of the template are being copied into the new  room and reaches its maximum at the very end. */
    public var progress: Double
    /** Why the job stopped. It is empty while the job runs and after a successful one, and a filled value means that  no room was created, so the request has to be repeated rather than waited out. */
    public var error: String?
    /** Whether the job has ended. It is set both after a successful creation and after a failure, so it is the flag  to poll for, while `error` is what separates the two outcomes. */
    public var isCompleted: Bool

    public init(roomId: Int, progress: Double, error: String?, isCompleted: Bool) {
        self.roomId = roomId
        self.progress = progress
        self.error = error
        self.isCompleted = isCompleted
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case roomId
        case progress
        case error
        case isCompleted
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(roomId, forKey: .roomId)
        try container.encode(progress, forKey: .progress)
        try container.encode(error, forKey: .error)
        try container.encode(isCompleted, forKey: .isCompleted)
    }
}

