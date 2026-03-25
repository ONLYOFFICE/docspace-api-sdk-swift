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

/** The Firebase parameters. */
public struct FirebaseDto: Sendable, Codable, Hashable {

    /** The Firebase API key. */
    public var apiKey: String?
    /** The Firebase authentication domain. */
    public var authDomain: String?
    /** The Firebase project ID. */
    public var projectId: String?
    /** The Firebase storage bucket. */
    public var storageBucket: String?
    /** The Firebase messaging sender ID. */
    public var messagingSenderId: String?
    /** The Firebase application ID. */
    public var appId: String?
    /** The Firebase measurement ID. */
    public var measurementId: String?
    /** The Firebase database URL. */
    public var databaseURL: String?

    public init(apiKey: String?, authDomain: String?, projectId: String?, storageBucket: String?, messagingSenderId: String?, appId: String?, measurementId: String?, databaseURL: String?) {
        self.apiKey = apiKey
        self.authDomain = authDomain
        self.projectId = projectId
        self.storageBucket = storageBucket
        self.messagingSenderId = messagingSenderId
        self.appId = appId
        self.measurementId = measurementId
        self.databaseURL = databaseURL
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case apiKey
        case authDomain
        case projectId
        case storageBucket
        case messagingSenderId
        case appId
        case measurementId
        case databaseURL
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(apiKey, forKey: .apiKey)
        try container.encode(authDomain, forKey: .authDomain)
        try container.encode(projectId, forKey: .projectId)
        try container.encode(storageBucket, forKey: .storageBucket)
        try container.encode(messagingSenderId, forKey: .messagingSenderId)
        try container.encode(appId, forKey: .appId)
        try container.encode(measurementId, forKey: .measurementId)
        try container.encode(databaseURL, forKey: .databaseURL)
    }
}

