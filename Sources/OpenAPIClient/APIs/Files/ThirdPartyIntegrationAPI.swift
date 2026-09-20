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

open class {{{{x-classname}}}} {

    /**
     Remove a third-party account
     
     See also:
     REST API Reference for deleteThirdParty Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-third-party/
     - parameter providerId: (path) The ID of the connected third-party storage account, as `providerId` of `GET api/2.0/files/thirdparty`. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: StringWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func deleteThirdParty(providerId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> StringWrapper {
        return try await deleteThirdPartyWithRequestBuilder(providerId: providerId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Remove a third-party account
     
     See also:
     REST API Reference for deleteThirdParty Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-third-party/
     
     - DELETE /api/2.0/files/thirdparty/{providerId}
     - Disconnects a third-party storage account from the portal and returns the ID of the folder that stood for it,  in the `provider-accountId` form the Files operations use for third-party entries. Take `providerId` from  `GET api/2.0/files/thirdparty`: it is the numeric account ID, not that composed folder ID. The member who  connected the account can remove it; another member's request is refused unless they hold delete rights on the  folder it stands for. Nothing is deleted at the storage service: the files stay with the provider, and what  goes away is the portal's link to them together with the stored credentials, the sharing records and the tags  kept for its entries. A room that was created on this account stops being available. When the account being  removed is the one connected for backups by `POST api/2.0/files/thirdparty/backup`, its backup schedule is  deleted as well. The removal cannot be repeated: once the account is gone the same ID is refused rather than  confirmed, so treat the first successful answer as the record of it.
     - BASIC:
       - type: http
       - name: Basic
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - API Key:
       - type: apiKey ApiKeyBearer (HEADER)
       - name: ApiKeyBearer
     - API Key:
       - type: apiKey asc_auth_key 
       - name: asc_auth_key
     - Bearer Token:
       - type: http
       - name: Bearer
     - :
       - type: openIdConnect
       - name: OpenId
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter providerId: (path) The ID of the connected third-party storage account, as `providerId` of `GET api/2.0/files/thirdparty`. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<StringWrapper> 
     */
    open class func deleteThirdPartyWithRequestBuilder(providerId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<StringWrapper> {
        var localVariablePath = "/api/2.0/files/thirdparty/{providerId}"
        let providerIdPreEscape = "\(APIHelper.mapValueToPathItem(providerId))"
        let providerIdPostEscape = providerIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{providerId}", with: providerIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<StringWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get all third-party providers
     
     See also:
     REST API Reference for getAllProviders Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-all-providers/
     - parameter excludewebdav: (query) Set to true to leave out the whole WebDAV family, the kDrive and Yandex presets included, and keep only the  services that authenticate through OAuth 2.0; false lists all of them. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ProviderArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getAllProviders(excludewebdav: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ProviderArrayWrapper {
        return try await getAllProvidersWithRequestBuilder(excludewebdav: excludewebdav, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get all third-party providers
     
     See also:
     REST API Reference for getAllProviders Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-all-providers/
     
     - GET /api/2.0/files/thirdparty/providers
     - Lists the third-party storage services this portal can connect, with everything a connection form needs: the  display name, the key to send as `providerKey`, whether the service authenticates through OAuth 2.0, the OAuth  client ID and redirect URL where it does, and whether the caller has to supply the server address. Several  WebDAV presets share the key `WebDav` and are told apart by their names, so keep the name the caller chose  next to the key when building the request. Pass `excludewebdav=true` to drop the whole WebDAV family,  including the kDrive and Yandex presets, and keep only the OAuth services. The call is read-only. An empty  array is a normal answer: it is what a guest gets, and what everyone gets while the portal-wide third-party  switch is off (`PUT api/2.0/files/thirdparty`). The `connected` flag of an element says the service is  available on this portal, not that an account of it exists - the caller's own accounts are listed by  `GET api/2.0/files/thirdparty`.
     - BASIC:
       - type: http
       - name: Basic
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - API Key:
       - type: apiKey ApiKeyBearer (HEADER)
       - name: ApiKeyBearer
     - API Key:
       - type: apiKey asc_auth_key 
       - name: asc_auth_key
     - Bearer Token:
       - type: http
       - name: Bearer
     - :
       - type: openIdConnect
       - name: OpenId
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter excludewebdav: (query) Set to true to leave out the whole WebDAV family, the kDrive and Yandex presets included, and keep only the  services that authenticate through OAuth 2.0; false lists all of them. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ProviderArrayWrapper> 
     */
    open class func getAllProvidersWithRequestBuilder(excludewebdav: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ProviderArrayWrapper> {
        let localVariablePath = "/api/2.0/files/thirdparty/providers"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "excludewebdav": (wrappedValue: excludewebdav?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ProviderArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get the third-party backup folder
     
     See also:
     REST API Reference for getBackupThirdPartyAccount Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-backup-third-party-account/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: ThirdPartyFolderWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getBackupThirdPartyAccount(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ThirdPartyFolderWrapper {
        return try await getBackupThirdPartyAccountWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the third-party backup folder
     
     See also:
     REST API Reference for getBackupThirdPartyAccount Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-backup-third-party-account/
     
     - GET /api/2.0/files/thirdparty/backup
     - Returns the folder of the third-party storage account the portal keeps for backups, so a caller can check  where scheduled and manual backups are written. There is at most one such account per portal, connected by an  administrator through `POST api/2.0/files/thirdparty/backup`, and it is deliberately kept out of the personal  list of `GET api/2.0/files/thirdparty`. Any authenticated member may ask, and the call is read-only. The body  is `null`, with a successful status, in two situations the answer does not distinguish: no backup account has  been connected, and the caller has no read access to the folder of the one that is. When a folder does come  back, its `id` is the string ID of a third-party folder and can be used with the folder operations that accept  one, and its `title` is the title the account was saved under. Connecting a different account through the  backup operation replaces this one rather than adding a second, and  `DELETE api/2.0/files/thirdparty/{providerId}` removes it.
     - BASIC:
       - type: http
       - name: Basic
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - API Key:
       - type: apiKey ApiKeyBearer (HEADER)
       - name: ApiKeyBearer
     - API Key:
       - type: apiKey asc_auth_key 
       - name: asc_auth_key
     - Bearer Token:
       - type: http
       - name: Bearer
     - :
       - type: openIdConnect
       - name: OpenId
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ThirdPartyFolderWrapper> 
     */
    open class func getBackupThirdPartyAccountWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ThirdPartyFolderWrapper> {
        let localVariablePath = "/api/2.0/files/thirdparty/backup"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ThirdPartyFolderWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get third-party provider capabilities
     
     See also:
     REST API Reference for getCapabilities Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-capabilities/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: ArrayArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getCapabilities(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ArrayArrayWrapper {
        return try await getCapabilitiesWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get third-party provider capabilities
     
     See also:
     REST API Reference for getCapabilities Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-capabilities/
     
     - GET /api/2.0/files/thirdparty/capabilities
     - Lists the third-party storage services this portal is able to connect, in the compact form a connection dialog  needs. Every element is itself an array whose first item is the provider key accepted as `providerKey` by  `POST api/2.0/files/thirdparty`. For the services that authenticate through OAuth 2.0 (`Box`, `DropboxV2`,  `GoogleDrive`, `OneDrive`) the second and third items are the OAuth client ID and the redirect URL this portal  is registered with, so the caller can build the consent screen URL itself; the services that authenticate by  login and password (`SharePoint`, `WebDav`, `kDrive`, `Yandex`) contribute a single-item array. Only the  services enabled in the portal configuration are listed, and an OAuth service whose application is not  configured is left out. The call is read-only. An empty array is a normal answer rather than a failure: it is  what a guest gets, and what everyone gets while the portal-wide third-party switch is off  (`PUT api/2.0/files/thirdparty`). For display names, the WebDAV presets and the flags a connection form needs,  use `GET api/2.0/files/thirdparty/providers` instead.
     - BASIC:
       - type: http
       - name: Basic
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - API Key:
       - type: apiKey ApiKeyBearer (HEADER)
       - name: ApiKeyBearer
     - API Key:
       - type: apiKey asc_auth_key 
       - name: asc_auth_key
     - Bearer Token:
       - type: http
       - name: Bearer
     - :
       - type: openIdConnect
       - name: OpenId
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ArrayArrayWrapper> 
     */
    open class func getCapabilitiesWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ArrayArrayWrapper> {
        let localVariablePath = "/api/2.0/files/thirdparty/capabilities"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ArrayArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get common third-party folders
     
     See also:
     REST API Reference for getCommonThirdPartyFolders Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-common-third-party-folders/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: ThirdPartyFolderArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getCommonThirdPartyFolders(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ThirdPartyFolderArrayWrapper {
        return try await getCommonThirdPartyFoldersWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get common third-party folders
     
     See also:
     REST API Reference for getCommonThirdPartyFolders Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-common-third-party-folders/
     
     - GET /api/2.0/files/thirdparty/common
     - Lists the third-party storage accounts attached to the legacy Common section, as folder entries that can be  browsed with the usual folder operations. Each entry stands for a whole connected account: its title is the  account title, and `providerId` and `providerKey` identify the account behind it. Only accounts whose owner  the caller may read are included, so the answer differs from one member to another. The call is read-only and  returns a plain array with no paging. An empty array is the expected answer in most portals and does not mean  an error: accounts connected by `POST api/2.0/files/thirdparty` are attached to the Rooms section, not to  Common, so only accounts inherited from an older portal appear here. The list is also empty while the  portal-wide third-party switch is off (`PUT api/2.0/files/thirdparty`) and when no storage service is  configured. For the accounts the caller owns, regardless of where they are attached, use  `GET api/2.0/files/thirdparty`.
     - BASIC:
       - type: http
       - name: Basic
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - API Key:
       - type: apiKey ApiKeyBearer (HEADER)
       - name: ApiKeyBearer
     - API Key:
       - type: apiKey asc_auth_key 
       - name: asc_auth_key
     - Bearer Token:
       - type: http
       - name: Bearer
     - :
       - type: openIdConnect
       - name: OpenId
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ThirdPartyFolderArrayWrapper> 
     */
    open class func getCommonThirdPartyFoldersWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ThirdPartyFolderArrayWrapper> {
        let localVariablePath = "/api/2.0/files/thirdparty/common"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ThirdPartyFolderArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get the third-party accounts
     
     See also:
     REST API Reference for getThirdPartyAccounts Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-third-party-accounts/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: ThirdPartyParamsArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getThirdPartyAccounts(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ThirdPartyParamsArrayWrapper {
        return try await getThirdPartyAccountsWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the third-party accounts
     
     See also:
     REST API Reference for getThirdPartyAccounts Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-third-party-accounts/
     
     - GET /api/2.0/files/thirdparty
     - Lists the third-party storage accounts the caller has connected, one element per account, with the title it  was saved under, the storage service behind it and the portal section it is attached to. Accounts connected by  other members are not included, and neither is the portal backup account of  `GET api/2.0/files/thirdparty/backup`, even for an administrator. The `providerId` of an element is the value  to send to `DELETE api/2.0/files/thirdparty/{providerId}` and, as `providerId` in  `POST api/2.0/files/thirdparty`, the way to re-authenticate that same account instead of connecting a new one.  Credentials are never disclosed: `auth_data` comes back empty for every element. An element with  `roomsStorage` set is available as storage for a room, while `corporate` marks an account inherited from the  legacy Common section. The call is read-only, returns a plain array with no paging and no contractual  ordering, and answers with an empty array when the caller has connected nothing. To browse the content of an  account, take the folder ID from the answer of the operation that connected it or from  `GET api/2.0/files/@root`.
     - BASIC:
       - type: http
       - name: Basic
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - API Key:
       - type: apiKey ApiKeyBearer (HEADER)
       - name: ApiKeyBearer
     - API Key:
       - type: apiKey asc_auth_key 
       - name: asc_auth_key
     - Bearer Token:
       - type: http
       - name: Bearer
     - :
       - type: openIdConnect
       - name: OpenId
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ThirdPartyParamsArrayWrapper> 
     */
    open class func getThirdPartyAccountsWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ThirdPartyParamsArrayWrapper> {
        let localVariablePath = "/api/2.0/files/thirdparty"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ThirdPartyParamsArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Connect a third-party account
     
     See also:
     REST API Reference for saveThirdParty Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/save-third-party/
     - parameter thirdPartyRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ThirdPartyFolderWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func saveThirdParty(thirdPartyRequestDto: ThirdPartyRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ThirdPartyFolderWrapper {
        return try await saveThirdPartyWithRequestBuilder(thirdPartyRequestDto: thirdPartyRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Connect a third-party account
     
     See also:
     REST API Reference for saveThirdParty Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/save-third-party/
     
     - POST /api/2.0/files/thirdparty
     - Connects an account at a third-party storage service to the portal, or re-authenticates one that is already  connected, and returns the folder that now stands for its root. Send `providerId` to update an existing  account and omit it to connect a new one; the accepted `providerKey` values come from  `GET api/2.0/files/thirdparty/providers`. The credentials to send depend on the service: the OAuth services  take `token`, which is the authorization code from their consent screen and not an access token, while the  WebDAV family and SharePoint take `login` with `password`, plus `url` where the server address is not fixed.  Credentials are verified against the service before anything is stored, so a wrong password is refused and  nothing is saved. The caller needs the rights to create rooms, and the portal-wide third-party switch has to  be on, otherwise the call is refused. A new account is attached to the Rooms section and becomes available as  room storage for `POST api/2.0/files/rooms/thirdparty/{id}`. Connecting twice with the same title creates two  separate accounts.
     - BASIC:
       - type: http
       - name: Basic
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - API Key:
       - type: apiKey ApiKeyBearer (HEADER)
       - name: ApiKeyBearer
     - API Key:
       - type: apiKey asc_auth_key 
       - name: asc_auth_key
     - Bearer Token:
       - type: http
       - name: Bearer
     - :
       - type: openIdConnect
       - name: OpenId
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter thirdPartyRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ThirdPartyFolderWrapper> 
     */
    open class func saveThirdPartyWithRequestBuilder(thirdPartyRequestDto: ThirdPartyRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ThirdPartyFolderWrapper> {
        let localVariablePath = "/api/2.0/files/thirdparty"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: thirdPartyRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ThirdPartyFolderWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Connect the third-party backup storage
     
     See also:
     REST API Reference for saveThirdPartyBackup Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/save-third-party-backup/
     - parameter thirdPartyBackupRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ThirdPartyFolderWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func saveThirdPartyBackup(thirdPartyBackupRequestDto: ThirdPartyBackupRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ThirdPartyFolderWrapper {
        return try await saveThirdPartyBackupWithRequestBuilder(thirdPartyBackupRequestDto: thirdPartyBackupRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Connect the third-party backup storage
     
     See also:
     REST API Reference for saveThirdPartyBackup Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/save-third-party-backup/
     
     - POST /api/2.0/files/thirdparty/backup
     - Connects the third-party storage account the portal writes its backups to, and returns the folder that stands  for its root. Only a portal administrator may call it, and the portal-wide third-party switch has to be on;  other callers are refused. The account is portal-wide and single: a second call does not add another one but  re-authenticates and retitles the existing one, which makes the operation safe to repeat with the same body.  The credentials follow the same rules as in `POST api/2.0/files/thirdparty` - an authorization code in `token`  for the OAuth services, `login` with `password` and, where the server address is not fixed, `url` for the  WebDAV family and SharePoint - and are verified against the service before anything is stored, so a wrong  password leaves the previous account untouched. The account is deliberately absent from  `GET api/2.0/files/thirdparty`; read it back with `GET api/2.0/files/thirdparty/backup` and remove it with  `DELETE api/2.0/files/thirdparty/{providerId}`.
     - BASIC:
       - type: http
       - name: Basic
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - API Key:
       - type: apiKey ApiKeyBearer (HEADER)
       - name: ApiKeyBearer
     - API Key:
       - type: apiKey asc_auth_key 
       - name: asc_auth_key
     - Bearer Token:
       - type: http
       - name: Bearer
     - :
       - type: openIdConnect
       - name: OpenId
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter thirdPartyBackupRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ThirdPartyFolderWrapper> 
     */
    open class func saveThirdPartyBackupWithRequestBuilder(thirdPartyBackupRequestDto: ThirdPartyBackupRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ThirdPartyFolderWrapper> {
        let localVariablePath = "/api/2.0/files/thirdparty/backup"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: thirdPartyBackupRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ThirdPartyFolderWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
