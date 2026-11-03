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

/** An `audio` part's sound. */
public struct AiThreadMessageLikeContentAnyOfInnerAudio: Sendable, Codable, Hashable {

    public enum Format: String, Sendable, Codable, CaseIterable {
        case mp3 = "mp3"
        case wav = "wav"
    }
    /** The audio data, base64. */
    public var data: String
    /** Audio format: `mp3` or `wav`. */
    public var format: Format

    public init(data: String, format: Format) {
        self.data = data
        self.format = format
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case data
        case format
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(data, forKey: .data)
        try container.encode(format, forKey: .format)
    }
}

