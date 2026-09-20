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

/** The reserved chunked upload: where the parts are sent, how much was declared and when the reservation lapses. No  content of the file is described here. */
public struct ThirdPartyChunkedUploadSessionResponse: Sendable, Codable, Hashable {

    /** The identifier of the reserved upload, repeated in the path of every call that follows it - the chunk uploads,  the finalize and the abort. It is thirty-two hexadecimal characters without separators, and it is the only  thing the server checks, so anyone holding it can write into this upload. */
    public var id: String?
    /** The chain of folders leading to the destination, outermost first and the destination itself last, with folders  the caller cannot read left out. An answer that reports a stored part carries the destination folder alone  instead of the whole chain. */
    public var path: [String]?
    /** The moment the upload was reserved, in UTC. */
    public var created: Date?
    /** The moment the reservation lapses and the parts buffered for it are dropped, in UTC. It is a gap rather than a  deadline for the whole transfer: every accepted part pushes it twelve hours past that part, so only a long  silence loses the upload. */
    public var expired: Date?
    /** The absolute address of the separate chunk handler that also accepts the parts of this upload, kept for  clients written against it. A caller working through this API does not need it and sends the parts to the  session operations instead. */
    public var location: String?
    /** The size in bytes that was declared when the upload was reserved, echoed back. It is what the arriving parts  are counted against to decide the file is complete, not the amount received so far. */
    public var bytesTotal: Int64?

    public init(id: String? = nil, path: [String]? = nil, created: Date? = nil, expired: Date? = nil, location: String? = nil, bytesTotal: Int64? = nil) {
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
extension ThirdPartyChunkedUploadSessionResponse: Identifiable {}
