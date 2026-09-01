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

/** The request parameters for checking the document service location. */
public struct CheckDocServiceUrlRequestDto: Sendable, Codable, Hashable {

    /** The ONLYOFFICE Docs URL address. */
    public var docServiceUrl: String?
    /** The ONLYOFFICE Docs URL address in the local private network. */
    public var docServiceUrlInternal: String?
    /** The ONLYOFFICE Docs URL address. */
    public var docServiceUrlPortal: String?
    /** The signature secret of the ONLYOFFICE Docs. */
    public var docServiceSignatureSecret: String?
    /** The signature header of the ONLYOFFICE Docs. */
    public var docServiceSignatureHeader: String?
    /** Specifies if the SSL verification of the ONLYOFFICE Docs is enabled or not. */
    public var docServiceSslVerification: Bool?

    public init(docServiceUrl: String?, docServiceUrlInternal: String? = nil, docServiceUrlPortal: String? = nil, docServiceSignatureSecret: String? = nil, docServiceSignatureHeader: String? = nil, docServiceSslVerification: Bool? = nil) {
        self.docServiceUrl = docServiceUrl
        self.docServiceUrlInternal = docServiceUrlInternal
        self.docServiceUrlPortal = docServiceUrlPortal
        self.docServiceSignatureSecret = docServiceSignatureSecret
        self.docServiceSignatureHeader = docServiceSignatureHeader
        self.docServiceSslVerification = docServiceSslVerification
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case docServiceUrl
        case docServiceUrlInternal
        case docServiceUrlPortal
        case docServiceSignatureSecret
        case docServiceSignatureHeader
        case docServiceSslVerification
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(docServiceUrl, forKey: .docServiceUrl)
        try container.encodeIfPresent(docServiceUrlInternal, forKey: .docServiceUrlInternal)
        try container.encodeIfPresent(docServiceUrlPortal, forKey: .docServiceUrlPortal)
        try container.encodeIfPresent(docServiceSignatureSecret, forKey: .docServiceSignatureSecret)
        try container.encodeIfPresent(docServiceSignatureHeader, forKey: .docServiceSignatureHeader)
        try container.encodeIfPresent(docServiceSslVerification, forKey: .docServiceSslVerification)
    }
}

