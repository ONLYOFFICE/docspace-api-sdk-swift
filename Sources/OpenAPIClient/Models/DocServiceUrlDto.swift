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

/** The document service location as this portal has it configured, together with the editor entry points a client  needs in order to open a document. */
public struct DocServiceUrlDto: Sendable, Codable, Hashable {

    /** The editor version the running Document Server reported. It is filled in only when the version was asked for,  and comes back empty otherwise. When the Document Server does not answer, a fallback version is reported  rather than an error, so a value here is no proof that the server is reachable. */
    public var version: String?
    /** The absolute URL of the editor api script that a client has to load before it can open a document. It is  derived from the public Document Server address unless the deployment overrides it separately. */
    public var docServiceUrlApi: String?
    /** The public Document Server address a browser loads the editor from. Empty means no document server is  configured for this portal, and documents cannot be opened for editing or viewing. */
    public var docServiceUrl: String?
    /** The absolute URL of a page a client may load in advance to warm the editor scripts up. Loading it is optional  and changes nothing on the portal. */
    public var docServicePreloadUrl: String?
    /** The address the portal uses for its own server-to-server calls to the Document Server. When no private-network  address is configured, it repeats the public one. */
    public var docServiceUrlInternal: String?
    /** The address the Document Server is told to call this portal back on. Empty means nothing overrides it and the  portal's own resolved address is used. */
    public var docServicePortalUrl: String?
    /** The name of the HTTP header that carries the signature on requests between the portal and the Document Server.  The secret itself is not part of the answer, so this only tells a client whether request signing is set up and  under which header. */
    public var docServiceSignatureHeader: String?
    /** Whether the portal validates the TLS certificate of the Document Server. False means any certificate is  accepted, which is expected only in a test deployment. */
    public var docServiceSslVerification: Bool
    /** Whether every one of these settings is still the one the deployment ships with. False means at least one of  the addresses, the signature settings or SSL verification has been overridden for this portal. */
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

