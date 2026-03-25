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

/** Represents the response returned from a chunked upload session. */
public struct ChunkedUploadSessionResponseInteger: Sendable, Codable, Hashable {

    /** The unique identifier for the entity. */
    public var id: String?
    /** Represents the hierarchical path of folders associated with a chunked upload session. */
    public var path: [Int]?
    /** The timestamp indicating when the chunked upload session was created. */
    public var created: Date?
    /** The date and time when the chunked upload session is set to expire. */
    public var expired: Date?
    /** Represents the URI or path of the chunked upload session's current location. */
    public var location: String?
    /** The total size, in bytes, of the file being uploaded in the chunked upload session. */
    public var bytesTotal: Int64?

    public init(id: String? = nil, path: [Int]? = nil, created: Date? = nil, expired: Date? = nil, location: String? = nil, bytesTotal: Int64? = nil) {
        self.id = id
        self.path = path
        self.created = created
        self.expired = expired
        self.location = location
        self.bytesTotal = bytesTotal
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case path
        case created
        case expired
        case location
        case bytesTotal = "bytes_total"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(path, forKey: .path)
        try container.encodeIfPresent(created, forKey: .created)
        try container.encodeIfPresent(expired, forKey: .expired)
        try container.encodeIfPresent(location, forKey: .location)
        try container.encodeIfPresent(bytesTotal, forKey: .bytesTotal)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension ChunkedUploadSessionResponseInteger: Identifiable {}
