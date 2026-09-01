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

/** Resolved thread state returned by `ThreadsEngine.openOrCreate`. */
public struct AiOpenOrCreateResult: Sendable, Codable, Hashable {

    /** The thread that was opened, or the one just created. */
    public var threadId: String
    /** Empty string for existing threads — the engine doesn't re-fetch. */
    public var title: String
    /** The messages already in the thread - empty for a thread that was just created. */
    public var priorMessages: [AiThreadMessageLike]

    public init(threadId: String, title: String, priorMessages: [AiThreadMessageLike]) {
        self.threadId = threadId
        self.title = title
        self.priorMessages = priorMessages
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case threadId
        case title
        case priorMessages
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(threadId, forKey: .threadId)
        try container.encode(title, forKey: .title)
        try container.encode(priorMessages, forKey: .priorMessages)
    }
}

