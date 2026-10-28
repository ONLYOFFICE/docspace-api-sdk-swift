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

/** The Firebase project a client initialises its SDK with to receive push notifications from this portal. */
public struct FirebaseDto: Sendable, Codable, Hashable {

    /** The web API key of the project. Every field of this object is an empty string on an installation that  configures no Firebase project, and an empty `projectId` is the cheapest thing to test for before  initialising an SDK. None of these values is a secret - they are meant to be embedded in a client. */
    public var apiKey: String?
    /** The host the Firebase SDK performs its own authentication against. */
    public var authDomain: String?
    /** The identifier of the Firebase project itself, which ties all the other fields together. */
    public var projectId: String?
    /** The Cloud Storage bucket of the project. The portal does not store portal files there; it is part of the  SDK configuration. */
    public var storageBucket: String?
    /** The sender ID that push messages of this project arrive under, which a client checks an incoming message  against. */
    public var messagingSenderId: String?
    /** The identifier of the Firebase application registration this client is to use. */
    public var appId: String?
    /** The Google Analytics measurement ID of the project, empty when the project reports no analytics. */
    public var measurementId: String?
    /** The Realtime Database endpoint of the project, empty when the project has no such database. */
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

