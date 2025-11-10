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
     
     See also:
     REST API Reference for addFavorites Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/add-favorites/
     
     - POST /api/2.0/files/favorites
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

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     
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
     
     See also:
     REST API Reference for bulkDownload Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/bulk-download/
     
     - PUT /api/2.0/files/fileops/bulkdownload
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
     
     See also:
     REST API Reference for checkConversionStatus Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/check-conversion-status/
     
     - GET /api/2.0/files/file/{fileId}/checkconversion
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

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     
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
     
     See also:
     REST API Reference for checkMoveOrCopyBatchItems Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/check-move-or-copy-batch-items/
     
     - GET /api/2.0/files/fileops/move
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

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     
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
     
     See also:
     REST API Reference for checkMoveOrCopyDestFolder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/check-move-or-copy-dest-folder/
     
     - GET /api/2.0/files/fileops/checkdestfolder
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

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     
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
     
     See also:
     REST API Reference for copyBatchItems Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/copy-batch-items/
     
     - PUT /api/2.0/files/fileops/copy
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

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     
     See also:
     REST API Reference for createUploadSession Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-upload-session/
     - parameter folderId: (path) The session folder ID.      - parameter sessionRequest: (body) The session parameters. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ObjectWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func createUploadSession(folderId: Int, sessionRequest: SessionRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ObjectWrapper {
        return try await createUploadSessionWithRequestBuilder(folderId: folderId, sessionRequest: sessionRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     
     See also:
     REST API Reference for createUploadSession Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-upload-session/
     
     - POST /api/2.0/files/{folderId}/upload/create_session
     - parameter folderId: (path) The session folder ID. 
     - parameter sessionRequest: (body) The session parameters. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ObjectWrapper> 
     */
    open class func createUploadSessionWithRequestBuilder(folderId: Int, sessionRequest: SessionRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ObjectWrapper> {
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

        let localVariableRequestBuilder: RequestBuilder<ObjectWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     
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
     
     See also:
     REST API Reference for deleteBatchItems Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-batch-items/
     
     - PUT /api/2.0/files/fileops/delete
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

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     
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
     
     See also:
     REST API Reference for deleteFavoritesFromBody Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-favorites-from-body/
     
     - DELETE /api/2.0/files/favorites
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

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     
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
     
     See also:
     REST API Reference for deleteFileVersions Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-file-versions/
     
     - PUT /api/2.0/files/fileops/deleteversion
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

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     
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
     
     See also:
     REST API Reference for duplicateBatchItems Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/duplicate-batch-items/
     
     - PUT /api/2.0/files/fileops/duplicate
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

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     
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
     
     See also:
     REST API Reference for emptyTrash Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/empty-trash/
     
     - PUT /api/2.0/files/fileops/emptytrash
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

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     
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
     
     See also:
     REST API Reference for getOperationStatuses Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-operation-statuses/
     
     - GET /api/2.0/files/fileops
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
     
     See also:
     REST API Reference for getOperationStatusesByType Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-operation-statuses-by-type/
     
     - GET /api/2.0/files/fileops/{operationType}
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
     
     See also:
     REST API Reference for markAsRead Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/mark-as-read/
     
     - PUT /api/2.0/files/fileops/markasread
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

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     
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
     
     See also:
     REST API Reference for moveBatchItems Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/move-batch-items/
     
     - PUT /api/2.0/files/fileops/move
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

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     
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
     
     See also:
     REST API Reference for startFileConversion Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/start-file-conversion/
     
     - PUT /api/2.0/files/file/{fileId}/checkconversion
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

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     
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
     
     See also:
     REST API Reference for terminateTasks Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/terminate-tasks/
     
     - PUT /api/2.0/files/fileops/terminate/{id}
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
     
     See also:
     REST API Reference for updateFileComment Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/update-file-comment/
     
     - PUT /api/2.0/files/file/{fileId}/comment
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

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }
}
