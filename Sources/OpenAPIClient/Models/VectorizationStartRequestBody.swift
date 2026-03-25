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

/** Parameters for submitting files for vectorization. */
public struct VectorizationStartRequestBody: Sendable, Codable, Hashable {

    public static let filesRule = ArrayRule(minItems: nil, maxItems: nil, uniqueItems: true)
    /** The set of file identifiers to submit for vectorization. */
    public var files: Set<Int>?

    public init(files: Set<Int>?) {
        self.files = files
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case files
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(files, forKey: .files)
    }
}

