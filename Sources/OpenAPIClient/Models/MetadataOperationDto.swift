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

/** The cascade metadata assignment operation status. */
public struct MetadataOperationDto: Sendable, Codable, Hashable {

    /** The operation ID. */
    public var id: String?
    /** The operation progress percentage. */
    public var progress: Double?
    /** Specifies if the operation is completed. */
    public var isCompleted: Bool?
    /** The operation error message. */
    public var error: String?
    /** The IDs of the metadata templates the operation propagates to the subtree. Empty when there is no operation to  report, so the answer describes nothing in progress. */
    public var templateIds: [Int]?

    public init(id: String? = nil, progress: Double? = nil, isCompleted: Bool? = nil, error: String? = nil, templateIds: [Int]? = nil) {
        self.id = id
        self.progress = progress
        self.isCompleted = isCompleted
        self.error = error
        self.templateIds = templateIds
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case progress
        case isCompleted
        case error
        case templateIds
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(progress, forKey: .progress)
        try container.encodeIfPresent(isCompleted, forKey: .isCompleted)
        try container.encodeIfPresent(error, forKey: .error)
        try container.encodeIfPresent(templateIds, forKey: .templateIds)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension MetadataOperationDto: Identifiable {}
