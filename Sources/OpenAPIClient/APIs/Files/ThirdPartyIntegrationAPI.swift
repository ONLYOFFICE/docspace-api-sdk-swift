//
//  Copyright (c) Ascensio System SIA 2025
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
     
     See also:
     REST API Reference for deleteThirdParty Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-third-party/
     
     - DELETE /api/2.0/files/thirdparty/{providerId}
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

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     
     See also:
     REST API Reference for getAllProviders Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-all-providers/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: ProviderArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getAllProviders(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ProviderArrayWrapper {
        return try await getAllProvidersWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     
     See also:
     REST API Reference for getAllProviders Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-all-providers/
     
     - GET /api/2.0/files/thirdparty/providers
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ProviderArrayWrapper> 
     */
    open class func getAllProvidersWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ProviderArrayWrapper> {
        let localVariablePath = "/api/2.0/files/thirdparty/providers"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ProviderArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     
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
     
     See also:
     REST API Reference for getBackupThirdPartyAccount Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-backup-third-party-account/
     
     - GET /api/2.0/files/thirdparty/backup
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

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     
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
     
     See also:
     REST API Reference for getCapabilities Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-capabilities/
     
     - GET /api/2.0/files/thirdparty/capabilities
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

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     
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
     
     See also:
     REST API Reference for getCommonThirdPartyFolders Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-common-third-party-folders/
     
     - GET /api/2.0/files/thirdparty/common
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

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     
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
     
     See also:
     REST API Reference for getThirdPartyAccounts Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-third-party-accounts/
     
     - GET /api/2.0/files/thirdparty
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

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     
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
     
     See also:
     REST API Reference for saveThirdParty Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/save-third-party/
     
     - POST /api/2.0/files/thirdparty
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

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     
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
     
     See also:
     REST API Reference for saveThirdPartyBackup Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/save-third-party-backup/
     
     - POST /api/2.0/files/thirdparty/backup
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

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }
}
