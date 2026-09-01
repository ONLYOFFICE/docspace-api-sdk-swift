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

/** The result of an external DB synchronization for a single form. */
public struct ExternalDbSyncFormResultDto: Sendable, Codable, Hashable {

    /** The form file ID. */
    public var id: Int?
    /** The form file title. */
    public var title: String?
    /** Specifies whether the synchronization succeeded for this form. */
    public var success: Bool?
    /** The error message if the synchronization failed for this form. */
    public var error: String?

    public init(id: Int? = nil, title: String? = nil, success: Bool? = nil, error: String? = nil) {
        self.id = id
        self.title = title
        self.success = success
        self.error = error
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case title
        case success
        case error
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(title, forKey: .title)
        try container.encodeIfPresent(success, forKey: .success)
        try container.encodeIfPresent(error, forKey: .error)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension ExternalDbSyncFormResultDto: Identifiable {}
