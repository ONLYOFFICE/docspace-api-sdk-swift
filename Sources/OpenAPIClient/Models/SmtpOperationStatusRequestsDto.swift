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

/** The request parameters for tracking SMTP (Simple Mail Transfer Protocol) operation status. */
public struct SmtpOperationStatusRequestsDto: Sendable, Codable, Hashable {

    /** Specifies whether the SMTP operation has finished processing. */
    public var completed: Bool?
    /** The unique identifier for tracking the SMTP operation. */
    public var id: String?
    /** The error message if the SMTP operation encountered issues. */
    public var error: String?
    /** The current state of the SMTP operation. */
    public var status: String?
    /** The progress indicator showing completion percentage of the operation. */
    public var percents: Int?

    public init(completed: Bool? = nil, id: String? = nil, error: String? = nil, status: String? = nil, percents: Int? = nil) {
        self.completed = completed
        self.id = id
        self.error = error
        self.status = status
        self.percents = percents
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case completed
        case id
        case error
        case status
        case percents
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(completed, forKey: .completed)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(error, forKey: .error)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(percents, forKey: .percents)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension SmtpOperationStatusRequestsDto: Identifiable {}
