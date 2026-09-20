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

/** The entries whose sharing rights are being changed, and the rights to apply to them. */
public struct SecurityInfoRequestDto: Sendable, Codable, Hashable {

    public static let sharingMessageRule = StringRule(minLength: 0, maxLength: 255, pattern: nil)
    /** The folders and rooms whose rights are being changed, identified as a listing operation returns them - a  number on the portal, a string on a connected third-party account. */
    public var folderIds: [DuplicateRequestDtoAllOfFileIds]?
    /** The files whose rights are being changed, identified as a listing operation returns them - a number on the  portal, a string on a connected third-party account. */
    public var fileIds: [DuplicateRequestDtoAllOfFileIds]?
    /** One record per account or group whose rights are being set, each naming the subject and the level it gets on  all of the listed entries; a level of `None` takes the access away. An empty collection makes the call change  nothing. */
    public var share: [FileShareParams]?
    /** Set to true to have every account named in `share` emailed about the access it just received; false changes  the rights without telling anyone. */
    public var notify: Bool?
    /** The text put into that email, ignored while `notify` is false. Markup is stripped before sending, so only the  plain text of the value survives. */
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

