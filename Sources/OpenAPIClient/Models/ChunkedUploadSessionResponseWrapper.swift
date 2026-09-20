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

/** The reserved chunked upload wrapped in the envelope the two older session operations answer with. */
public struct ChunkedUploadSessionResponseWrapper: Sendable, Codable, Hashable {

    /** Always true in a body that reaches the caller, because a call that does not succeed answers with an error  status and no body at all. It cannot be used to tell a refusal from a success. */
    public var success: Bool?
    /** The reserved upload itself, in the same shape the newer session operations answer with directly. */
    public var data: ChunkedUploadSessionResponse?

    public init(success: Bool? = nil, data: ChunkedUploadSessionResponse? = nil) {
        self.success = success
        self.data = data
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case success
        case data
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(success, forKey: .success)
        try container.encodeIfPresent(data, forKey: .data)
    }
}

