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

/** Optional entity hint (lib 0.5.64): only `entityId` is read; the pair is re-resolved server-side before reaching the provider as metadata. */
public struct AiThreadsOpenOrCreateRequestEntityMeta: Sendable, Codable, Hashable {

    public var entityId: String?
    public var entityTitle: String?

    public init(entityId: String? = nil, entityTitle: String? = nil) {
        self.entityId = entityId
        self.entityTitle = entityTitle
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case entityId
        case entityTitle
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(entityId, forKey: .entityId)
        try container.encodeIfPresent(entityTitle, forKey: .entityTitle)
    }
}

