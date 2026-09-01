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

/** The parameters for requesting the webhook delivery retries. */
public struct WebhookRetryRequestsDto: Sendable, Codable, Hashable {

    /** The list of webhook delivery IDs to retry. */
    public var ids: [Int]?

    public init(ids: [Int]? = nil) {
        self.ids = ids
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case ids
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(ids, forKey: .ids)
    }
}

