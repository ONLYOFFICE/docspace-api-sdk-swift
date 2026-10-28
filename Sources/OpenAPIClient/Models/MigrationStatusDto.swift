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

/** How far the parse or the import queued for this portal has got, and what it produced once it stopped. */
public struct MigrationStatusDto: Sendable, Codable, Hashable {

    /** The share of the job that is done, from 0 to 100. It advances unevenly, since the stages differ in  length, so poll `isCompleted` rather than waiting for this to reach 100. */
    public var progress: Double?
    /** The message that ended the job, in the portal language. It stays empty while nothing has gone wrong, so  once `isCompleted` is `true` this field is what tells success from failure. */
    public var error: String?
    /** What the migrator has read so far. After a parse pass it holds the users, the groups and the archives it  could not read, which is the body to edit and post to `POST api/2.0/migration/migrate`; during an import it  also carries the accounts that were created and the ones that failed. Its own `operation` field, `parse`  or `migration`, is what tells the two stages apart. */
    public var parseResult: MigrationApiInfo?
    /** Whether the job has stopped, successfully or not. It is the field to poll on; the whole body comes back  empty instead when the portal has no job at all, which is not an error. */
    public var isCompleted: Bool?

    public init(progress: Double? = nil, error: String? = nil, parseResult: MigrationApiInfo? = nil, isCompleted: Bool? = nil) {
        self.progress = progress
        self.error = error
        self.parseResult = parseResult
        self.isCompleted = isCompleted
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case progress
        case error
        case parseResult
        case isCompleted
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(progress, forKey: .progress)
        try container.encodeIfPresent(error, forKey: .error)
        try container.encodeIfPresent(parseResult, forKey: .parseResult)
        try container.encodeIfPresent(isCompleted, forKey: .isCompleted)
    }
}

