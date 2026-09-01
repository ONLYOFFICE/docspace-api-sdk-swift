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

/** Outcome of `AssignmentsEngine.bulkAssign`. Either every entry persisted, or no entries persisted and a per-key error report. The engine validates first and writes second so a single bad entry never leaves the assignment table in a half-written state. */
public struct AiBulkAssignmentResult: Sendable, Codable, Hashable {

    /** True when every entry was persisted. */
    public var success: Bool
    /** What was rejected, per action. Present on failure - and then no entry was persisted. */
    public var errors: [AiBulkAssignmentResultErrorsInner]?

    public init(success: Bool, errors: [AiBulkAssignmentResultErrorsInner]? = nil) {
        self.success = success
        self.errors = errors
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case success
        case errors
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(success, forKey: .success)
        try container.encodeIfPresent(errors, forKey: .errors)
    }
}

