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

/** Where the ready-made form templates are served from, for browsing them and for submitting new ones. */
public struct FormGalleryDto: Sendable, Codable, Hashable {

    /** The path under `domain` that the gallery's own listing API is reached at. It is joined to `domain` by the  client; the portal only relays the values from its configuration. */
    public var path: String?
    /** The address of the gallery service, which is a service of the vendor rather than part of the portal. Every  field of this object is empty on an installation that configures no gallery, and a client should then not  offer the gallery at all. */
    public var domain: String?
    /** The file extension to ask the gallery for, which decides which rendition of a template is downloaded when  several are published. */
    public var ext: String?
    /** The path used for submitting a form of one's own to the gallery, the counterpart of `path` for the upload  side. The four `upload` fields are empty when the installation allows browsing but not submitting. */
    public var uploadPath: String?
    /** The address the submission is sent to, which may differ from `domain`. */
    public var uploadDomain: String?
    /** The file extension a submitted form has to carry. */
    public var uploadExt: String?
    /** The page a person is sent to in order to follow up on a submission, joined to `uploadDomain` the same way  as `uploadPath`. */
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

