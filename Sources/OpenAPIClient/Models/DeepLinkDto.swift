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

/** The deep link parameters. */
public struct DeepLinkDto: Sendable, Codable, Hashable {

    /** The Android package name. */
    public var androidPackageName: String?
    /** The deep link URL. */
    public var url: String?
    /** The deep link IOS package ID. */
    public var iosPackageId: String?

    public init(androidPackageName: String?, url: String?, iosPackageId: String?) {
        self.androidPackageName = androidPackageName
        self.url = url
        self.iosPackageId = iosPackageId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case androidPackageName
        case url
        case iosPackageId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(androidPackageName, forKey: .androidPackageName)
        try container.encode(url, forKey: .url)
        try container.encode(iosPackageId, forKey: .iosPackageId)
    }
}

