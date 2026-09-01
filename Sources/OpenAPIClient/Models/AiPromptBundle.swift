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

/** Versioned, self-contained bundle of every saved prompt and folder. Stable wire format — `version` lets the import path migrate older shapes if the schema ever changes. */
public struct AiPromptBundle: Sendable, Codable, Hashable {

    public enum Version: Double, Sendable, Codable, ParameterConvertible, CaseIterable {
        case _1 = 1
    }
    /** The bundle format version, so an import can migrate an older export. */
    public var version: Version
    /** Every exported prompt folder. */
    public var folders: [AiPromptFolder]
    /** Every exported prompt. */
    public var prompts: [AiPrompt]

    public init(version: Version, folders: [AiPromptFolder], prompts: [AiPrompt]) {
        self.version = version
        self.folders = folders
        self.prompts = prompts
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case version
        case folders
        case prompts
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(version, forKey: .version)
        try container.encode(folders, forKey: .folders)
        try container.encode(prompts, forKey: .prompts)
    }
}

