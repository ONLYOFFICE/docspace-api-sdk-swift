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

/** The security information request parameters. */
public struct SecurityInfoRequestDto: Sendable, Codable, Hashable {

    public static let sharingMessageRule = StringRule(minLength: 0, maxLength: 255, pattern: nil)
    /** The list of the shared folder IDs. */
    public var folderIds: [DuplicateRequestDtoAllOfFileIds]?
    /** The list of the shared file IDs. */
    public var fileIds: [DuplicateRequestDtoAllOfFileIds]?
    /** The collection of sharing parameters. */
    public var share: [FileShareParams]?
    /** Specifies whether to notify users about the shared file or not. */
    public var notify: Bool?
    /** The message to send when notifying about the shared file. */
    public var sharingMessage: String?

    public init(folderIds: [DuplicateRequestDtoAllOfFileIds]? = nil, fileIds: [DuplicateRequestDtoAllOfFileIds]? = nil, share: [FileShareParams]? = nil, notify: Bool? = nil, sharingMessage: String? = nil) {
        self.folderIds = folderIds
        self.fileIds = fileIds
        self.share = share
        self.notify = notify
        self.sharingMessage = sharingMessage
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case folderIds
        case fileIds
        case share
        case notify
        case sharingMessage
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(folderIds, forKey: .folderIds)
        try container.encodeIfPresent(fileIds, forKey: .fileIds)
        try container.encodeIfPresent(share, forKey: .share)
        try container.encodeIfPresent(notify, forKey: .notify)
        try container.encodeIfPresent(sharingMessage, forKey: .sharingMessage)
    }
}

