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
var fields: String?

    /**
     Check file uploads
     
     See also:
     REST API Reference for checkUpload Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/check-upload/
     - parameter folderId: (path) The folder ID.      - parameter checkUploadRequest: (body) The request parameters for checking file uploads. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: STRINGArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func checkUpload(folderId: Int, checkUploadRequest: CheckUploadRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> STRINGArrayWrapper {
        return try await checkUploadWithRequestBuilder(folderId: folderId, checkUploadRequest: checkUploadRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Check file uploads
     
     See also:
     REST API Reference for checkUpload Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/check-upload/
     
     - POST /api/2.0/files/{folderId}/upload/check
     - Checks the file uploads to the folder with the ID specified in the request.
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
     - parameter folderId: (path) The folder ID. 
     - parameter checkUploadRequest: (body) The request parameters for checking file uploads. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<STRINGArrayWrapper> 
     */
    open class func checkUploadWithRequestBuilder(folderId: Int, checkUploadRequest: CheckUploadRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<STRINGArrayWrapper> {
        var localVariablePath = "/api/2.0/files/{folderId}/upload/check"
        let folderIdPreEscape = "\(APIHelper.mapValueToPathItem(folderId))"
        let folderIdPostEscape = folderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{folderId}", with: folderIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: checkUploadRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<STRINGArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Create a folder
     
     See also:
     REST API Reference for createFolder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-folder/
     - parameter folderId: (path) The folder ID for the folder creation.      - parameter createFolder: (body) The parameters for creating a folder. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FolderIntegerWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func createFolder(folderId: Int, createFolder: CreateFolder, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FolderIntegerWrapper {
        return try await createFolderWithRequestBuilder(folderId: folderId, createFolder: createFolder, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Create a folder
     
     See also:
     REST API Reference for createFolder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-folder/
     
     - POST /api/2.0/files/folder/{folderId}
     - Creates a new folder with the title specified in the request. The parent folder ID can be also specified.
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
     - parameter folderId: (path) The folder ID for the folder creation. 
     - parameter createFolder: (body) The parameters for creating a folder. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FolderIntegerWrapper> 
     */
    open class func createFolderWithRequestBuilder(folderId: Int, createFolder: CreateFolder, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FolderIntegerWrapper> {
        var localVariablePath = "/api/2.0/files/folder/{folderId}"
        let folderIdPreEscape = "\(APIHelper.mapValueToPathItem(folderId))"
        let folderIdPostEscape = folderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{folderId}", with: folderIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createFolder, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FolderIntegerWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Create primary external link
     
     See also:
     REST API Reference for createFolderPrimaryExternalLink Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-folder-primary-external-link/
     - parameter id: (path) The folder ID.      - parameter folderLinkRequest: (body) The folder link parameters. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileShareWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func createFolderPrimaryExternalLink(id: Int, folderLinkRequest: FolderLinkRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileShareWrapper {
        return try await createFolderPrimaryExternalLinkWithRequestBuilder(id: id, folderLinkRequest: folderLinkRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Create primary external link
     
     See also:
     REST API Reference for createFolderPrimaryExternalLink Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-folder-primary-external-link/
     
     - POST /api/2.0/files/folder/{id}/link
     - Creates a primary external link by the identifier specified in the request.
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
     - parameter id: (path) The folder ID. 
     - parameter folderLinkRequest: (body) The folder link parameters. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileShareWrapper> 
     */
    open class func createFolderPrimaryExternalLinkWithRequestBuilder(id: Int, folderLinkRequest: FolderLinkRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileShareWrapper> {
        var localVariablePath = "/api/2.0/files/folder/{id}/link"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: folderLinkRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileShareWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Generates folder history
     
     See also:
     REST API Reference for createReportFolderHistory Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-report-folder-history/
     - parameter folderId: (path)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: StringWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func createReportFolderHistory(folderId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> StringWrapper {
        return try await createReportFolderHistoryWithRequestBuilder(folderId: folderId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Generates folder history
     
     See also:
     REST API Reference for createReportFolderHistory Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-report-folder-history/
     
     - POST /api/2.0/files/folder/{folderId}/log/report
     - Generates the activity history of a folder.
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
     - parameter folderId: (path)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<StringWrapper> 
     */
    open class func createReportFolderHistoryWithRequestBuilder(folderId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<StringWrapper> {
        var localVariablePath = "/api/2.0/files/folder/{folderId}/log/report"
        let folderIdPreEscape = "\(APIHelper.mapValueToPathItem(folderId))"
        let folderIdPostEscape = folderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{folderId}", with: folderIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<StringWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Delete a folder
     
     See also:
     REST API Reference for deleteFolder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-folder/
     - parameter folderId: (path) The folder ID to delete.      - parameter deleteFolder: (body) The parameters for deleting a folder. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileOperationArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func deleteFolder(folderId: Int, deleteFolder: DeleteFolder, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileOperationArrayWrapper {
        return try await deleteFolderWithRequestBuilder(folderId: folderId, deleteFolder: deleteFolder, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Delete a folder
     
     See also:
     REST API Reference for deleteFolder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-folder/
     
     - DELETE /api/2.0/files/folder/{folderId}
     - Deletes a folder with the ID specified in the request.
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
     - parameter folderId: (path) The folder ID to delete. 
     - parameter deleteFolder: (body) The parameters for deleting a folder. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileOperationArrayWrapper> 
     */
    open class func deleteFolderWithRequestBuilder(folderId: Int, deleteFolder: DeleteFolder, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileOperationArrayWrapper> {
        var localVariablePath = "/api/2.0/files/folder/{folderId}"
        let folderIdPreEscape = "\(APIHelper.mapValueToPathItem(folderId))"
        let folderIdPostEscape = folderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{folderId}", with: folderIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: deleteFolder, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileOperationArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get the Favorites section
     
     See also:
     REST API Reference for getFavoritesFolder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-favorites-folder/
     - parameter userIdOrGroupId: (query) The user or group ID. (optional)     - parameter filterType: (query) The filter type. (optional)     - parameter count: (query) The maximum number of items to retrieve in the request. (optional)     - parameter startIndex: (query) The zero-based index of the first item to retrieve in a paginated list. (optional)     - parameter sortBy: (query) Specifies the field by which the folder content should be sorted. (optional)     - parameter sortOrder: (query) The order in which the results are sorted. (optional)     - parameter filterValue: (query) The text used as a filter or search criterion for folder content queries. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FolderContentIntegerWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getFavoritesFolder(userIdOrGroupId: UUID? = nil, filterType: FilterType? = nil, count: Int? = nil, startIndex: Int? = nil, sortBy: String? = nil, sortOrder: SortOrder? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FolderContentIntegerWrapper {
        return try await getFavoritesFolderWithRequestBuilder(userIdOrGroupId: userIdOrGroupId, filterType: filterType, count: count, startIndex: startIndex, sortBy: sortBy, sortOrder: sortOrder, filterValue: filterValue, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the Favorites section
     
     See also:
     REST API Reference for getFavoritesFolder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-favorites-folder/
     
     - GET /api/2.0/files/@favorites
     - Returns the detailed list of files and folders located in the Favorites section.
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
     - parameter userIdOrGroupId: (query) The user or group ID. (optional)
     - parameter filterType: (query) The filter type. (optional)
     - parameter count: (query) The maximum number of items to retrieve in the request. (optional)
     - parameter startIndex: (query) The zero-based index of the first item to retrieve in a paginated list. (optional)
     - parameter sortBy: (query) Specifies the field by which the folder content should be sorted. (optional)
     - parameter sortOrder: (query) The order in which the results are sorted. (optional)
     - parameter filterValue: (query) The text used as a filter or search criterion for folder content queries. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FolderContentIntegerWrapper> 
     */
    open class func getFavoritesFolderWithRequestBuilder(userIdOrGroupId: UUID? = nil, filterType: FilterType? = nil, count: Int? = nil, startIndex: Int? = nil, sortBy: String? = nil, sortOrder: SortOrder? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FolderContentIntegerWrapper> {
        let localVariablePath = "/api/2.0/files/@favorites"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "userIdOrGroupId": (wrappedValue: userIdOrGroupId?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "filterType": (wrappedValue: filterType?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "count": (wrappedValue: count?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "startIndex": (wrappedValue: startIndex?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "sortBy": (wrappedValue: sortBy?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "sortOrder": (wrappedValue: sortOrder?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "filterValue": (wrappedValue: filterValue?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]

        if let fields = self.fields {
            localVariableNillableHeaders["fields"] = fields
            self.fields = nil
        }

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FolderContentIntegerWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get used space of files
     
     See also:
     REST API Reference for getFilesUsedSpace Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-files-used-space/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: FilesStatisticsResultWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getFilesUsedSpace(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FilesStatisticsResultWrapper {
        return try await getFilesUsedSpaceWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get used space of files
     
     See also:
     REST API Reference for getFilesUsedSpace Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-files-used-space/
     
     - GET /api/2.0/files/filesusedspace
     - Returns the used space of files in the root folders.
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
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FilesStatisticsResultWrapper> 
     */
    open class func getFilesUsedSpaceWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FilesStatisticsResultWrapper> {
        let localVariablePath = "/api/2.0/files/filesusedspace"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FilesStatisticsResultWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get folder form filter
     
     See also:
     REST API Reference for getFolder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder/
     - parameter folderId: (path) The folder unique identifier. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FormsItemArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getFolder(folderId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FormsItemArrayWrapper {
        return try await getFolderWithRequestBuilder(folderId: folderId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get folder form filter
     
     See also:
     REST API Reference for getFolder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder/
     
     - GET /api/2.0/files/{folderId}/formfilter
     - Returns the form filter of a folder with the ID specified in the request.
     - parameter folderId: (path) The folder unique identifier. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FormsItemArrayWrapper> 
     */
    open class func getFolderWithRequestBuilder(folderId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FormsItemArrayWrapper> {
        var localVariablePath = "/api/2.0/files/{folderId}/formfilter"
        let folderIdPreEscape = "\(APIHelper.mapValueToPathItem(folderId))"
        let folderIdPostEscape = folderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{folderId}", with: folderIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FormsItemArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Get a folder by ID
     
     See also:
     REST API Reference for getFolderByFolderId Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-by-folder-id/
     - parameter folderId: (path) The folder ID.      - parameter userIdOrGroupId: (query) The user or group ID. (optional)     - parameter sharedBy: (query) The identifier of the user who shared the folder or file. (optional)     - parameter filterType: (query) The filter type. (optional)     - parameter roomId: (query) The room ID. (optional)     - parameter excludeSubject: (query) Specifies whether to exclude search by user or group ID. (optional)     - parameter applyFilterOption: (query) Specifies whether to return only files, only folders, or all elements from the specified folder. (optional)     - parameter _extension: (query) Specifies whether to search for the specific file extension. (optional)     - parameter searchArea: (query) The search area. (optional)     - parameter formsItemKey: (query) The forms item key. (optional)     - parameter formsItemType: (query) The forms item type. (optional)     - parameter count: (query) The maximum number of items to retrieve in the request. (optional)     - parameter startIndex: (query) The zero-based index of the first item to retrieve in a paginated request. (optional)     - parameter sortBy: (query) The property used for sorting the folder request results. (optional)     - parameter sortOrder: (query) The order in which the results are sorted. (optional)     - parameter filterValue: (query) The text value used as a filter parameter for folder content queries. (optional)     - parameter location: (query) The location context of the request, specifying the area  where the operation is performed, such as a room, documents, or a link. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FolderContentIntegerWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getFolderByFolderId(folderId: Int, userIdOrGroupId: UUID? = nil, sharedBy: UUID? = nil, filterType: FilterType? = nil, roomId: Int? = nil, excludeSubject: Bool? = nil, applyFilterOption: ApplyFilterOption? = nil, _extension: String? = nil, searchArea: SearchArea? = nil, formsItemKey: String? = nil, formsItemType: String? = nil, count: Int? = nil, startIndex: Int? = nil, sortBy: String? = nil, sortOrder: SortOrder? = nil, filterValue: String? = nil, location: Location? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FolderContentIntegerWrapper {
        return try await getFolderByFolderIdWithRequestBuilder(folderId: folderId, userIdOrGroupId: userIdOrGroupId, sharedBy: sharedBy, filterType: filterType, roomId: roomId, excludeSubject: excludeSubject, applyFilterOption: applyFilterOption, _extension: _extension, searchArea: searchArea, formsItemKey: formsItemKey, formsItemType: formsItemType, count: count, startIndex: startIndex, sortBy: sortBy, sortOrder: sortOrder, filterValue: filterValue, location: location, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get a folder by ID
     
     See also:
     REST API Reference for getFolderByFolderId Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-by-folder-id/
     
     - GET /api/2.0/files/{folderId}
     - Returns the detailed list of files and folders located in the folder with the ID specified in the request.
     - parameter folderId: (path) The folder ID. 
     - parameter userIdOrGroupId: (query) The user or group ID. (optional)
     - parameter sharedBy: (query) The identifier of the user who shared the folder or file. (optional)
     - parameter filterType: (query) The filter type. (optional)
     - parameter roomId: (query) The room ID. (optional)
     - parameter excludeSubject: (query) Specifies whether to exclude search by user or group ID. (optional)
     - parameter applyFilterOption: (query) Specifies whether to return only files, only folders, or all elements from the specified folder. (optional)
     - parameter _extension: (query) Specifies whether to search for the specific file extension. (optional)
     - parameter searchArea: (query) The search area. (optional)
     - parameter formsItemKey: (query) The forms item key. (optional)
     - parameter formsItemType: (query) The forms item type. (optional)
     - parameter count: (query) The maximum number of items to retrieve in the request. (optional)
     - parameter startIndex: (query) The zero-based index of the first item to retrieve in a paginated request. (optional)
     - parameter sortBy: (query) The property used for sorting the folder request results. (optional)
     - parameter sortOrder: (query) The order in which the results are sorted. (optional)
     - parameter filterValue: (query) The text value used as a filter parameter for folder content queries. (optional)
     - parameter location: (query) The location context of the request, specifying the area  where the operation is performed, such as a room, documents, or a link. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FolderContentIntegerWrapper> 
     */
    open class func getFolderByFolderIdWithRequestBuilder(folderId: Int, userIdOrGroupId: UUID? = nil, sharedBy: UUID? = nil, filterType: FilterType? = nil, roomId: Int? = nil, excludeSubject: Bool? = nil, applyFilterOption: ApplyFilterOption? = nil, _extension: String? = nil, searchArea: SearchArea? = nil, formsItemKey: String? = nil, formsItemType: String? = nil, count: Int? = nil, startIndex: Int? = nil, sortBy: String? = nil, sortOrder: SortOrder? = nil, filterValue: String? = nil, location: Location? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FolderContentIntegerWrapper> {
        var localVariablePath = "/api/2.0/files/{folderId}"
        let folderIdPreEscape = "\(APIHelper.mapValueToPathItem(folderId))"
        let folderIdPostEscape = folderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{folderId}", with: folderIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "userIdOrGroupId": (wrappedValue: userIdOrGroupId?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "sharedBy": (wrappedValue: sharedBy?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "filterType": (wrappedValue: filterType?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "roomId": (wrappedValue: roomId?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "excludeSubject": (wrappedValue: excludeSubject?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "applyFilterOption": (wrappedValue: applyFilterOption?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "extension": (wrappedValue: _extension?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "searchArea": (wrappedValue: searchArea?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "formsItemKey": (wrappedValue: formsItemKey?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "formsItemType": (wrappedValue: formsItemType?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "count": (wrappedValue: count?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "startIndex": (wrappedValue: startIndex?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "sortBy": (wrappedValue: sortBy?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "sortOrder": (wrappedValue: sortOrder?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "filterValue": (wrappedValue: filterValue?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "Location": (wrappedValue: location?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FolderContentIntegerWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Get folder history
     
     See also:
     REST API Reference for getFolderHistory Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-history/
     - parameter folderId: (path) The folder ID of the history request.      - parameter fromDate: (query) The start date of the history request. (optional)     - parameter toDate: (query) The end date of the history request. (optional)     - parameter count: (query) The number of records to retrieve for the folder history. (optional)     - parameter startIndex: (query) The starting index from which the history records are retrieved in the request. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: HistoryArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getFolderHistory(folderId: Int, fromDate: ApiDateTime? = nil, toDate: ApiDateTime? = nil, count: Int? = nil, startIndex: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> HistoryArrayWrapper {
        return try await getFolderHistoryWithRequestBuilder(folderId: folderId, fromDate: fromDate, toDate: toDate, count: count, startIndex: startIndex, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get folder history
     
     See also:
     REST API Reference for getFolderHistory Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-history/
     
     - GET /api/2.0/files/folder/{folderId}/log
     - Returns the activity history of a folder with a specified identifier.
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
     - parameter folderId: (path) The folder ID of the history request. 
     - parameter fromDate: (query) The start date of the history request. (optional)
     - parameter toDate: (query) The end date of the history request. (optional)
     - parameter count: (query) The number of records to retrieve for the folder history. (optional)
     - parameter startIndex: (query) The starting index from which the history records are retrieved in the request. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<HistoryArrayWrapper> 
     */
    open class func getFolderHistoryWithRequestBuilder(folderId: Int, fromDate: ApiDateTime? = nil, toDate: ApiDateTime? = nil, count: Int? = nil, startIndex: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<HistoryArrayWrapper> {
        var localVariablePath = "/api/2.0/files/folder/{folderId}/log"
        let folderIdPreEscape = "\(APIHelper.mapValueToPathItem(folderId))"
        let folderIdPostEscape = folderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{folderId}", with: folderIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fromDate": (wrappedValue: fromDate?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "toDate": (wrappedValue: toDate?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "count": (wrappedValue: count?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "startIndex": (wrappedValue: startIndex?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<HistoryArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get folder information
     
     See also:
     REST API Reference for getFolderInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-info/
     - parameter folderId: (path) The folder unique identifier. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FolderIntegerWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getFolderInfo(folderId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FolderIntegerWrapper {
        return try await getFolderInfoWithRequestBuilder(folderId: folderId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get folder information
     
     See also:
     REST API Reference for getFolderInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-info/
     
     - GET /api/2.0/files/folder/{folderId}
     - Returns the detailed information about a folder with the ID specified in the request.
     - parameter folderId: (path) The folder unique identifier. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FolderIntegerWrapper> 
     */
    open class func getFolderInfoWithRequestBuilder(folderId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FolderIntegerWrapper> {
        var localVariablePath = "/api/2.0/files/folder/{folderId}"
        let folderIdPreEscape = "\(APIHelper.mapValueToPathItem(folderId))"
        let folderIdPostEscape = folderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{folderId}", with: folderIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FolderIntegerWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Get the folder links
     
     See also:
     REST API Reference for getFolderLinks Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-links/
     - parameter id: (path) The folder ID. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileShareArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getFolderLinks(id: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileShareArrayWrapper {
        return try await getFolderLinksWithRequestBuilder(id: id, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the folder links
     
     See also:
     REST API Reference for getFolderLinks Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-links/
     
     - GET /api/2.0/files/folder/{id}/links
     - Returns the links of the folder with the ID specified in the request.
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
     - parameter id: (path) The folder ID. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileShareArrayWrapper> 
     */
    open class func getFolderLinksWithRequestBuilder(id: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileShareArrayWrapper> {
        var localVariablePath = "/api/2.0/files/folder/{id}/links"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileShareArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get the folder path
     
     See also:
     REST API Reference for getFolderPath Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-path/
     - parameter folderId: (path) The folder unique identifier. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileEntryBaseArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getFolderPath(folderId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileEntryBaseArrayWrapper {
        return try await getFolderPathWithRequestBuilder(folderId: folderId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the folder path
     
     See also:
     REST API Reference for getFolderPath Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-path/
     
     - GET /api/2.0/files/folder/{folderId}/path
     - Returns a path to the folder with the ID specified in the request.
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
     - parameter folderId: (path) The folder unique identifier. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileEntryBaseArrayWrapper> 
     */
    open class func getFolderPathWithRequestBuilder(folderId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileEntryBaseArrayWrapper> {
        var localVariablePath = "/api/2.0/files/folder/{folderId}/path"
        let folderIdPreEscape = "\(APIHelper.mapValueToPathItem(folderId))"
        let folderIdPostEscape = folderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{folderId}", with: folderIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileEntryBaseArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get primary external link
     
     See also:
     REST API Reference for getFolderPrimaryExternalLink Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-primary-external-link/
     - parameter id: (path) The folder unique identifier.      - parameter count: (query) The number of items to retrieve in the request. (optional)     - parameter startIndex: (query) The starting index for the query results. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileShareWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getFolderPrimaryExternalLink(id: Int, count: Int? = nil, startIndex: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileShareWrapper {
        return try await getFolderPrimaryExternalLinkWithRequestBuilder(id: id, count: count, startIndex: startIndex, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get primary external link
     
     See also:
     REST API Reference for getFolderPrimaryExternalLink Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-primary-external-link/
     
     - GET /api/2.0/files/folder/{id}/link
     - Returns the primary external link by the identifier specified in the request.
     - parameter id: (path) The folder unique identifier. 
     - parameter count: (query) The number of items to retrieve in the request. (optional)
     - parameter startIndex: (query) The starting index for the query results. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileShareWrapper> 
     */
    open class func getFolderPrimaryExternalLinkWithRequestBuilder(id: Int, count: Int? = nil, startIndex: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileShareWrapper> {
        var localVariablePath = "/api/2.0/files/folder/{id}/link"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "count": (wrappedValue: count?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "startIndex": (wrappedValue: startIndex?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileShareWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Get subfolders
     
     See also:
     REST API Reference for getFolders Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folders/
     - parameter folderId: (path) The folder unique identifier. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileEntryBaseArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getFolders(folderId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileEntryBaseArrayWrapper {
        return try await getFoldersWithRequestBuilder(folderId: folderId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get subfolders
     
     See also:
     REST API Reference for getFolders Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folders/
     
     - GET /api/2.0/files/{folderId}/subfolders
     - Returns a list of all the subfolders from a folder with the ID specified in the request.
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
     - parameter folderId: (path) The folder unique identifier. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileEntryBaseArrayWrapper> 
     */
    open class func getFoldersWithRequestBuilder(folderId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileEntryBaseArrayWrapper> {
        var localVariablePath = "/api/2.0/files/{folderId}/subfolders"
        let folderIdPreEscape = "\(APIHelper.mapValueToPathItem(folderId))"
        let folderIdPostEscape = folderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{folderId}", with: folderIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileEntryBaseArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get the My documents section
     
     See also:
     REST API Reference for getMyFolder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-my-folder/
     - parameter userIdOrGroupId: (query) The user or group ID. (optional)     - parameter filterType: (query) The filter type. (optional)     - parameter applyFilterOption: (query) Specifies whether to return only files, only folders or all elements. (optional)     - parameter count: (query) The maximum number of items to retrieve in the response. (optional)     - parameter startIndex: (query) The starting position of the items to be retrieved. (optional)     - parameter sortBy: (query) The property used to specify the sorting criteria for folder contents. (optional)     - parameter sortOrder: (query) The order in which the results are sorted. (optional)     - parameter filterValue: (query) The text used for filtering or searching folder contents. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FolderContentIntegerWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getMyFolder(userIdOrGroupId: UUID? = nil, filterType: FilterType? = nil, applyFilterOption: ApplyFilterOption? = nil, count: Int? = nil, startIndex: Int? = nil, sortBy: String? = nil, sortOrder: SortOrder? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FolderContentIntegerWrapper {
        return try await getMyFolderWithRequestBuilder(userIdOrGroupId: userIdOrGroupId, filterType: filterType, applyFilterOption: applyFilterOption, count: count, startIndex: startIndex, sortBy: sortBy, sortOrder: sortOrder, filterValue: filterValue, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the My documents section
     
     See also:
     REST API Reference for getMyFolder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-my-folder/
     
     - GET /api/2.0/files/@my
     - Returns the detailed list of files and folders located in the My documents section.
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
     - parameter userIdOrGroupId: (query) The user or group ID. (optional)
     - parameter filterType: (query) The filter type. (optional)
     - parameter applyFilterOption: (query) Specifies whether to return only files, only folders or all elements. (optional)
     - parameter count: (query) The maximum number of items to retrieve in the response. (optional)
     - parameter startIndex: (query) The starting position of the items to be retrieved. (optional)
     - parameter sortBy: (query) The property used to specify the sorting criteria for folder contents. (optional)
     - parameter sortOrder: (query) The order in which the results are sorted. (optional)
     - parameter filterValue: (query) The text used for filtering or searching folder contents. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FolderContentIntegerWrapper> 
     */
    open class func getMyFolderWithRequestBuilder(userIdOrGroupId: UUID? = nil, filterType: FilterType? = nil, applyFilterOption: ApplyFilterOption? = nil, count: Int? = nil, startIndex: Int? = nil, sortBy: String? = nil, sortOrder: SortOrder? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FolderContentIntegerWrapper> {
        let localVariablePath = "/api/2.0/files/@my"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "userIdOrGroupId": (wrappedValue: userIdOrGroupId?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "filterType": (wrappedValue: filterType?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "applyFilterOption": (wrappedValue: applyFilterOption?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "count": (wrappedValue: count?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "startIndex": (wrappedValue: startIndex?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "sortBy": (wrappedValue: sortBy?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "sortOrder": (wrappedValue: sortOrder?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "filterValue": (wrappedValue: filterValue?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]

        if let fields = self.fields {
            localVariableNillableHeaders["fields"] = fields
            self.fields = nil
        }

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FolderContentIntegerWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get new folder items
     
     See also:
     REST API Reference for getNewFolderItems Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-new-folder-items/
     - parameter folderId: (path) The folder unique identifier. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileEntryBaseArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getNewFolderItems(folderId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileEntryBaseArrayWrapper {
        return try await getNewFolderItemsWithRequestBuilder(folderId: folderId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get new folder items
     
     See also:
     REST API Reference for getNewFolderItems Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-new-folder-items/
     
     - GET /api/2.0/files/{folderId}/news
     - Returns a list of all the new items from a folder with the ID specified in the request.
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
     - parameter folderId: (path) The folder unique identifier. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileEntryBaseArrayWrapper> 
     */
    open class func getNewFolderItemsWithRequestBuilder(folderId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileEntryBaseArrayWrapper> {
        var localVariablePath = "/api/2.0/files/{folderId}/news"
        let folderIdPreEscape = "\(APIHelper.mapValueToPathItem(folderId))"
        let folderIdPostEscape = folderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{folderId}", with: folderIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileEntryBaseArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get the Private Room section
     
     See also:
     REST API Reference for getPrivacyFolder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-privacy-folder/
     - parameter userIdOrGroupId: (query) The user or group ID. (optional)     - parameter filterType: (query) The filter type. (optional)     - parameter count: (query) The maximum number of items to retrieve in the request. (optional)     - parameter startIndex: (query) The zero-based index of the first item to retrieve in a paginated list. (optional)     - parameter sortBy: (query) Specifies the field by which the folder content should be sorted. (optional)     - parameter sortOrder: (query) The order in which the results are sorted. (optional)     - parameter filterValue: (query) The text used as a filter or search criterion for folder content queries. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FolderContentIntegerWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getPrivacyFolder(userIdOrGroupId: UUID? = nil, filterType: FilterType? = nil, count: Int? = nil, startIndex: Int? = nil, sortBy: String? = nil, sortOrder: SortOrder? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FolderContentIntegerWrapper {
        return try await getPrivacyFolderWithRequestBuilder(userIdOrGroupId: userIdOrGroupId, filterType: filterType, count: count, startIndex: startIndex, sortBy: sortBy, sortOrder: sortOrder, filterValue: filterValue, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the Private Room section
     
     See also:
     REST API Reference for getPrivacyFolder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-privacy-folder/
     
     - GET /api/2.0/files/@privacy
     - Returns the detailed list of files and folders located in the Private Room section.
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
     - parameter userIdOrGroupId: (query) The user or group ID. (optional)
     - parameter filterType: (query) The filter type. (optional)
     - parameter count: (query) The maximum number of items to retrieve in the request. (optional)
     - parameter startIndex: (query) The zero-based index of the first item to retrieve in a paginated list. (optional)
     - parameter sortBy: (query) Specifies the field by which the folder content should be sorted. (optional)
     - parameter sortOrder: (query) The order in which the results are sorted. (optional)
     - parameter filterValue: (query) The text used as a filter or search criterion for folder content queries. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FolderContentIntegerWrapper> 
     */
    open class func getPrivacyFolderWithRequestBuilder(userIdOrGroupId: UUID? = nil, filterType: FilterType? = nil, count: Int? = nil, startIndex: Int? = nil, sortBy: String? = nil, sortOrder: SortOrder? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FolderContentIntegerWrapper> {
        let localVariablePath = "/api/2.0/files/@privacy"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "userIdOrGroupId": (wrappedValue: userIdOrGroupId?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "filterType": (wrappedValue: filterType?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "count": (wrappedValue: count?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "startIndex": (wrappedValue: startIndex?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "sortBy": (wrappedValue: sortBy?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "sortOrder": (wrappedValue: sortOrder?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "filterValue": (wrappedValue: filterValue?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]

        if let fields = self.fields {
            localVariableNillableHeaders["fields"] = fields
            self.fields = nil
        }

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FolderContentIntegerWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get the Recent section
     
     See also:
     REST API Reference for getRecentFolder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-recent-folder/
     - parameter userIdOrGroupId: (query) The user or group ID. (optional)     - parameter filterType: (query) The filter type. (optional)     - parameter excludeSubject: (query) Specifies whether to exclude search by user or group ID. (optional)     - parameter applyFilterOption: (query) Specifies whether to return only files, only folders or all elements. (optional)     - parameter searchArea: (query) The search area. (optional)     - parameter _extension: (query) Specifies whether to search for a specific file extension in the Recent folder. (optional)     - parameter count: (query) The maximum number of items to return. (optional)     - parameter startIndex: (query) The starting position of the results to be returned in the query response. (optional)     - parameter sortBy: (query) Specifies the sorting criteria for the folder request. (optional)     - parameter sortOrder: (query) The order in which the results are sorted. (optional)     - parameter filterValue: (query) The text used for filtering or searching folder contents. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FolderContentIntegerWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getRecentFolder(userIdOrGroupId: UUID? = nil, filterType: FilterType? = nil, excludeSubject: Bool? = nil, applyFilterOption: ApplyFilterOption? = nil, searchArea: SearchArea? = nil, _extension: [String]? = nil, count: Int? = nil, startIndex: Int? = nil, sortBy: String? = nil, sortOrder: SortOrder? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FolderContentIntegerWrapper {
        return try await getRecentFolderWithRequestBuilder(userIdOrGroupId: userIdOrGroupId, filterType: filterType, excludeSubject: excludeSubject, applyFilterOption: applyFilterOption, searchArea: searchArea, _extension: _extension, count: count, startIndex: startIndex, sortBy: sortBy, sortOrder: sortOrder, filterValue: filterValue, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the Recent section
     
     See also:
     REST API Reference for getRecentFolder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-recent-folder/
     
     - GET /api/2.0/files/recent
     - Returns the detailed list of files located in the Recent section.
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
     - parameter userIdOrGroupId: (query) The user or group ID. (optional)
     - parameter filterType: (query) The filter type. (optional)
     - parameter excludeSubject: (query) Specifies whether to exclude search by user or group ID. (optional)
     - parameter applyFilterOption: (query) Specifies whether to return only files, only folders or all elements. (optional)
     - parameter searchArea: (query) The search area. (optional)
     - parameter _extension: (query) Specifies whether to search for a specific file extension in the Recent folder. (optional)
     - parameter count: (query) The maximum number of items to return. (optional)
     - parameter startIndex: (query) The starting position of the results to be returned in the query response. (optional)
     - parameter sortBy: (query) Specifies the sorting criteria for the folder request. (optional)
     - parameter sortOrder: (query) The order in which the results are sorted. (optional)
     - parameter filterValue: (query) The text used for filtering or searching folder contents. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FolderContentIntegerWrapper> 
     */
    open class func getRecentFolderWithRequestBuilder(userIdOrGroupId: UUID? = nil, filterType: FilterType? = nil, excludeSubject: Bool? = nil, applyFilterOption: ApplyFilterOption? = nil, searchArea: SearchArea? = nil, _extension: [String]? = nil, count: Int? = nil, startIndex: Int? = nil, sortBy: String? = nil, sortOrder: SortOrder? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FolderContentIntegerWrapper> {
        let localVariablePath = "/api/2.0/files/recent"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "userIdOrGroupId": (wrappedValue: userIdOrGroupId?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "filterType": (wrappedValue: filterType?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "excludeSubject": (wrappedValue: excludeSubject?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "applyFilterOption": (wrappedValue: applyFilterOption?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "searchArea": (wrappedValue: searchArea?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "extension": (wrappedValue: _extension?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "count": (wrappedValue: count?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "startIndex": (wrappedValue: startIndex?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "sortBy": (wrappedValue: sortBy?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "sortOrder": (wrappedValue: sortOrder?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "filterValue": (wrappedValue: filterValue?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]

        if let fields = self.fields {
            localVariableNillableHeaders["fields"] = fields
            self.fields = nil
        }

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FolderContentIntegerWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get filtered sections
     
     See also:
     REST API Reference for getRootFolders Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-root-folders/
     - parameter userIdOrGroupId: (query) The user or group ID. (optional)     - parameter filterType: (query) The filter type. (optional)     - parameter withoutTrash: (query) Specifies whether to return the Trash section or not. (optional)     - parameter count: (query) The maximum number of items to retrieve in the response. (optional)     - parameter startIndex: (query) The starting position of the items to be retrieved. (optional)     - parameter sortBy: (query) Specifies the field by which the folder content should be sorted. (optional)     - parameter sortOrder: (query) The order in which the results are sorted. (optional)     - parameter filterValue: (query) The text used as a filter for searching or retrieving folder contents. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FolderContentIntegerArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getRootFolders(userIdOrGroupId: UUID? = nil, filterType: FilterType? = nil, withoutTrash: Bool? = nil, count: Int? = nil, startIndex: Int? = nil, sortBy: String? = nil, sortOrder: SortOrder? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FolderContentIntegerArrayWrapper {
        return try await getRootFoldersWithRequestBuilder(userIdOrGroupId: userIdOrGroupId, filterType: filterType, withoutTrash: withoutTrash, count: count, startIndex: startIndex, sortBy: sortBy, sortOrder: sortOrder, filterValue: filterValue, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get filtered sections
     
     See also:
     REST API Reference for getRootFolders Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-root-folders/
     
     - GET /api/2.0/files/@root
     - Returns all the sections matching the parameters specified in the request.
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
     - parameter userIdOrGroupId: (query) The user or group ID. (optional)
     - parameter filterType: (query) The filter type. (optional)
     - parameter withoutTrash: (query) Specifies whether to return the Trash section or not. (optional)
     - parameter count: (query) The maximum number of items to retrieve in the response. (optional)
     - parameter startIndex: (query) The starting position of the items to be retrieved. (optional)
     - parameter sortBy: (query) Specifies the field by which the folder content should be sorted. (optional)
     - parameter sortOrder: (query) The order in which the results are sorted. (optional)
     - parameter filterValue: (query) The text used as a filter for searching or retrieving folder contents. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FolderContentIntegerArrayWrapper> 
     */
    open class func getRootFoldersWithRequestBuilder(userIdOrGroupId: UUID? = nil, filterType: FilterType? = nil, withoutTrash: Bool? = nil, count: Int? = nil, startIndex: Int? = nil, sortBy: String? = nil, sortOrder: SortOrder? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FolderContentIntegerArrayWrapper> {
        let localVariablePath = "/api/2.0/files/@root"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "userIdOrGroupId": (wrappedValue: userIdOrGroupId?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "filterType": (wrappedValue: filterType?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "withoutTrash": (wrappedValue: withoutTrash?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "count": (wrappedValue: count?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "startIndex": (wrappedValue: startIndex?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "sortBy": (wrappedValue: sortBy?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "sortOrder": (wrappedValue: sortOrder?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "filterValue": (wrappedValue: filterValue?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]

        if let fields = self.fields {
            localVariableNillableHeaders["fields"] = fields
            self.fields = nil
        }

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FolderContentIntegerArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get the Trash section
     
     See also:
     REST API Reference for getTrashFolder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-trash-folder/
     - parameter userIdOrGroupId: (query) The user or group ID. (optional)     - parameter filterType: (query) The filter type. (optional)     - parameter applyFilterOption: (query) Specifies whether to return only files, only folders or all elements. (optional)     - parameter count: (query) The maximum number of items to retrieve in the response. (optional)     - parameter startIndex: (query) The starting position of the items to be retrieved. (optional)     - parameter sortBy: (query) The property used to specify the sorting criteria for folder contents. (optional)     - parameter sortOrder: (query) The order in which the results are sorted. (optional)     - parameter filterValue: (query) The text used for filtering or searching folder contents. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FolderContentIntegerWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getTrashFolder(userIdOrGroupId: UUID? = nil, filterType: FilterType? = nil, applyFilterOption: ApplyFilterOption? = nil, count: Int? = nil, startIndex: Int? = nil, sortBy: String? = nil, sortOrder: SortOrder? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FolderContentIntegerWrapper {
        return try await getTrashFolderWithRequestBuilder(userIdOrGroupId: userIdOrGroupId, filterType: filterType, applyFilterOption: applyFilterOption, count: count, startIndex: startIndex, sortBy: sortBy, sortOrder: sortOrder, filterValue: filterValue, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the Trash section
     
     See also:
     REST API Reference for getTrashFolder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-trash-folder/
     
     - GET /api/2.0/files/@trash
     - Returns the detailed list of files and folders located in the Trash section.
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
     - parameter userIdOrGroupId: (query) The user or group ID. (optional)
     - parameter filterType: (query) The filter type. (optional)
     - parameter applyFilterOption: (query) Specifies whether to return only files, only folders or all elements. (optional)
     - parameter count: (query) The maximum number of items to retrieve in the response. (optional)
     - parameter startIndex: (query) The starting position of the items to be retrieved. (optional)
     - parameter sortBy: (query) The property used to specify the sorting criteria for folder contents. (optional)
     - parameter sortOrder: (query) The order in which the results are sorted. (optional)
     - parameter filterValue: (query) The text used for filtering or searching folder contents. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FolderContentIntegerWrapper> 
     */
    open class func getTrashFolderWithRequestBuilder(userIdOrGroupId: UUID? = nil, filterType: FilterType? = nil, applyFilterOption: ApplyFilterOption? = nil, count: Int? = nil, startIndex: Int? = nil, sortBy: String? = nil, sortOrder: SortOrder? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FolderContentIntegerWrapper> {
        let localVariablePath = "/api/2.0/files/@trash"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "userIdOrGroupId": (wrappedValue: userIdOrGroupId?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "filterType": (wrappedValue: filterType?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "applyFilterOption": (wrappedValue: applyFilterOption?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "count": (wrappedValue: count?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "startIndex": (wrappedValue: startIndex?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "sortBy": (wrappedValue: sortBy?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "sortOrder": (wrappedValue: sortOrder?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "filterValue": (wrappedValue: filterValue?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]

        if let fields = self.fields {
            localVariableNillableHeaders["fields"] = fields
            self.fields = nil
        }

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FolderContentIntegerWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Insert a file
     
     See also:
     REST API Reference for insertFile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/insert-file/
     - parameter folderId: (path) The folder ID for inserting a file.      - parameter insertFileFile: (form) The file to be inserted. (optional)     - parameter insertFileTitle: (form) The file title to be inserted. (optional)     - parameter insertFileCreateNewIfExist: (form) Specifies whether to create a new file if it already exists or not. (optional)     - parameter insertFileKeepConvertStatus: (form) Specifies whether to keep the file converting status or not. (optional)     - parameter insertFileStreamCanRead: (form)  (optional)     - parameter insertFileStreamCanWrite: (form)  (optional)     - parameter insertFileStreamCanSeek: (form)  (optional)     - parameter insertFileStreamCanTimeout: (form)  (optional)     - parameter insertFileStreamLength: (form)  (optional)     - parameter insertFileStreamPosition: (form)  (optional)     - parameter insertFileStreamReadTimeout: (form)  (optional)     - parameter insertFileStreamWriteTimeout: (form)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileIntegerWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func insertFile(folderId: Int, insertFileFile: URL? = nil, insertFileTitle: String? = nil, insertFileCreateNewIfExist: Bool? = nil, insertFileKeepConvertStatus: Bool? = nil, insertFileStreamCanRead: Bool? = nil, insertFileStreamCanWrite: Bool? = nil, insertFileStreamCanSeek: Bool? = nil, insertFileStreamCanTimeout: Bool? = nil, insertFileStreamLength: Int64? = nil, insertFileStreamPosition: Int64? = nil, insertFileStreamReadTimeout: Int? = nil, insertFileStreamWriteTimeout: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileIntegerWrapper {
        return try await insertFileWithRequestBuilder(folderId: folderId, insertFileFile: insertFileFile, insertFileTitle: insertFileTitle, insertFileCreateNewIfExist: insertFileCreateNewIfExist, insertFileKeepConvertStatus: insertFileKeepConvertStatus, insertFileStreamCanRead: insertFileStreamCanRead, insertFileStreamCanWrite: insertFileStreamCanWrite, insertFileStreamCanSeek: insertFileStreamCanSeek, insertFileStreamCanTimeout: insertFileStreamCanTimeout, insertFileStreamLength: insertFileStreamLength, insertFileStreamPosition: insertFileStreamPosition, insertFileStreamReadTimeout: insertFileStreamReadTimeout, insertFileStreamWriteTimeout: insertFileStreamWriteTimeout, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Insert a file
     
     See also:
     REST API Reference for insertFile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/insert-file/
     
     - POST /api/2.0/files/{folderId}/insert
     - Inserts a file specified in the request to the selected folder by single file uploading.
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
     - parameter folderId: (path) The folder ID for inserting a file. 
     - parameter insertFileFile: (form) The file to be inserted. (optional)
     - parameter insertFileTitle: (form) The file title to be inserted. (optional)
     - parameter insertFileCreateNewIfExist: (form) Specifies whether to create a new file if it already exists or not. (optional)
     - parameter insertFileKeepConvertStatus: (form) Specifies whether to keep the file converting status or not. (optional)
     - parameter insertFileStreamCanRead: (form)  (optional)
     - parameter insertFileStreamCanWrite: (form)  (optional)
     - parameter insertFileStreamCanSeek: (form)  (optional)
     - parameter insertFileStreamCanTimeout: (form)  (optional)
     - parameter insertFileStreamLength: (form)  (optional)
     - parameter insertFileStreamPosition: (form)  (optional)
     - parameter insertFileStreamReadTimeout: (form)  (optional)
     - parameter insertFileStreamWriteTimeout: (form)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileIntegerWrapper> 
     */
    open class func insertFileWithRequestBuilder(folderId: Int, insertFileFile: URL? = nil, insertFileTitle: String? = nil, insertFileCreateNewIfExist: Bool? = nil, insertFileKeepConvertStatus: Bool? = nil, insertFileStreamCanRead: Bool? = nil, insertFileStreamCanWrite: Bool? = nil, insertFileStreamCanSeek: Bool? = nil, insertFileStreamCanTimeout: Bool? = nil, insertFileStreamLength: Int64? = nil, insertFileStreamPosition: Int64? = nil, insertFileStreamReadTimeout: Int? = nil, insertFileStreamWriteTimeout: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileIntegerWrapper> {
        var localVariablePath = "/api/2.0/files/{folderId}/insert"
        let folderIdPreEscape = "\(APIHelper.mapValueToPathItem(folderId))"
        let folderIdPostEscape = folderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{folderId}", with: folderIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableFormParams: [String: (any Sendable)?] = [
            "InsertFile.File": insertFileFile?.asParameter(codableHelper: apiConfiguration.codableHelper),
            "InsertFile.Title": insertFileTitle?.asParameter(codableHelper: apiConfiguration.codableHelper),
            "InsertFile.CreateNewIfExist": insertFileCreateNewIfExist?.asParameter(codableHelper: apiConfiguration.codableHelper),
            "InsertFile.KeepConvertStatus": insertFileKeepConvertStatus?.asParameter(codableHelper: apiConfiguration.codableHelper),
            "InsertFile.Stream.CanRead": insertFileStreamCanRead?.asParameter(codableHelper: apiConfiguration.codableHelper),
            "InsertFile.Stream.CanWrite": insertFileStreamCanWrite?.asParameter(codableHelper: apiConfiguration.codableHelper),
            "InsertFile.Stream.CanSeek": insertFileStreamCanSeek?.asParameter(codableHelper: apiConfiguration.codableHelper),
            "InsertFile.Stream.CanTimeout": insertFileStreamCanTimeout?.asParameter(codableHelper: apiConfiguration.codableHelper),
            "InsertFile.Stream.Length": insertFileStreamLength?.asParameter(codableHelper: apiConfiguration.codableHelper),
            "InsertFile.Stream.Position": insertFileStreamPosition?.asParameter(codableHelper: apiConfiguration.codableHelper),
            "InsertFile.Stream.ReadTimeout": insertFileStreamReadTimeout?.asParameter(codableHelper: apiConfiguration.codableHelper),
            "InsertFile.Stream.WriteTimeout": insertFileStreamWriteTimeout?.asParameter(codableHelper: apiConfiguration.codableHelper),
        ]

        let localVariableNonNullParameters = APIHelper.rejectNil(localVariableFormParams)
        let localVariableParameters = APIHelper.convertBoolToString(localVariableNonNullParameters)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "multipart/form-data",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileIntegerWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Insert a file to the My documents section
     
     See also:
     REST API Reference for insertFileToMyFromBody Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/insert-file-to-my-from-body/
     - parameter file: (form) The file to be inserted. (optional)     - parameter title: (form) The file title to be inserted. (optional)     - parameter createNewIfExist: (form) Specifies whether to create a new file if it already exists or not. (optional)     - parameter keepConvertStatus: (form) Specifies whether to keep the file converting status or not. (optional)     - parameter streamCanRead: (form)  (optional)     - parameter streamCanWrite: (form)  (optional)     - parameter streamCanSeek: (form)  (optional)     - parameter streamCanTimeout: (form)  (optional)     - parameter streamLength: (form)  (optional)     - parameter streamPosition: (form)  (optional)     - parameter streamReadTimeout: (form)  (optional)     - parameter streamWriteTimeout: (form)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileIntegerWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func insertFileToMyFromBody(file: URL? = nil, title: String? = nil, createNewIfExist: Bool? = nil, keepConvertStatus: Bool? = nil, streamCanRead: Bool? = nil, streamCanWrite: Bool? = nil, streamCanSeek: Bool? = nil, streamCanTimeout: Bool? = nil, streamLength: Int64? = nil, streamPosition: Int64? = nil, streamReadTimeout: Int? = nil, streamWriteTimeout: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileIntegerWrapper {
        return try await insertFileToMyFromBodyWithRequestBuilder(file: file, title: title, createNewIfExist: createNewIfExist, keepConvertStatus: keepConvertStatus, streamCanRead: streamCanRead, streamCanWrite: streamCanWrite, streamCanSeek: streamCanSeek, streamCanTimeout: streamCanTimeout, streamLength: streamLength, streamPosition: streamPosition, streamReadTimeout: streamReadTimeout, streamWriteTimeout: streamWriteTimeout, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Insert a file to the My documents section
     
     See also:
     REST API Reference for insertFileToMyFromBody Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/insert-file-to-my-from-body/
     
     - POST /api/2.0/files/@my/insert
     - Inserts a file specified in the request to the My documents section by single file uploading.
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
     - parameter file: (form) The file to be inserted. (optional)
     - parameter title: (form) The file title to be inserted. (optional)
     - parameter createNewIfExist: (form) Specifies whether to create a new file if it already exists or not. (optional)
     - parameter keepConvertStatus: (form) Specifies whether to keep the file converting status or not. (optional)
     - parameter streamCanRead: (form)  (optional)
     - parameter streamCanWrite: (form)  (optional)
     - parameter streamCanSeek: (form)  (optional)
     - parameter streamCanTimeout: (form)  (optional)
     - parameter streamLength: (form)  (optional)
     - parameter streamPosition: (form)  (optional)
     - parameter streamReadTimeout: (form)  (optional)
     - parameter streamWriteTimeout: (form)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileIntegerWrapper> 
     */
    open class func insertFileToMyFromBodyWithRequestBuilder(file: URL? = nil, title: String? = nil, createNewIfExist: Bool? = nil, keepConvertStatus: Bool? = nil, streamCanRead: Bool? = nil, streamCanWrite: Bool? = nil, streamCanSeek: Bool? = nil, streamCanTimeout: Bool? = nil, streamLength: Int64? = nil, streamPosition: Int64? = nil, streamReadTimeout: Int? = nil, streamWriteTimeout: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileIntegerWrapper> {
        let localVariablePath = "/api/2.0/files/@my/insert"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableFormParams: [String: (any Sendable)?] = [
            "File": file?.asParameter(codableHelper: apiConfiguration.codableHelper),
            "Title": title?.asParameter(codableHelper: apiConfiguration.codableHelper),
            "CreateNewIfExist": createNewIfExist?.asParameter(codableHelper: apiConfiguration.codableHelper),
            "KeepConvertStatus": keepConvertStatus?.asParameter(codableHelper: apiConfiguration.codableHelper),
            "Stream.CanRead": streamCanRead?.asParameter(codableHelper: apiConfiguration.codableHelper),
            "Stream.CanWrite": streamCanWrite?.asParameter(codableHelper: apiConfiguration.codableHelper),
            "Stream.CanSeek": streamCanSeek?.asParameter(codableHelper: apiConfiguration.codableHelper),
            "Stream.CanTimeout": streamCanTimeout?.asParameter(codableHelper: apiConfiguration.codableHelper),
            "Stream.Length": streamLength?.asParameter(codableHelper: apiConfiguration.codableHelper),
            "Stream.Position": streamPosition?.asParameter(codableHelper: apiConfiguration.codableHelper),
            "Stream.ReadTimeout": streamReadTimeout?.asParameter(codableHelper: apiConfiguration.codableHelper),
            "Stream.WriteTimeout": streamWriteTimeout?.asParameter(codableHelper: apiConfiguration.codableHelper),
        ]

        let localVariableNonNullParameters = APIHelper.rejectNil(localVariableFormParams)
        let localVariableParameters = APIHelper.convertBoolToString(localVariableNonNullParameters)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "multipart/form-data",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileIntegerWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Rename a folder
     
     See also:
     REST API Reference for renameFolder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/rename-folder/
     - parameter folderId: (path) The folder ID for the folder creation.      - parameter createFolder: (body) The parameters for creating a folder. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FolderIntegerWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func renameFolder(folderId: Int, createFolder: CreateFolder, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FolderIntegerWrapper {
        return try await renameFolderWithRequestBuilder(folderId: folderId, createFolder: createFolder, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Rename a folder
     
     See also:
     REST API Reference for renameFolder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/rename-folder/
     
     - PUT /api/2.0/files/folder/{folderId}
     - Renames the selected folder with a new title specified in the request.
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
     - parameter folderId: (path) The folder ID for the folder creation. 
     - parameter createFolder: (body) The parameters for creating a folder. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FolderIntegerWrapper> 
     */
    open class func renameFolderWithRequestBuilder(folderId: Int, createFolder: CreateFolder, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FolderIntegerWrapper> {
        var localVariablePath = "/api/2.0/files/folder/{folderId}"
        let folderIdPreEscape = "\(APIHelper.mapValueToPathItem(folderId))"
        let folderIdPostEscape = folderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{folderId}", with: folderIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createFolder, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FolderIntegerWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Set folder order
     
     See also:
     REST API Reference for setFolderOrder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-folder-order/
     - parameter folderId: (path) The folder unique identifier.      - parameter orderRequestDto: (body) The folder order information. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FolderIntegerWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func setFolderOrder(folderId: Int, orderRequestDto: OrderRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FolderIntegerWrapper {
        return try await setFolderOrderWithRequestBuilder(folderId: folderId, orderRequestDto: orderRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Set folder order
     
     See also:
     REST API Reference for setFolderOrder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-folder-order/
     
     - PUT /api/2.0/files/folder/{folderId}/order
     - Sets the order of a folder with ID specified in the request.
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
     - parameter folderId: (path) The folder unique identifier. 
     - parameter orderRequestDto: (body) The folder order information. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FolderIntegerWrapper> 
     */
    open class func setFolderOrderWithRequestBuilder(folderId: Int, orderRequestDto: OrderRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FolderIntegerWrapper> {
        var localVariablePath = "/api/2.0/files/folder/{folderId}/order"
        let folderIdPreEscape = "\(APIHelper.mapValueToPathItem(folderId))"
        let folderIdPostEscape = folderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{folderId}", with: folderIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: orderRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FolderIntegerWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Set the folder external link
     
     See also:
     REST API Reference for setFolderPrimaryExternalLink Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-folder-primary-external-link/
     - parameter id: (path) The folder ID.      - parameter folderLinkRequest: (body) The folder link parameters. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileShareWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func setFolderPrimaryExternalLink(id: Int, folderLinkRequest: FolderLinkRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileShareWrapper {
        return try await setFolderPrimaryExternalLinkWithRequestBuilder(id: id, folderLinkRequest: folderLinkRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Set the folder external link
     
     See also:
     REST API Reference for setFolderPrimaryExternalLink Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-folder-primary-external-link/
     
     - PUT /api/2.0/files/folder/{id}/links
     - Sets the folder external link with the ID specified in the request.
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
     - parameter id: (path) The folder ID. 
     - parameter folderLinkRequest: (body) The folder link parameters. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileShareWrapper> 
     */
    open class func setFolderPrimaryExternalLinkWithRequestBuilder(id: Int, folderLinkRequest: FolderLinkRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileShareWrapper> {
        var localVariablePath = "/api/2.0/files/folder/{id}/links"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: folderLinkRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileShareWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Upload a file
     
     See also:
     REST API Reference for uploadFile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/upload-file/
     - parameter folderId: (path) The folder ID to upload a file.      - parameter uploadRequestDto: (body) The request parameters for uploading a file. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ObjectWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func uploadFile(folderId: Int, uploadRequestDto: UploadRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ObjectWrapper {
        return try await uploadFileWithRequestBuilder(folderId: folderId, uploadRequestDto: uploadRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Upload a file
     
     See also:
     REST API Reference for uploadFile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/upload-file/
     
     - POST /api/2.0/files/{folderId}/upload
     - Uploads a file specified in the request to the selected folder by single file uploading or standart multipart/form-data method.
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
     - parameter folderId: (path) The folder ID to upload a file. 
     - parameter uploadRequestDto: (body) The request parameters for uploading a file. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ObjectWrapper> 
     */
    open class func uploadFileWithRequestBuilder(folderId: Int, uploadRequestDto: UploadRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ObjectWrapper> {
        var localVariablePath = "/api/2.0/files/{folderId}/upload"
        let folderIdPreEscape = "\(APIHelper.mapValueToPathItem(folderId))"
        let folderIdPostEscape = folderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{folderId}", with: folderIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: uploadRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ObjectWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Upload a file to the My documents section
     
     See also:
     REST API Reference for uploadFileToMy Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/upload-file-to-my/
     - parameter inDto: (query) The request parameters for uploading a file. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ObjectWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func uploadFileToMy(inDto: UploadRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ObjectWrapper {
        return try await uploadFileToMyWithRequestBuilder(inDto: inDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Upload a file to the My documents section
     
     See also:
     REST API Reference for uploadFileToMy Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/upload-file-to-my/
     
     - POST /api/2.0/files/@my/upload
     - Uploads a file specified in the request to the My documents section by single file uploading or standart multipart/form-data method.
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
     - parameter inDto: (query) The request parameters for uploading a file. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ObjectWrapper> 
     */
    open class func uploadFileToMyWithRequestBuilder(inDto: UploadRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ObjectWrapper> {
        let localVariablePath = "/api/2.0/files/@my/upload"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "inDto": (wrappedValue: inDto?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ObjectWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
extension FilesFoldersAPIApi {
    @discardableResult
    public func withFields(_ fields: String) -> FilesFoldersAPIApi {
        self.fields = fields
        return self
    }
}
