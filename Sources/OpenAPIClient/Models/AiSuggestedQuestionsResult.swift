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

/** The starter questions of an attached form, and whether they are ready. */
public struct AiSuggestedQuestionsResult: Sendable, Codable, Hashable {

    public enum Status: String, Sendable, Codable, CaseIterable {
        case ready = "ready"
        case pending = "pending"
        case unavailable = "unavailable"
    }
    /** `ready` - the questions are there; `pending` - they are being generated and arrive over the socket, ask again later; `unavailable` - the attachment is not a form that can have any. */
    public var status: Status
    /** The questions; empty unless `status` is `ready`. */
    public var questions: [AiSuggestedQuestion]

    public init(status: Status, questions: [AiSuggestedQuestion]) {
        self.status = status
        self.questions = questions
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case status
        case questions
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(status, forKey: .status)
        try container.encode(questions, forKey: .questions)
    }
}

