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

/** The outcome of asking for the portal-ownership transfer letter to be sent. */
public struct OwnerChangeInstructionsDto: Sendable, Codable, Hashable {

    /** Whether the letter was sent: `1` that it was, `0` that the request was turned down. A refusal comes back  with HTTP 200, so this field and not the status code is what says whether anything happened - the request  is turned down when the caller is not the portal owner and when the named member is unknown or inactive. */
    public var status: Int?
    /** The outcome spelled out in the portal language. On success it names the address the letter went to, and it  carries an HTML `mailto:` anchor rather than plain text, so it has to be rendered as markup or stripped;  on a refusal it is the localised reason. */
    public var message: String?

    public init(status: Int? = nil, message: String? = nil) {
        self.status = status
        self.message = message
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case status
        case message
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(message, forKey: .message)
    }
}

