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
     Aborts an in-progress file upload session.
     
     See also:
     REST API Reference for abortUploadSession Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/abort-upload-session/
     - parameter sessionId: (path) The session ID.      - parameter folderId: (path) The folder ID. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func abortUploadSession(sessionId: String, folderId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await abortUploadSessionWithRequestBuilder(sessionId: sessionId, folderId: folderId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Aborts an in-progress file upload session.
     
     See also:
     REST API Reference for abortUploadSession Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/abort-upload-session/
     
     - DELETE /api/2.0/files/{folderId}/session/{sessionId}
     - This method allows users to cancel an ongoing upload session identified by the session ID.  Once the session is aborted, the associated resources will be cleaned up, and the session will no longer accept further uploads.
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
     - parameter sessionId: (path) The session ID. 
     - parameter folderId: (path) The folder ID. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func abortUploadSessionWithRequestBuilder(sessionId: String, folderId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<Void> {
        var localVariablePath = "/api/2.0/files/{folderId}/session/{sessionId}"
        let sessionIdPreEscape = "\(APIHelper.mapValueToPathItem(sessionId))"
        let sessionIdPostEscape = sessionIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{sessionId}", with: sessionIdPostEscape, options: .literal, range: nil)
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

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Add favorite files and folders
     
     See also:
     REST API Reference for addFavorites Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/add-favorites/
     - parameter baseBatchRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: BooleanWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func addFavorites(baseBatchRequestDto: BaseBatchRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> BooleanWrapper {
        return try await addFavoritesWithRequestBuilder(baseBatchRequestDto: baseBatchRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Add favorite files and folders
     
     See also:
     REST API Reference for addFavorites Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/add-favorites/
     
     - POST /api/2.0/files/favorites
     - Adds files and folders with the IDs specified in the request to the favorite list.
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
     - parameter baseBatchRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<BooleanWrapper> 
     */
    open class func addFavoritesWithRequestBuilder(baseBatchRequestDto: BaseBatchRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<BooleanWrapper> {
        let localVariablePath = "/api/2.0/files/favorites"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: baseBatchRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BooleanWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Bulk download
     
     See also:
     REST API Reference for bulkDownload Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/bulk-download/
     - parameter downloadRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileOperationArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func bulkDownload(downloadRequestDto: DownloadRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileOperationArrayWrapper {
        return try await bulkDownloadWithRequestBuilder(downloadRequestDto: downloadRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Bulk download
     
     See also:
     REST API Reference for bulkDownload Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/bulk-download/
     
     - PUT /api/2.0/files/fileops/bulkdownload
     - Starts the download process of files and folders with the IDs specified in the request.
     - parameter downloadRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileOperationArrayWrapper> 
     */
    open class func bulkDownloadWithRequestBuilder(downloadRequestDto: DownloadRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileOperationArrayWrapper> {
        let localVariablePath = "/api/2.0/files/fileops/bulkdownload"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: downloadRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileOperationArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Get conversion status
     
     See also:
     REST API Reference for checkConversionStatus Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/check-conversion-status/
     - parameter fileId: (path) The file ID to check conversion status.      - parameter start: (query) Specifies whether a conversion operation is started or not. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ConversationResultArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func checkConversionStatus(fileId: Int, start: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ConversationResultArrayWrapper {
        return try await checkConversionStatusWithRequestBuilder(fileId: fileId, start: start, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get conversion status
     
     See also:
     REST API Reference for checkConversionStatus Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/check-conversion-status/
     
     - GET /api/2.0/files/file/{fileId}/checkconversion
     - Checks the conversion status of a file with the ID specified in the request.
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
     - parameter fileId: (path) The file ID to check conversion status. 
     - parameter start: (query) Specifies whether a conversion operation is started or not. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ConversationResultArrayWrapper> 
     */
    open class func checkConversionStatusWithRequestBuilder(fileId: Int, start: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ConversationResultArrayWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/checkconversion"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "start": (wrappedValue: start?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ConversationResultArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Move or copy files to a folder
     
     See also:
     REST API Reference for checkMoveOrCopyBatchItems Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/check-move-or-copy-batch-items/
     - parameter inDto: (query) The request parameters for copying/moving files. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileEntryBaseArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func checkMoveOrCopyBatchItems(inDto: BatchRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileEntryBaseArrayWrapper {
        return try await checkMoveOrCopyBatchItemsWithRequestBuilder(inDto: inDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Move or copy files to a folder
     
     See also:
     REST API Reference for checkMoveOrCopyBatchItems Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/check-move-or-copy-batch-items/
     
     - GET /api/2.0/files/fileops/move
     - Checks if files or folders can be moved or copied to the specified folder, moves or copies them, and returns their information.
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
     - parameter inDto: (query) The request parameters for copying/moving files. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileEntryBaseArrayWrapper> 
     */
    open class func checkMoveOrCopyBatchItemsWithRequestBuilder(inDto: BatchRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileEntryBaseArrayWrapper> {
        let localVariablePath = "/api/2.0/files/fileops/move"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "inDto": (wrappedValue: inDto?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileEntryBaseArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Check for moving or copying files to a folder
     
     See also:
     REST API Reference for checkMoveOrCopyDestFolder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/check-move-or-copy-dest-folder/
     - parameter inDto: (query) The request parameters for copying/moving files. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: CheckDestFolderWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func checkMoveOrCopyDestFolder(inDto: BatchRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> CheckDestFolderWrapper {
        return try await checkMoveOrCopyDestFolderWithRequestBuilder(inDto: inDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Check for moving or copying files to a folder
     
     See also:
     REST API Reference for checkMoveOrCopyDestFolder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/check-move-or-copy-dest-folder/
     
     - GET /api/2.0/files/fileops/checkdestfolder
     - Checks if files can be moved or copied to the specified folder.
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
     - parameter inDto: (query) The request parameters for copying/moving files. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<CheckDestFolderWrapper> 
     */
    open class func checkMoveOrCopyDestFolderWithRequestBuilder(inDto: BatchRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<CheckDestFolderWrapper> {
        let localVariablePath = "/api/2.0/files/fileops/checkdestfolder"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "inDto": (wrappedValue: inDto?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CheckDestFolderWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Copy to the folder
     
     See also:
     REST API Reference for copyBatchItems Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/copy-batch-items/
     - parameter batchRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileOperationArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func copyBatchItems(batchRequestDto: BatchRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileOperationArrayWrapper {
        return try await copyBatchItemsWithRequestBuilder(batchRequestDto: batchRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Copy to the folder
     
     See also:
     REST API Reference for copyBatchItems Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/copy-batch-items/
     
     - PUT /api/2.0/files/fileops/copy
     - Copies all the selected files and folders to the folder with the ID specified in the request.
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
     - parameter batchRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileOperationArrayWrapper> 
     */
    open class func copyBatchItemsWithRequestBuilder(batchRequestDto: BatchRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileOperationArrayWrapper> {
        let localVariablePath = "/api/2.0/files/fileops/copy"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: batchRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileOperationArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Chunked upload
     
     See also:
     REST API Reference for createUploadSession Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-upload-session/
     - parameter folderId: (path) The session folder ID.      - parameter sessionRequest: (body) The session parameters. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ChunkedUploadSessionResponseWrapperIntegerWrapper
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func createUploadSession(folderId: Int, sessionRequest: SessionRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ChunkedUploadSessionResponseWrapperIntegerWrapper {
        return try await createUploadSessionWithRequestBuilder(folderId: folderId, sessionRequest: sessionRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Chunked upload
     
     See also:
     REST API Reference for createUploadSession Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-upload-session/
     
     - POST /api/2.0/files/{folderId}/upload/create_session
     - Creates the session to upload large files in multiple chunks to the folder with the ID specified in the request.
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
     - parameter folderId: (path) The session folder ID. 
     - parameter sessionRequest: (body) The session parameters. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ChunkedUploadSessionResponseWrapperIntegerWrapper> 
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    open class func createUploadSessionWithRequestBuilder(folderId: Int, sessionRequest: SessionRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ChunkedUploadSessionResponseWrapperIntegerWrapper> {
        var localVariablePath = "/api/2.0/files/{folderId}/upload/create_session"
        let folderIdPreEscape = "\(APIHelper.mapValueToPathItem(folderId))"
        let folderIdPostEscape = folderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{folderId}", with: folderIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: sessionRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ChunkedUploadSessionResponseWrapperIntegerWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Creates a session for uploading a file to a specific folder in chunks.
     
     See also:
     REST API Reference for createUploadSessionInFolder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-upload-session-in-folder/
     - parameter folderId: (path) The session folder ID.      - parameter sessionRequest: (body) The session parameters. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ChunkedUploadSessionResponseIntegerWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func createUploadSessionInFolder(folderId: Int, sessionRequest: SessionRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ChunkedUploadSessionResponseIntegerWrapper {
        return try await createUploadSessionInFolderWithRequestBuilder(folderId: folderId, sessionRequest: sessionRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Creates a session for uploading a file to a specific folder in chunks.
     
     See also:
     REST API Reference for createUploadSessionInFolder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-upload-session-in-folder/
     
     - POST /api/2.0/files/{folderId}/session
     - The session allows the user to upload a file in smaller chunks to the folder identified by its ID.  The file information, such as name, size, and additional metadata, must be provided in the request.  This method facilitates large file upload scenarios by enabling chunked file uploads.
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
     - parameter folderId: (path) The session folder ID. 
     - parameter sessionRequest: (body) The session parameters. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ChunkedUploadSessionResponseIntegerWrapper> 
     */
    open class func createUploadSessionInFolderWithRequestBuilder(folderId: Int, sessionRequest: SessionRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ChunkedUploadSessionResponseIntegerWrapper> {
        var localVariablePath = "/api/2.0/files/{folderId}/session"
        let folderIdPreEscape = "\(APIHelper.mapValueToPathItem(folderId))"
        let folderIdPostEscape = folderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{folderId}", with: folderIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: sessionRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ChunkedUploadSessionResponseIntegerWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Delete files and folders
     
     See also:
     REST API Reference for deleteBatchItems Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-batch-items/
     - parameter deleteBatchRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileOperationArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func deleteBatchItems(deleteBatchRequestDto: DeleteBatchRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileOperationArrayWrapper {
        return try await deleteBatchItemsWithRequestBuilder(deleteBatchRequestDto: deleteBatchRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Delete files and folders
     
     See also:
     REST API Reference for deleteBatchItems Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-batch-items/
     
     - PUT /api/2.0/files/fileops/delete
     - Deletes the files and folders with the IDs specified in the request.
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
     - parameter deleteBatchRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileOperationArrayWrapper> 
     */
    open class func deleteBatchItemsWithRequestBuilder(deleteBatchRequestDto: DeleteBatchRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileOperationArrayWrapper> {
        let localVariablePath = "/api/2.0/files/fileops/delete"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: deleteBatchRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileOperationArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Delete favorite files and folders (using body parameters)
     
     See also:
     REST API Reference for deleteFavoritesFromBody Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-favorites-from-body/
     - parameter baseBatchRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: BooleanWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func deleteFavoritesFromBody(baseBatchRequestDto: BaseBatchRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> BooleanWrapper {
        return try await deleteFavoritesFromBodyWithRequestBuilder(baseBatchRequestDto: baseBatchRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Delete favorite files and folders (using body parameters)
     
     See also:
     REST API Reference for deleteFavoritesFromBody Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-favorites-from-body/
     
     - DELETE /api/2.0/files/favorites
     - Removes files and folders with the IDs specified in the request from the favorite list. This method uses the body parameters.
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
     - parameter baseBatchRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<BooleanWrapper> 
     */
    open class func deleteFavoritesFromBodyWithRequestBuilder(baseBatchRequestDto: BaseBatchRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<BooleanWrapper> {
        let localVariablePath = "/api/2.0/files/favorites"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: baseBatchRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BooleanWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Delete file versions
     
     See also:
     REST API Reference for deleteFileVersions Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-file-versions/
     - parameter deleteVersionBatchRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileOperationWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func deleteFileVersions(deleteVersionBatchRequestDto: DeleteVersionBatchRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileOperationWrapper {
        return try await deleteFileVersionsWithRequestBuilder(deleteVersionBatchRequestDto: deleteVersionBatchRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Delete file versions
     
     See also:
     REST API Reference for deleteFileVersions Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-file-versions/
     
     - PUT /api/2.0/files/fileops/deleteversion
     - Deletes the file versions with the IDs specified in the request.
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
     - parameter deleteVersionBatchRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileOperationWrapper> 
     */
    open class func deleteFileVersionsWithRequestBuilder(deleteVersionBatchRequestDto: DeleteVersionBatchRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileOperationWrapper> {
        let localVariablePath = "/api/2.0/files/fileops/deleteversion"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: deleteVersionBatchRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileOperationWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Duplicate files and folders
     
     See also:
     REST API Reference for duplicateBatchItems Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/duplicate-batch-items/
     - parameter duplicateRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileOperationArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func duplicateBatchItems(duplicateRequestDto: DuplicateRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileOperationArrayWrapper {
        return try await duplicateBatchItemsWithRequestBuilder(duplicateRequestDto: duplicateRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Duplicate files and folders
     
     See also:
     REST API Reference for duplicateBatchItems Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/duplicate-batch-items/
     
     - PUT /api/2.0/files/fileops/duplicate
     - Duplicates all the selected files and folders.
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
     - parameter duplicateRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileOperationArrayWrapper> 
     */
    open class func duplicateBatchItemsWithRequestBuilder(duplicateRequestDto: DuplicateRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileOperationArrayWrapper> {
        let localVariablePath = "/api/2.0/files/fileops/duplicate"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: duplicateRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileOperationArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Empty the Trash folder
     
     See also:
     REST API Reference for emptyTrash Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/empty-trash/
     - parameter single: (query) Specifies whether to return only the current operation (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileOperationArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func emptyTrash(single: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileOperationArrayWrapper {
        return try await emptyTrashWithRequestBuilder(single: single, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Empty the Trash folder
     
     See also:
     REST API Reference for emptyTrash Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/empty-trash/
     
     - PUT /api/2.0/files/fileops/emptytrash
     - Deletes all the files and folders from the Trash folder.
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
     - parameter single: (query) Specifies whether to return only the current operation (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileOperationArrayWrapper> 
     */
    open class func emptyTrashWithRequestBuilder(single: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileOperationArrayWrapper> {
        let localVariablePath = "/api/2.0/files/fileops/emptytrash"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "Single": (wrappedValue: single?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileOperationArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Finalize an upload session
     
     See also:
     REST API Reference for finalizeSession Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/finalize-session/
     - parameter folderId: (path) The folder ID.      - parameter sessionId: (path) The session ID. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: UploadSessionResponseIntegerWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func finalizeSession(folderId: Int, sessionId: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> UploadSessionResponseIntegerWrapper {
        return try await finalizeSessionWithRequestBuilder(folderId: folderId, sessionId: sessionId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Finalize an upload session
     
     See also:
     REST API Reference for finalizeSession Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/finalize-session/
     
     - PUT /api/2.0/files/{folderId}/session/{sessionId}/finalize
     - Finalizes the upload session by processing the uploaded file chunks and marking the upload as complete.  This method consolidates chunked uploads into a complete file if required, sends notifications about the upload event,  and performs any additional cleanup or related actions, such as socket updates and webhook publishing.
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
     - parameter sessionId: (path) The session ID. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<UploadSessionResponseIntegerWrapper> 
     */
    open class func finalizeSessionWithRequestBuilder(folderId: Int, sessionId: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<UploadSessionResponseIntegerWrapper> {
        var localVariablePath = "/api/2.0/files/{folderId}/session/{sessionId}/finalize"
        let folderIdPreEscape = "\(APIHelper.mapValueToPathItem(folderId))"
        let folderIdPostEscape = folderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{folderId}", with: folderIdPostEscape, options: .literal, range: nil)
        let sessionIdPreEscape = "\(APIHelper.mapValueToPathItem(sessionId))"
        let sessionIdPostEscape = sessionIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{sessionId}", with: sessionIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<UploadSessionResponseIntegerWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get active file operations
     
     See also:
     REST API Reference for getOperationStatuses Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-operation-statuses/
     - parameter id: (query) The ID of the file operation. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileOperationArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getOperationStatuses(id: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileOperationArrayWrapper {
        return try await getOperationStatusesWithRequestBuilder(id: id, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get active file operations
     
     See also:
     REST API Reference for getOperationStatuses Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-operation-statuses/
     
     - GET /api/2.0/files/fileops
     - Returns a list of all the active file operations.
     - parameter id: (query) The ID of the file operation. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileOperationArrayWrapper> 
     */
    open class func getOperationStatusesWithRequestBuilder(id: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileOperationArrayWrapper> {
        let localVariablePath = "/api/2.0/files/fileops"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "id": (wrappedValue: id?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileOperationArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Get file operation statuses
     
     See also:
     REST API Reference for getOperationStatusesByType Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-operation-statuses-by-type/
     - parameter operationType: (path) Specifies the type of file operation to be retrieved.      - parameter id: (query) The ID of the file operation. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileOperationArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getOperationStatusesByType(operationType: FileOperationType, id: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileOperationArrayWrapper {
        return try await getOperationStatusesByTypeWithRequestBuilder(operationType: operationType, id: id, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get file operation statuses
     
     See also:
     REST API Reference for getOperationStatusesByType Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-operation-statuses-by-type/
     
     - GET /api/2.0/files/fileops/{operationType}
     - Retrieves the statuses of operations filtered by the specified operation type.
     - parameter operationType: (path) Specifies the type of file operation to be retrieved. 
     - parameter id: (query) The ID of the file operation. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileOperationArrayWrapper> 
     */
    open class func getOperationStatusesByTypeWithRequestBuilder(operationType: FileOperationType, id: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileOperationArrayWrapper> {
        var localVariablePath = "/api/2.0/files/fileops/{operationType}"
        let operationTypePreEscape = "\(APIHelper.mapValueToPathItem(operationType))"
        let operationTypePostEscape = operationTypePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{operationType}", with: operationTypePostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "id": (wrappedValue: id?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileOperationArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Mark as read
     
     See also:
     REST API Reference for markAsRead Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/mark-as-read/
     - parameter baseBatchRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileOperationArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func markAsRead(baseBatchRequestDto: BaseBatchRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileOperationArrayWrapper {
        return try await markAsReadWithRequestBuilder(baseBatchRequestDto: baseBatchRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Mark as read
     
     See also:
     REST API Reference for markAsRead Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/mark-as-read/
     
     - PUT /api/2.0/files/fileops/markasread
     - Marks the files and folders with the IDs specified in the request as read.
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
     - parameter baseBatchRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileOperationArrayWrapper> 
     */
    open class func markAsReadWithRequestBuilder(baseBatchRequestDto: BaseBatchRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileOperationArrayWrapper> {
        let localVariablePath = "/api/2.0/files/fileops/markasread"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: baseBatchRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileOperationArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Move or copy to a folder
     
     See also:
     REST API Reference for moveBatchItems Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/move-batch-items/
     - parameter batchRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileOperationArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func moveBatchItems(batchRequestDto: BatchRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileOperationArrayWrapper {
        return try await moveBatchItemsWithRequestBuilder(batchRequestDto: batchRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Move or copy to a folder
     
     See also:
     REST API Reference for moveBatchItems Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/move-batch-items/
     
     - PUT /api/2.0/files/fileops/move
     - Moves or copies all the selected files and folders to the folder with the ID specified in the request.
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
     - parameter batchRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileOperationArrayWrapper> 
     */
    open class func moveBatchItemsWithRequestBuilder(batchRequestDto: BatchRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileOperationArrayWrapper> {
        let localVariablePath = "/api/2.0/files/fileops/move"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: batchRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileOperationArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Start file conversion
     
     See also:
     REST API Reference for startFileConversion Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/start-file-conversion/
     - parameter fileId: (path) The file ID to start conversion proccess.      - parameter checkConversionRequestDtoInteger: (body) The parameters for checking file conversion. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ConversationResultArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func startFileConversion(fileId: Int, checkConversionRequestDtoInteger: CheckConversionRequestDtoInteger? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ConversationResultArrayWrapper {
        return try await startFileConversionWithRequestBuilder(fileId: fileId, checkConversionRequestDtoInteger: checkConversionRequestDtoInteger, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Start file conversion
     
     See also:
     REST API Reference for startFileConversion Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/start-file-conversion/
     
     - PUT /api/2.0/files/file/{fileId}/checkconversion
     - Starts a conversion operation of a file with the ID specified in the request.
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
     - parameter fileId: (path) The file ID to start conversion proccess. 
     - parameter checkConversionRequestDtoInteger: (body) The parameters for checking file conversion. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ConversationResultArrayWrapper> 
     */
    open class func startFileConversionWithRequestBuilder(fileId: Int, checkConversionRequestDtoInteger: CheckConversionRequestDtoInteger? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ConversationResultArrayWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/checkconversion"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: checkConversionRequestDtoInteger, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ConversationResultArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Finish active operations
     
     See also:
     REST API Reference for terminateTasks Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/terminate-tasks/
     - parameter id: (path) The operation unique identifier. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileOperationArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func terminateTasks(id: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileOperationArrayWrapper {
        return try await terminateTasksWithRequestBuilder(id: id, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Finish active operations
     
     See also:
     REST API Reference for terminateTasks Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/terminate-tasks/
     
     - PUT /api/2.0/files/fileops/terminate/{id}
     - Finishes an operation with the ID specified in the request or all the active operations.
     - parameter id: (path) The operation unique identifier. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileOperationArrayWrapper> 
     */
    open class func terminateTasksWithRequestBuilder(id: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileOperationArrayWrapper> {
        var localVariablePath = "/api/2.0/files/fileops/terminate/{id}"
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

        let localVariableRequestBuilder: RequestBuilder<FileOperationArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Update a comment
     
     See also:
     REST API Reference for updateFileComment Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/update-file-comment/
     - parameter fileId: (path) The file ID where the comment is located.      - parameter updateComment: (body) The parameters for updating a comment. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: StringWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func updateFileComment(fileId: Int, updateComment: UpdateComment, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> StringWrapper {
        return try await updateFileCommentWithRequestBuilder(fileId: fileId, updateComment: updateComment, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Update a comment
     
     See also:
     REST API Reference for updateFileComment Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/update-file-comment/
     
     - PUT /api/2.0/files/file/{fileId}/comment
     - Updates a comment in a file with the ID specified in the request.
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
     - parameter fileId: (path) The file ID where the comment is located. 
     - parameter updateComment: (body) The parameters for updating a comment. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<StringWrapper> 
     */
    open class func updateFileCommentWithRequestBuilder(fileId: Int, updateComment: UpdateComment, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<StringWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/comment"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateComment, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<StringWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Handles the upload of a chunk for an existing upload session.
     
     See also:
     REST API Reference for uploadAsyncSession Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/upload-async-session/
     - parameter folderId: (path) The folder ID.      - parameter sessionId: (path) The upload session ID.      - parameter chunkNumber: (query) The chunk number. (optional)     - parameter file: (form) The file chunk to be uploaded as part of the multipart/form-data request.  This property represents the uploaded file chunk content from the HTTP request form for chunked upload operations.  The file chunk is accessed via the IFormFile interface which provides access to the chunk content and length. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ChunkedUploadSessionResponseIntegerWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func uploadAsyncSession(folderId: Int, sessionId: String, chunkNumber: Int? = nil, file: URL? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ChunkedUploadSessionResponseIntegerWrapper {
        return try await uploadAsyncSessionWithRequestBuilder(folderId: folderId, sessionId: sessionId, chunkNumber: chunkNumber, file: file, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Handles the upload of a chunk for an existing upload session.
     
     See also:
     REST API Reference for uploadAsyncSession Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/upload-async-session/
     
     - POST /api/2.0/files/{folderId}/session/{sessionId}/upload
     - This method allows the caller to upload a specific chunk of a file to an ongoing upload session.  The session is identified by the session ID provided in the request. The chunk can be of any size  within the limits allowed during the session initialization. Each chunk must be uploaded in the  correct order for the server to process it appropriately.  The server updates the upload session status and stores the progress information after processing  each chunk. The updated session details are returned in the response.
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
     - parameter sessionId: (path) The upload session ID. 
     - parameter chunkNumber: (query) The chunk number. (optional)
     - parameter file: (form) The file chunk to be uploaded as part of the multipart/form-data request.  This property represents the uploaded file chunk content from the HTTP request form for chunked upload operations.  The file chunk is accessed via the IFormFile interface which provides access to the chunk content and length. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ChunkedUploadSessionResponseIntegerWrapper> 
     */
    open class func uploadAsyncSessionWithRequestBuilder(folderId: Int, sessionId: String, chunkNumber: Int? = nil, file: URL? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ChunkedUploadSessionResponseIntegerWrapper> {
        var localVariablePath = "/api/2.0/files/{folderId}/session/{sessionId}/upload"
        let folderIdPreEscape = "\(APIHelper.mapValueToPathItem(folderId))"
        let folderIdPostEscape = folderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{folderId}", with: folderIdPostEscape, options: .literal, range: nil)
        let sessionIdPreEscape = "\(APIHelper.mapValueToPathItem(sessionId))"
        let sessionIdPostEscape = sessionIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{sessionId}", with: sessionIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableFormParams: [String: (any Sendable)?] = [
            "File": file?.asParameter(codableHelper: apiConfiguration.codableHelper),
        ]

        let localVariableNonNullParameters = APIHelper.rejectNil(localVariableFormParams)
        let localVariableParameters = APIHelper.convertBoolToString(localVariableNonNullParameters)

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "ChunkNumber": (wrappedValue: chunkNumber?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "multipart/form-data",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ChunkedUploadSessionResponseIntegerWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Resumes an ongoing file upload session for uploading additional chunks of data.
     
     See also:
     REST API Reference for uploadSession Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/upload-session/
     - parameter folderId: (path) The folder ID.      - parameter sessionId: (path) The upload session ID.      - parameter file: (form) The file to be uploaded as part of the multipart/form-data request.  This property represents the uploaded file content from the HTTP request form.  The file is accessed via the IFormFile interface which provides access to the file name, content type, length, and stream. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: UploadSessionResponseIntegerWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func uploadSession(folderId: Int, sessionId: String, file: URL? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> UploadSessionResponseIntegerWrapper {
        return try await uploadSessionWithRequestBuilder(folderId: folderId, sessionId: sessionId, file: file, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Resumes an ongoing file upload session for uploading additional chunks of data.
     
     See also:
     REST API Reference for uploadSession Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/upload-session/
     
     - POST /api/2.0/files/{folderId}/session/{sessionId}
     - This method allows continuing an interrupted or partially completed file upload session by uploading subsequent data chunks.  The server will validate each uploaded chunk, update the session state, and respond with the status of the current upload. Once  the total bytes uploaded match the total file size, the file upload process is finalized and related events are triggered.  If the file is newly uploaded, the server responds with a 201 Created status upon completion. If it overwrites an existing file,  versioning information is updated accordingly. The method also triggers associated webhooks and socket notifications to reflect  the updated file state.
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
     - parameter sessionId: (path) The upload session ID. 
     - parameter file: (form) The file to be uploaded as part of the multipart/form-data request.  This property represents the uploaded file content from the HTTP request form.  The file is accessed via the IFormFile interface which provides access to the file name, content type, length, and stream. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<UploadSessionResponseIntegerWrapper> 
     */
    open class func uploadSessionWithRequestBuilder(folderId: Int, sessionId: String, file: URL? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<UploadSessionResponseIntegerWrapper> {
        var localVariablePath = "/api/2.0/files/{folderId}/session/{sessionId}"
        let folderIdPreEscape = "\(APIHelper.mapValueToPathItem(folderId))"
        let folderIdPostEscape = folderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{folderId}", with: folderIdPostEscape, options: .literal, range: nil)
        let sessionIdPreEscape = "\(APIHelper.mapValueToPathItem(sessionId))"
        let sessionIdPostEscape = sessionIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{sessionId}", with: sessionIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableFormParams: [String: (any Sendable)?] = [
            "File": file?.asParameter(codableHelper: apiConfiguration.codableHelper),
        ]

        let localVariableNonNullParameters = APIHelper.rejectNil(localVariableFormParams)
        let localVariableParameters = APIHelper.convertBoolToString(localVariableNonNullParameters)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "multipart/form-data",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<UploadSessionResponseIntegerWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
