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

/** The document service URL parameters. */
public struct DocServiceUrlDto: Sendable, Codable, Hashable {

    /** The version of the document service. */
    public var version: String?
    /** The document service URL API. */
    public var docServiceUrlApi: String?
    /** The document service URL. */
    public var docServiceUrl: String?
    /** The URL used to preload the document service scripts. */
    public var docServicePreloadUrl: String?
    /** The internal document service URL. */
    public var docServiceUrlInternal: String?
    /** The document service portal URL. */
    public var docServicePortalUrl: String?
    /** The document service signature header. */
    public var docServiceSignatureHeader: String?
    /** Specifies if the document service SSL verification is enabled. */
    public var docServiceSslVerification: Bool
    /** Specifies if the document service is default. */
    public var isDefault: Bool

    public init(version: String?, docServiceUrlApi: String?, docServiceUrl: String?, docServicePreloadUrl: String?, docServiceUrlInternal: String?, docServicePortalUrl: String?, docServiceSignatureHeader: String?, docServiceSslVerification: Bool, isDefault: Bool) {
        self.version = version
        self.docServiceUrlApi = docServiceUrlApi
        self.docServiceUrl = docServiceUrl
        self.docServicePreloadUrl = docServicePreloadUrl
        self.docServiceUrlInternal = docServiceUrlInternal
        self.docServicePortalUrl = docServicePortalUrl
        self.docServiceSignatureHeader = docServiceSignatureHeader
        self.docServiceSslVerification = docServiceSslVerification
        self.isDefault = isDefault
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case version
        case docServiceUrlApi
        case docServiceUrl
        case docServicePreloadUrl
        case docServiceUrlInternal
        case docServicePortalUrl
        case docServiceSignatureHeader
        case docServiceSslVerification
        case isDefault
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(version, forKey: .version)
        try container.encode(docServiceUrlApi, forKey: .docServiceUrlApi)
        try container.encode(docServiceUrl, forKey: .docServiceUrl)
        try container.encode(docServicePreloadUrl, forKey: .docServicePreloadUrl)
        try container.encode(docServiceUrlInternal, forKey: .docServiceUrlInternal)
        try container.encode(docServicePortalUrl, forKey: .docServicePortalUrl)
        try container.encode(docServiceSignatureHeader, forKey: .docServiceSignatureHeader)
        try container.encode(docServiceSslVerification, forKey: .docServiceSslVerification)
        try container.encode(isDefault, forKey: .isDefault)
    }
}

