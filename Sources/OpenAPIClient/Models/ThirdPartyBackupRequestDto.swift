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

/** The credentials and the title of the third-party storage account the portal writes its backups to. */
public struct ThirdPartyBackupRequestDto: Sendable, Codable, Hashable {

    /** The address of the storage server to connect to. It is needed by the WebDAV presets whose server is not known  in advance (`WebDav`, `Nextcloud`, `ownCloud`), where it points at the WebDAV endpoint of that server, and by  `SharePoint`; the presets with a fixed address and the OAuth services ignore it. */
    public var url: String?
    /** The account name at the storage service, used by the services that authenticate by login and password. A login  sent without a password is rejected as an invalid request. */
    public var login: String?
    /** The password, or the application password, for `login` at the storage service. Either this or `token` has to  be sent, and the credentials are verified against the service before the account is saved. */
    public var password: String?
    /** The OAuth 2.0 authorization code from the consent screen of `Box`, `DropboxV2`, `GoogleDrive` or `OneDrive` -  not an access token: the portal exchanges the code for its own token and keeps that. The client ID and  redirect URL the consent screen URL is built from come from `GET api/2.0/files/thirdparty/capabilities`. */
    public var token: String?
    /** The name the backup account is shown under in the portal. Characters that a folder title cannot hold are  replaced and the value is truncated; on the first connection a title that comes out of that empty is refused. */
    public var customerTitle: String?
    /** The storage service to connect, as the `key` of `GET api/2.0/files/thirdparty/providers`; the value is matched  case-insensitively. `Nextcloud` and `ownCloud` are presets over WebDAV and are stored and reported back as  `WebDav`. */
    public var providerKey: String?

    public init(url: String? = nil, login: String? = nil, password: String? = nil, token: String? = nil, customerTitle: String? = nil, providerKey: String? = nil) {
        self.url = url
        self.login = login
        self.password = password
        self.token = token
        self.customerTitle = customerTitle
        self.providerKey = providerKey
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case url
        case login
        case password
        case token
        case customerTitle
        case providerKey
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(url, forKey: .url)
        try container.encodeIfPresent(login, forKey: .login)
        try container.encodeIfPresent(password, forKey: .password)
        try container.encodeIfPresent(token, forKey: .token)
        try container.encodeIfPresent(customerTitle, forKey: .customerTitle)
        try container.encodeIfPresent(providerKey, forKey: .providerKey)
    }
}

