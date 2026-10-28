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

/** What happened to one original form while the room was being exported to the external database. */
public struct ExternalDbSyncFormResultDto: Sendable, Codable, Hashable {

    /** The file of the original form whose collected data was exported. It is the form itself, not one of the filled  copies, so the same id can be read with the file operations of the portal. */
    public var id: Int?
    /** The name of that form file at the moment of the export. It is empty when the form file no longer exists, which  is also the case in which the export of that entry fails. */
    public var title: String?
    /** Whether the data of this form reached the external database. One rejected form does not stop the others, so a  finished job can hold both successful and failed entries. */
    public var success: Bool?
    /** Why this form was not exported. It is empty for a successful entry, and for a failed one it carries either the  message of the underlying failure or the generic export error of the portal. */
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
