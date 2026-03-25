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

/** The form gallery parameters. */
public struct FormGalleryDto: Sendable, Codable, Hashable {

    /** The form gallery path. */
    public var path: String?
    /** The form gallery domain. */
    public var domain: String?
    /** The form gallery extension. */
    public var ext: String?
    /** The form gallery upload path. */
    public var uploadPath: String?
    /** The form gallery upload domain. */
    public var uploadDomain: String?
    /** The form gallery upload extension. */
    public var uploadExt: String?
    /** The form gallery upload dashboard. */
    public var uploadDashboard: String?

    public init(path: String?, domain: String?, ext: String?, uploadPath: String?, uploadDomain: String?, uploadExt: String?, uploadDashboard: String?) {
        self.path = path
        self.domain = domain
        self.ext = ext
        self.uploadPath = uploadPath
        self.uploadDomain = uploadDomain
        self.uploadExt = uploadExt
        self.uploadDashboard = uploadDashboard
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case path
        case domain
        case ext
        case uploadPath
        case uploadDomain
        case uploadExt
        case uploadDashboard
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(path, forKey: .path)
        try container.encode(domain, forKey: .domain)
        try container.encode(ext, forKey: .ext)
        try container.encode(uploadPath, forKey: .uploadPath)
        try container.encode(uploadDomain, forKey: .uploadDomain)
        try container.encode(uploadExt, forKey: .uploadExt)
        try container.encode(uploadDashboard, forKey: .uploadDashboard)
    }
}

