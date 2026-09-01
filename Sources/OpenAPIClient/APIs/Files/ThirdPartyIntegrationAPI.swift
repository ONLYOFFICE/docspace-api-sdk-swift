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
     - parameter providerId: (path) The provider ID. 
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
     - Removes the third-party storage service account with the ID specified in the request.
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
     - parameter providerId: (path) The provider ID. 
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
     Get all providers
     
     See also:
     REST API Reference for getAllProviders Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-all-providers/
     - parameter excludewebdav: (query) Specifies whether WebDAV resources should be excluded from the result.. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ProviderArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getAllProviders(excludewebdav: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ProviderArrayWrapper {
        return try await getAllProvidersWithRequestBuilder(excludewebdav: excludewebdav, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get all providers
     
     See also:
     REST API Reference for getAllProviders Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-all-providers/
     
     - GET /api/2.0/files/thirdparty/providers
     - Returns a list of all providers.
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
     - parameter excludewebdav: (query) Specifies whether WebDAV resources should be excluded from the result.. (optional)
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
     Get a third-party account backup
     
     See also:
     REST API Reference for getBackupThirdPartyAccount Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-backup-third-party-account/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: FolderStringWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getBackupThirdPartyAccount(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FolderStringWrapper {
        return try await getBackupThirdPartyAccountWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get a third-party account backup
     
     See also:
     REST API Reference for getBackupThirdPartyAccount Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-backup-third-party-account/
     
     - GET /api/2.0/files/thirdparty/backup
     - Returns a backup of the connected third-party account.
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
     - returns: RequestBuilder<FolderStringWrapper> 
     */
    open class func getBackupThirdPartyAccountWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FolderStringWrapper> {
        let localVariablePath = "/api/2.0/files/thirdparty/backup"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FolderStringWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get providers
     
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
     Get providers
     
     See also:
     REST API Reference for getCapabilities Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-capabilities/
     
     - GET /api/2.0/files/thirdparty/capabilities
     - Returns the list of the available providers.
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
     Get the common third-party services
     
     See also:
     REST API Reference for getCommonThirdPartyFolders Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-common-third-party-folders/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: FolderStringArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getCommonThirdPartyFolders(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FolderStringArrayWrapper {
        return try await getCommonThirdPartyFoldersWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the common third-party services
     
     See also:
     REST API Reference for getCommonThirdPartyFolders Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-common-third-party-folders/
     
     - GET /api/2.0/files/thirdparty/common
     - Returns a list of the third-party services connected to the Common section.
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
     - returns: RequestBuilder<FolderStringArrayWrapper> 
     */
    open class func getCommonThirdPartyFoldersWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FolderStringArrayWrapper> {
        let localVariablePath = "/api/2.0/files/thirdparty/common"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FolderStringArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

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
     - Returns a list of all the connected third-party accounts.
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
     Save a third-party account
     
     See also:
     REST API Reference for saveThirdParty Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/save-third-party/
     - parameter thirdPartyRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FolderStringWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func saveThirdParty(thirdPartyRequestDto: ThirdPartyRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FolderStringWrapper {
        return try await saveThirdPartyWithRequestBuilder(thirdPartyRequestDto: thirdPartyRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Save a third-party account
     
     See also:
     REST API Reference for saveThirdParty Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/save-third-party/
     
     - POST /api/2.0/files/thirdparty
     - Saves the third-party storage service account. For WebDav, Yandex, kDrive and SharePoint, the login and password are used for authentication. For other providers, the authentication is performed using a token received via OAuth 2.0.
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
     - returns: RequestBuilder<FolderStringWrapper> 
     */
    open class func saveThirdPartyWithRequestBuilder(thirdPartyRequestDto: ThirdPartyRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FolderStringWrapper> {
        let localVariablePath = "/api/2.0/files/thirdparty"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: thirdPartyRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FolderStringWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Save a third-party account backup
     
     See also:
     REST API Reference for saveThirdPartyBackup Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/save-third-party-backup/
     - parameter thirdPartyBackupRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FolderStringWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func saveThirdPartyBackup(thirdPartyBackupRequestDto: ThirdPartyBackupRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FolderStringWrapper {
        return try await saveThirdPartyBackupWithRequestBuilder(thirdPartyBackupRequestDto: thirdPartyBackupRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Save a third-party account backup
     
     See also:
     REST API Reference for saveThirdPartyBackup Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/save-third-party-backup/
     
     - POST /api/2.0/files/thirdparty/backup
     - Saves a backup of the connected third-party account.
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
     - returns: RequestBuilder<FolderStringWrapper> 
     */
    open class func saveThirdPartyBackupWithRequestBuilder(thirdPartyBackupRequestDto: ThirdPartyBackupRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FolderStringWrapper> {
        let localVariablePath = "/api/2.0/files/thirdparty/backup"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: thirdPartyBackupRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FolderStringWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
