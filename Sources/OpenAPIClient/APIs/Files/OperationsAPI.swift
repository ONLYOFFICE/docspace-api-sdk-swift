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
     Abort an upload session
     
     See also:
     REST API Reference for abortUploadSession Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/abort-upload-session/
     - parameter sessionId: (path) The session to cancel, as returned in `id` when it was created: a 32-character hexadecimal string that  identifies the session on its own.      - parameter folderId: (path) The folder the session was opened against. It is part of the route only and is not matched against the  session, which is found by its own id. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func abortUploadSession(sessionId: String, folderId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await abortUploadSessionWithRequestBuilder(sessionId: sessionId, folderId: folderId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Abort an upload session
     
     See also:
     REST API Reference for abortUploadSession Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/abort-upload-session/
     
     - DELETE /api/2.0/files/{folderId}/session/{sessionId}
     - Cancels a chunked upload opened with `POST api/2.0/files/{folderId}/session` and discards the parts already  received, so nothing of it reaches the folder. The session is found by the id in the path alone: the folder  segment is not matched against it, and neither is the account that opened it, which makes the id the only  secret protecting the transfer. The call is destructive and is not safe to repeat, because the record is gone  afterwards: a second attempt, a session already closed by  `PUT api/2.0/files/{folderId}/session/{sessionId}/finalize` and a session that expired after twelve hours of  silence all fail rather than answer as missing. Finalizing removes the session too, so there is nothing left  to abort once the file exists. The answer carries no body. An upload that is simply abandoned needs no call at  all, since the session and its buffered parts are dropped when it expires.
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
     - parameter sessionId: (path) The session to cancel, as returned in `id` when it was created: a 32-character hexadecimal string that  identifies the session on its own. 
     - parameter folderId: (path) The folder the session was opened against. It is part of the route only and is not matched against the  session, which is found by its own id. 
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
     Abort an upload session (third-party storage)
     
     See also:
     REST API Reference for abortUploadSession Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/abort-upload-session/
     - parameter sessionId: (path) The session to cancel, as returned in `id` when it was created: a 32-character hexadecimal string that  identifies the session on its own.      - parameter folderId: (path) The folder the session was opened against. It is part of the route only and is not matched against the  session, which is found by its own id. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func abortUploadSession(sessionId: String, folderId: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await abortUploadSessionWithRequestBuilder(sessionId: sessionId, folderId: folderId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Abort an upload session (third-party storage)
     
     See also:
     REST API Reference for abortUploadSession Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/abort-upload-session/
     
     - DELETE /api/2.0/files/{folderId}/session/{sessionId}
     - Cancels a chunked upload opened with `POST api/2.0/files/{folderId}/session` and discards the parts already  received, so nothing of it reaches the folder. The session is found by the id in the path alone: the folder  segment is not matched against it, and neither is the account that opened it, which makes the id the only  secret protecting the transfer. The call is destructive and is not safe to repeat, because the record is gone  afterwards: a second attempt, a session already closed by  `PUT api/2.0/files/{folderId}/session/{sessionId}/finalize` and a session that expired after twelve hours of  silence all fail rather than answer as missing. Finalizing removes the session too, so there is nothing left  to abort once the file exists. The answer carries no body. An upload that is simply abandoned needs no call at  all, since the session and its buffered parts are dropped when it expires.
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
     - parameter sessionId: (path) The session to cancel, as returned in `id` when it was created: a 32-character hexadecimal string that  identifies the session on its own. 
     - parameter folderId: (path) The folder the session was opened against. It is part of the route only and is not matched against the  session, which is found by its own id. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func abortUploadSessionWithRequestBuilder(sessionId: String, folderId: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<Void> {
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
     - Marks the listed files and folders as favorites for the calling account. The favorite list is personal:  nothing changes for other members, and the entries stay where they are stored. Read access to each item is  enough, so a room member with view-only rights and a guest may call it. Items the caller cannot read, ids that  do not exist and encrypted files of a private room are skipped without a word, and the answer is `true` even  when nothing was marked, so read the outcome back from `GET api/2.0/files/@favorites` instead of trusting it.  Numeric ids address entries stored in the portal itself, string ids entries on a connected third-party  account, and both kinds may be sent in one request. The call is mutating but safe to repeat: an item already  marked stays listed once. An entry moved to the Trash keeps its mark and is left out of the listing until it  is restored. `returnSingleOperation` arrives with the shared body and does nothing here. Use  `DELETE api/2.0/files/favorites` to undo, or `GET api/2.0/files/favorites/{fileId}` for a single file.
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
     - Queues a background job that packs the requested files and folders into a single archive, and answers with the  caller's download operations, including the one just started. The archive is not ready when the response  arrives: poll `GET api/2.0/files/fileops` until the operation reports `finished`, then take the address of the  archive from its `url`. Items listed in `fileConvertIds` are converted to the format named there before they  are packed, while the items of `fileIds` are packed as they are. Read access to every listed item is required:  an item the caller may not read fails the whole call with 403, and an id that resolves to nothing is answered  as missing, so filter the selection beforehand. Only one download at a time is allowed per caller, and a  second call made while the first is still running is refused with 403 as well. An empty selection queues  nothing and simply answers with the operations that are already there. An anonymous caller may use the call  for the items covered by the external link they hold.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
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

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get conversion status
     
     See also:
     REST API Reference for checkConversionStatus Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/check-conversion-status/
     - parameter fileId: (path) The file whose conversion is asked about.      - parameter start: (query) Whether to start the conversion as well: `true` queues it with the default output format and no password,  `false` only reports what the portal already knows. (optional)
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
     - Reports how far the conversion of a file has got, as a list that holds one entry while the portal still knows  about that conversion and nothing once it is over. Read `progress`, which counts from 0 to 100, `error` for  the reason a conversion failed, and `file`, which carries the converted file as soon as it exists. Queue the  conversion with `PUT api/2.0/files/file/{fileId}/checkconversion` and poll this operation until the entry  reaches 100 or disappears: a finished entry is handed out once and then dropped, and an entry whose conversion  stopped is discarded a few minutes later, so an empty list means either already reported or never started  rather than an error. The same empty list is the answer for an identifier no file matches. Passing  `start=true` starts the conversion as well, with the format from the portal settings and no password, which  makes that one flag mutating; without it the operation is read-only. The caller needs read access to the file,  and anyone else is refused.
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
     - parameter fileId: (path) The file whose conversion is asked about. 
     - parameter start: (query) Whether to start the conversion as well: `true` queues it with the default output format and no password,  `false` only reports what the portal already knows. (optional)
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
     Get conversion status (third-party storage)
     
     See also:
     REST API Reference for checkConversionStatus Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/check-conversion-status/
     - parameter fileId: (path) The file whose conversion is asked about.      - parameter start: (query) Whether to start the conversion as well: `true` queues it with the default output format and no password,  `false` only reports what the portal already knows. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ConversationResultArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func checkConversionStatus(fileId: String, start: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ConversationResultArrayWrapper {
        return try await checkConversionStatusWithRequestBuilder(fileId: fileId, start: start, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get conversion status (third-party storage)
     
     See also:
     REST API Reference for checkConversionStatus Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/check-conversion-status/
     
     - GET /api/2.0/files/file/{fileId}/checkconversion
     - Reports how far the conversion of a file has got, as a list that holds one entry while the portal still knows  about that conversion and nothing once it is over. Read `progress`, which counts from 0 to 100, `error` for  the reason a conversion failed, and `file`, which carries the converted file as soon as it exists. Queue the  conversion with `PUT api/2.0/files/file/{fileId}/checkconversion` and poll this operation until the entry  reaches 100 or disappears: a finished entry is handed out once and then dropped, and an entry whose conversion  stopped is discarded a few minutes later, so an empty list means either already reported or never started  rather than an error. The same empty list is the answer for an identifier no file matches. Passing  `start=true` starts the conversion as well, with the format from the portal settings and no password, which  makes that one flag mutating; without it the operation is read-only. The caller needs read access to the file,  and anyone else is refused.
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
     - parameter fileId: (path) The file whose conversion is asked about. 
     - parameter start: (query) Whether to start the conversion as well: `true` queues it with the default output format and no password,  `false` only reports what the portal already knows. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ConversationResultArrayWrapper> 
     */
    open class func checkConversionStatusWithRequestBuilder(fileId: String, start: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ConversationResultArrayWrapper> {
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
     Check move or copy conflicts
     
     See also:
     REST API Reference for checkMoveOrCopyBatchItems Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/check-move-or-copy-batch-items/
     - parameter inDto: (query) The files and folders to move or copy, the folder they go to, and the way name clashes are settled. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileEntryBaseArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func checkMoveOrCopyBatchItems(inDto: BatchRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileEntryBaseArrayWrapper {
        return try await checkMoveOrCopyBatchItemsWithRequestBuilder(inDto: inDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Check move or copy conflicts
     
     See also:
     REST API Reference for checkMoveOrCopyBatchItems Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/check-move-or-copy-batch-items/
     
     - GET /api/2.0/files/fileops/move
     - Reports which of the requested files and folders already have a same-named entry in `destFolderId`, so that  the clash can be settled before the move or the copy is started. Nothing is moved, copied or changed by the  call, although the address is shared with `PUT api/2.0/files/fileops/move`: the answer is the part of the  request that clashes, and an empty array means the batch would go through without one. The  `conflictResolveType` of the request is not taken into account — clashing items are reported whatever it says  — and encrypted files are left out of the report. A source id that resolves to nothing is not an error and is  passed over. The caller needs create access to the destination: an archived room and a room the caller cannot  write to are refused with 403, a destination that does not exist is answered as missing, and a request without  `destFolderId` is rejected as an invalid request. To learn whether the destination accepts the files at all  use `GET api/2.0/files/fileops/checkdestfolder`.
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
     - parameter inDto: (query) The files and folders to move or copy, the folder they go to, and the way name clashes are settled. (optional)
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
     Check the destination folder
     
     See also:
     REST API Reference for checkMoveOrCopyDestFolder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/check-move-or-copy-dest-folder/
     - parameter inDto: (query) The files and folders to move or copy, the folder they go to, and the way name clashes are settled. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: CheckDestFolderWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func checkMoveOrCopyDestFolder(inDto: BatchRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> CheckDestFolderWrapper {
        return try await checkMoveOrCopyDestFolderWithRequestBuilder(inDto: inDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Check the destination folder
     
     See also:
     REST API Reference for checkMoveOrCopyDestFolder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/check-move-or-copy-dest-folder/
     
     - GET /api/2.0/files/fileops/checkdestfolder
     - Reports whether the destination folder accepts the listed files, before a move or a copy is started. Only  `fileIds` and `destFolderId` are read from the request: `result` says whether all of the files are accepted,  only some of them or none, and `files` names the ones that are. The check is about what the destination allows  to be stored in it rather than about name clashes — everywhere except a form-filling room every file is  accepted, while a form-filling room accepts only PDF forms, so a text document offered to one comes back as  none accepted. The caller needs create access to the destination, so a room the caller cannot write to and an  archived room are refused with 403, a destination that does not exist is answered as missing, and a request  without `destFolderId` is rejected as an invalid request. Folder ids and the copying options of the request  play no part here. The call changes nothing; for same-named entries at the destination use  `GET api/2.0/files/fileops/move`.
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
     - parameter inDto: (query) The files and folders to move or copy, the folder they go to, and the way name clashes are settled. (optional)
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
     Copy files and folders
     
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
     Copy files and folders
     
     See also:
     REST API Reference for copyBatchItems Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/copy-batch-items/
     
     - PUT /api/2.0/files/fileops/copy
     - Queues a background job that copies the requested files and folders into `destFolderId`, leaving the originals  where they are, and answers with the caller's move and copy operations, including the one just started. Poll  `GET api/2.0/files/fileops` until the operation reports `finished`; its `files` and `folders` then name what  was produced. Before starting, `GET api/2.0/files/fileops/move` reports which items already have a same-named  entry at the destination and `conflictResolveType` decides what happens to them, while  `GET api/2.0/files/fileops/checkdestfolder` reports whether the destination accepts the files at all. The  caller needs create access to the destination — room manager or content-creator rights inside a room — and  read access to every source item; anything less is refused with 403. With `content=true` each listed folder is  replaced by its own files and subfolders, so the folder itself is not recreated at the destination. An empty  selection queues nothing and answers with the operations that are already there. To remove the originals  instead use `PUT api/2.0/files/fileops/move`.
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
     - parameter folderId: (path) The folder that receives the file; take the id from a listing such as `GET api/2.0/files/@root`. A room or an  ordinary folder inside one is accepted, a section root is not.      - parameter sessionRequest: (body) The file the session is opened for, and how a clash with an existing name is settled. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ChunkedUploadSessionResponseWrapperWrapper
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func createUploadSession(folderId: Int, sessionRequest: SessionRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ChunkedUploadSessionResponseWrapperWrapper {
        return try await createUploadSessionWithRequestBuilder(folderId: folderId, sessionRequest: sessionRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Chunked upload
     
     See also:
     REST API Reference for createUploadSession Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-upload-session/
     
     - POST /api/2.0/files/{folderId}/upload/create_session
     - Deprecated in favour of `POST api/2.0/files/{folderId}/session`, which opens the same session and returns it  without the success envelope used here; new callers should go there. Reserves a chunked upload of a file in  the folder named by the path: the title comes from `fileName`, the declared payload size from `fileSize`, and  the answer carries the session id every later call quotes, the address of the standalone chunk handler, the  moment an idle session is dropped and the reserved byte count. No content is stored yet. Send the payload as  multipart parts to `POST api/2.0/files/{folderId}/session/{sessionId}/upload`, keeping each part within  `chunkUploadSize` from `GET api/2.0/files/settings`, then close the session with  `PUT api/2.0/files/{folderId}/session/{sessionId}/finalize`. The caller needs the right to add content to the  target folder, which room managers and content creators have and readers, editors and guests do not: they get  403, as does a section root such as Rooms or Archive, while an unknown folder is answered as missing. A  payload above the portal limit for chunked uploads is refused before the session exists.
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
     - parameter folderId: (path) The folder that receives the file; take the id from a listing such as `GET api/2.0/files/@root`. A room or an  ordinary folder inside one is accepted, a section root is not. 
     - parameter sessionRequest: (body) The file the session is opened for, and how a clash with an existing name is settled. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ChunkedUploadSessionResponseWrapperWrapper> 
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    open class func createUploadSessionWithRequestBuilder(folderId: Int, sessionRequest: SessionRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ChunkedUploadSessionResponseWrapperWrapper> {
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

        let localVariableRequestBuilder: RequestBuilder<ChunkedUploadSessionResponseWrapperWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Chunked upload (third-party storage)
     
     See also:
     REST API Reference for createUploadSession Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-upload-session/
     - parameter folderId: (path) The folder that receives the file; take the id from a listing such as `GET api/2.0/files/@root`. A room or an  ordinary folder inside one is accepted, a section root is not.      - parameter sessionRequest: (body) The file the session is opened for, and how a clash with an existing name is settled. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ThirdPartyChunkedUploadSessionResponseWrapperWrapper
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func createUploadSession(folderId: String, sessionRequest: SessionRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ThirdPartyChunkedUploadSessionResponseWrapperWrapper {
        return try await createUploadSessionWithRequestBuilder(folderId: folderId, sessionRequest: sessionRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Chunked upload (third-party storage)
     
     See also:
     REST API Reference for createUploadSession Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-upload-session/
     
     - POST /api/2.0/files/{folderId}/upload/create_session
     - Deprecated in favour of `POST api/2.0/files/{folderId}/session`, which opens the same session and returns it  without the success envelope used here; new callers should go there. Reserves a chunked upload of a file in  the folder named by the path: the title comes from `fileName`, the declared payload size from `fileSize`, and  the answer carries the session id every later call quotes, the address of the standalone chunk handler, the  moment an idle session is dropped and the reserved byte count. No content is stored yet. Send the payload as  multipart parts to `POST api/2.0/files/{folderId}/session/{sessionId}/upload`, keeping each part within  `chunkUploadSize` from `GET api/2.0/files/settings`, then close the session with  `PUT api/2.0/files/{folderId}/session/{sessionId}/finalize`. The caller needs the right to add content to the  target folder, which room managers and content creators have and readers, editors and guests do not: they get  403, as does a section root such as Rooms or Archive, while an unknown folder is answered as missing. A  payload above the portal limit for chunked uploads is refused before the session exists.
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
     - parameter folderId: (path) The folder that receives the file; take the id from a listing such as `GET api/2.0/files/@root`. A room or an  ordinary folder inside one is accepted, a section root is not. 
     - parameter sessionRequest: (body) The file the session is opened for, and how a clash with an existing name is settled. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ThirdPartyChunkedUploadSessionResponseWrapperWrapper> 
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    open class func createUploadSessionWithRequestBuilder(folderId: String, sessionRequest: SessionRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ThirdPartyChunkedUploadSessionResponseWrapperWrapper> {
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

        let localVariableRequestBuilder: RequestBuilder<ThirdPartyChunkedUploadSessionResponseWrapperWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Create an upload session
     
     See also:
     REST API Reference for createUploadSessionInFolder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-upload-session-in-folder/
     - parameter folderId: (path) The folder that receives the file; take the id from a listing such as `GET api/2.0/files/@root`. A room or an  ordinary folder inside one is accepted, a section root is not.      - parameter sessionRequest: (body) The file the session is opened for, and how a clash with an existing name is settled. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ChunkedUploadSessionResponseResponseWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func createUploadSessionInFolder(folderId: Int, sessionRequest: SessionRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ChunkedUploadSessionResponseResponseWrapper {
        return try await createUploadSessionInFolderWithRequestBuilder(folderId: folderId, sessionRequest: sessionRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Create an upload session
     
     See also:
     REST API Reference for createUploadSessionInFolder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-upload-session-in-folder/
     
     - POST /api/2.0/files/{folderId}/session
     - Opens a chunked upload session for a file in the folder named by the path and returns the session itself,  which is the difference from the deprecated `POST api/2.0/files/{folderId}/upload/create_session` and its  success envelope. The answer gives `id`, quoted by every later call, `location` for the standalone chunk  handler used by clients that bypass this API, `expired`, and `bytes_total` echoing the reserved size. Whether  parts are really needed follows from `fileSize`: below `chunkUploadSize` from `GET api/2.0/files/settings` the  whole payload goes in one `POST api/2.0/files/{folderId}/session/{sessionId}`, which stores the file and  answers 201, and above it the parts go one by one to  `POST api/2.0/files/{folderId}/session/{sessionId}/upload` and the file appears only after  `PUT api/2.0/files/{folderId}/session/{sessionId}/finalize`. The caller must be allowed to add content to the  folder, so readers, editors and guests are refused, a section root is refused as well, and an unknown folder  is answered as missing. Nothing is written until the parts arrive, and an abandoned session disappears twelve  hours later.
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
     - parameter folderId: (path) The folder that receives the file; take the id from a listing such as `GET api/2.0/files/@root`. A room or an  ordinary folder inside one is accepted, a section root is not. 
     - parameter sessionRequest: (body) The file the session is opened for, and how a clash with an existing name is settled. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ChunkedUploadSessionResponseResponseWrapper> 
     */
    open class func createUploadSessionInFolderWithRequestBuilder(folderId: Int, sessionRequest: SessionRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ChunkedUploadSessionResponseResponseWrapper> {
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

        let localVariableRequestBuilder: RequestBuilder<ChunkedUploadSessionResponseResponseWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Create an upload session (third-party storage)
     
     See also:
     REST API Reference for createUploadSessionInFolder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-upload-session-in-folder/
     - parameter folderId: (path) The folder that receives the file; take the id from a listing such as `GET api/2.0/files/@root`. A room or an  ordinary folder inside one is accepted, a section root is not.      - parameter sessionRequest: (body) The file the session is opened for, and how a clash with an existing name is settled. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ThirdPartyChunkedUploadSessionResponseResponseWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func createUploadSessionInFolder(folderId: String, sessionRequest: SessionRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ThirdPartyChunkedUploadSessionResponseResponseWrapper {
        return try await createUploadSessionInFolderWithRequestBuilder(folderId: folderId, sessionRequest: sessionRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Create an upload session (third-party storage)
     
     See also:
     REST API Reference for createUploadSessionInFolder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-upload-session-in-folder/
     
     - POST /api/2.0/files/{folderId}/session
     - Opens a chunked upload session for a file in the folder named by the path and returns the session itself,  which is the difference from the deprecated `POST api/2.0/files/{folderId}/upload/create_session` and its  success envelope. The answer gives `id`, quoted by every later call, `location` for the standalone chunk  handler used by clients that bypass this API, `expired`, and `bytes_total` echoing the reserved size. Whether  parts are really needed follows from `fileSize`: below `chunkUploadSize` from `GET api/2.0/files/settings` the  whole payload goes in one `POST api/2.0/files/{folderId}/session/{sessionId}`, which stores the file and  answers 201, and above it the parts go one by one to  `POST api/2.0/files/{folderId}/session/{sessionId}/upload` and the file appears only after  `PUT api/2.0/files/{folderId}/session/{sessionId}/finalize`. The caller must be allowed to add content to the  folder, so readers, editors and guests are refused, a section root is refused as well, and an unknown folder  is answered as missing. Nothing is written until the parts arrive, and an abandoned session disappears twelve  hours later.
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
     - parameter folderId: (path) The folder that receives the file; take the id from a listing such as `GET api/2.0/files/@root`. A room or an  ordinary folder inside one is accepted, a section root is not. 
     - parameter sessionRequest: (body) The file the session is opened for, and how a clash with an existing name is settled. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ThirdPartyChunkedUploadSessionResponseResponseWrapper> 
     */
    open class func createUploadSessionInFolderWithRequestBuilder(folderId: String, sessionRequest: SessionRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ThirdPartyChunkedUploadSessionResponseResponseWrapper> {
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

        let localVariableRequestBuilder: RequestBuilder<ThirdPartyChunkedUploadSessionResponseResponseWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

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
     - Queues a background job that deletes the requested files and folders, and answers with the caller's delete  operations, including the one just started. Poll `GET api/2.0/files/fileops` until the operation reports  `finished`, and read its `error`: a failure on a single item is reported there rather than as a status code.  With `immediately=false` the items are moved to the caller's Trash and can be restored from it, while  `immediately=true` removes them at once and for good; deleting a folder takes everything inside it either way.  The call is destructive and it is not a no-op on repetition — a second call with the same ids deletes whatever  has been restored in the meantime. Access is checked before the job is queued: deleting from a room requires  room manager or content-creator rights, editing or read rights are refused with 403, and an id that resolves  to nothing is answered as missing. An empty selection queues nothing and answers with the operations that are  already there. To clear the Trash itself use `PUT api/2.0/files/fileops/emptytrash`.
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
     Delete favorite files and folders
     
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
     Delete favorite files and folders
     
     See also:
     REST API Reference for deleteFavoritesFromBody Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-favorites-from-body/
     
     - DELETE /api/2.0/files/favorites
     - Removes the favorite mark from the listed files and folders for the calling account. Nothing is deleted from  storage: the entries keep their place, their content and their sharing, and only disappear from  `GET api/2.0/files/@favorites`; to delete the entries themselves call `PUT api/2.0/files/fileops/delete`  instead. Marks of other members are untouched, and read access to each item is enough to call it. The ids go  into the JSON body documented here; the same route also accepts them as repeated `fileIds` and `folderIds`  query parameters, but only in a request that carries no JSON body at all. Numeric ids address entries stored  in the portal itself, string ids entries on a connected third-party account. The answer is `true` whenever the  request was understood, which an empty request, an id that does not exist and an item that was never marked  all achieve, so it does not report how many marks were dropped. `returnSingleOperation` arrives with the  shared body and does nothing here. Repeating the call is safe. Use `POST api/2.0/files/favorites` to mark  entries again.
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
     - returns: FileOperationArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func deleteFileVersions(deleteVersionBatchRequestDto: DeleteVersionBatchRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileOperationArrayWrapper {
        return try await deleteFileVersionsWithRequestBuilder(deleteVersionBatchRequestDto: deleteVersionBatchRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Delete file versions
     
     See also:
     REST API Reference for deleteFileVersions Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-file-versions/
     
     - PUT /api/2.0/files/fileops/deleteversion
     - Queues a background job that removes the listed versions from the history of one file, and answers with the  caller's delete operations, including the one just started. Poll `GET api/2.0/files/fileops` until the  operation reports `finished`; a failure met while the job runs is reported in its `error` rather than as a  status code. Removal is permanent — deleted versions do not travel through Trash and cannot be restored, while  the file itself stays in place with the versions that are left. Send the numbers that  `GET api/2.0/files/file/{fileId}/history` reports, and send at least one: an empty list is not an empty  request, it deletes the whole file instead. The number of the current version is refused before anything is  queued, while numbers that no longer exist are passed over without a complaint. The caller needs the rights  that deleting the file itself would need, so a member with read-only rights is refused, as are a file in an  archived room and a file that is already in Trash, and a file that does not exist is answered as missing. To  delete the file itself use `PUT api/2.0/files/fileops/delete`.
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
     - parameter deleteVersionBatchRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileOperationArrayWrapper> 
     */
    open class func deleteFileVersionsWithRequestBuilder(deleteVersionBatchRequestDto: DeleteVersionBatchRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileOperationArrayWrapper> {
        let localVariablePath = "/api/2.0/files/fileops/deleteversion"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: deleteVersionBatchRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileOperationArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

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
     - Queues a background job that copies each requested file and folder next to itself, into the folder where it  already is, and answers with the caller's duplicate operations, including the one just started. Poll  `GET api/2.0/files/fileops` until the operation reports `finished`. The copies keep the name of the original  with a numeric suffix, so nothing is overwritten and every repetition adds one more copy; duplicating a folder  duplicates its content as well. No destination is taken — to place a copy somewhere else use  `PUT api/2.0/files/fileops/copy`. The caller needs the rights that creating an item in that folder would need,  which inside a room means room manager or content-creator rights: read or editing rights, and an item the  caller has no access to at all, are refused with 403. An empty selection queues nothing and answers with the  operations that are already there.
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
     * enum for parameter folderType
     */
    public enum FolderType_emptyTrash: String, Sendable, CaseIterable {
        case DEFAULT = 0
        case COMMON = 1
        case BUNCH = 2
        case TRASH = 3
        case USER = 5
        case SHARE = 6
        case Projects = 8
        case Favorites = 10
        case Recent = 11
        case Templates = 12
        case Privacy = 13
        case VirtualRooms = 14
        case FillingFormsRoom = 15
        case EditingRoom = 16
        case CustomRoom = 19
        case Archive = 20
        case ThirdpartyBackup = 21
        case PublicRoom = 22
        case ReadyFormFolder = 25
        case InProcessFormFolder = 26
        case FormFillingFolderDone = 27
        case FormFillingFolderInProgress = 28
        case VirtualDataRoom = 29
        case RoomTemplates = 30
        case AiRoom = 31
        case Knowledge = 32
        case ResultStorage = 33
        case AiAgents = 34
        case DefaultTemplates = 35
        case Forms = 36
    }

    /**
     Empty the Trash folder
     
     See also:
     REST API Reference for emptyTrash Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/empty-trash/
     - parameter single: (query) Which operations the answer carries: `true` returns the operation this call started and nothing else, `false`  returns every delete operation that the caller has running or unread. (optional)     - parameter folderType: (query) Limits the sweep to the items whose original location was inside a section or a room of one of the named  types, leaving the rest of the Trash untouched; without the parameter the whole Trash is emptied. `5` covers  what was deleted from personal documents, `14` what was deleted from rooms. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileOperationArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func emptyTrash(single: Bool? = nil, folderType: [FolderType_emptyTrash]? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileOperationArrayWrapper {
        return try await emptyTrashWithRequestBuilder(single: single, folderType: folderType, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Empty the Trash folder
     
     See also:
     REST API Reference for emptyTrash Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/empty-trash/
     
     - PUT /api/2.0/files/fileops/emptytrash
     - Queues a background job that permanently removes the content of the caller's own Trash, and answers with the  caller's delete operations, including the one just started. Poll `GET api/2.0/files/fileops` until the  operation reports `finished`. Every authenticated account may empty its own Trash and only its own: no  per-item access check takes place because nothing outside the caller's Trash is touched. With `folderType` the  sweep is narrowed to the items that were originally stored in sections and rooms of the named types, so  clearing what came from personal documents leaves what came from rooms untouched; without the parameter the  whole Trash is emptied. What is removed here cannot be restored afterwards, which is the difference from  `PUT api/2.0/files/fileops/delete`, where `immediately=false` puts items into Trash in the first place.  Calling it on an already empty Trash queues nothing and answers with the operations that are already there.
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
     - parameter single: (query) Which operations the answer carries: `true` returns the operation this call started and nothing else, `false`  returns every delete operation that the caller has running or unread. (optional)
     - parameter folderType: (query) Limits the sweep to the items whose original location was inside a section or a room of one of the named  types, leaving the rest of the Trash untouched; without the parameter the whole Trash is emptied. `5` covers  what was deleted from personal documents, `14` what was deleted from rooms. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileOperationArrayWrapper> 
     */
    open class func emptyTrashWithRequestBuilder(single: Bool? = nil, folderType: [FolderType_emptyTrash]? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileOperationArrayWrapper> {
        let localVariablePath = "/api/2.0/files/fileops/emptytrash"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "Single": (wrappedValue: single?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "folderType": (wrappedValue: folderType?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
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
     - parameter folderId: (path) The folder the session was opened against. It is part of the route only and is not matched against the  session, which is found by its own id.      - parameter sessionId: (path) The session to assemble, as returned in `id` when it was created: a 32-character hexadecimal string that  identifies the session on its own. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: UploadSessionResponseWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func finalizeSession(folderId: Int, sessionId: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> UploadSessionResponseWrapper {
        return try await finalizeSessionWithRequestBuilder(folderId: folderId, sessionId: sessionId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Finalize an upload session
     
     See also:
     REST API Reference for finalizeSession Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/finalize-session/
     
     - PUT /api/2.0/files/{folderId}/session/{sessionId}/finalize
     - Assembles the parts received so far into the file the session was opened for and closes the session. What  comes out depends on how the session started: one opened against an existing file through  `POST api/2.0/files/file/{fileId}/edit_session` replaces that content in place and keeps the version number,  while one opened against a folder either creates the file or, when a file of the same name was taken over,  stores the content as its next version. A form loses its filling state on the way in. The answer arrives with  201 and carries the identifiers of the file together with the file itself. The call ends the session: the  record and the buffered parts are removed, so it cannot be repeated and there is nothing left to abort  afterwards. Running it before all the declared bytes have arrived assembles whatever is there, so read the  progress from the chunk calls first. An unknown, already closed or expired session id fails instead of  answering as missing.
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
     - parameter folderId: (path) The folder the session was opened against. It is part of the route only and is not matched against the  session, which is found by its own id. 
     - parameter sessionId: (path) The session to assemble, as returned in `id` when it was created: a 32-character hexadecimal string that  identifies the session on its own. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<UploadSessionResponseWrapper> 
     */
    open class func finalizeSessionWithRequestBuilder(folderId: Int, sessionId: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<UploadSessionResponseWrapper> {
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

        let localVariableRequestBuilder: RequestBuilder<UploadSessionResponseWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Finalize an upload session (third-party storage)
     
     See also:
     REST API Reference for finalizeSession Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/finalize-session/
     - parameter folderId: (path) The folder the session was opened against. It is part of the route only and is not matched against the  session, which is found by its own id.      - parameter sessionId: (path) The session to assemble, as returned in `id` when it was created: a 32-character hexadecimal string that  identifies the session on its own. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ThirdPartyUploadSessionResponseWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func finalizeSession(folderId: String, sessionId: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ThirdPartyUploadSessionResponseWrapper {
        return try await finalizeSessionWithRequestBuilder(folderId: folderId, sessionId: sessionId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Finalize an upload session (third-party storage)
     
     See also:
     REST API Reference for finalizeSession Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/finalize-session/
     
     - PUT /api/2.0/files/{folderId}/session/{sessionId}/finalize
     - Assembles the parts received so far into the file the session was opened for and closes the session. What  comes out depends on how the session started: one opened against an existing file through  `POST api/2.0/files/file/{fileId}/edit_session` replaces that content in place and keeps the version number,  while one opened against a folder either creates the file or, when a file of the same name was taken over,  stores the content as its next version. A form loses its filling state on the way in. The answer arrives with  201 and carries the identifiers of the file together with the file itself. The call ends the session: the  record and the buffered parts are removed, so it cannot be repeated and there is nothing left to abort  afterwards. Running it before all the declared bytes have arrived assembles whatever is there, so read the  progress from the chunk calls first. An unknown, already closed or expired session id fails instead of  answering as missing.
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
     - parameter folderId: (path) The folder the session was opened against. It is part of the route only and is not matched against the  session, which is found by its own id. 
     - parameter sessionId: (path) The session to assemble, as returned in `id` when it was created: a 32-character hexadecimal string that  identifies the session on its own. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ThirdPartyUploadSessionResponseWrapper> 
     */
    open class func finalizeSessionWithRequestBuilder(folderId: String, sessionId: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ThirdPartyUploadSessionResponseWrapper> {
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

        let localVariableRequestBuilder: RequestBuilder<ThirdPartyUploadSessionResponseWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get active file operations
     
     See also:
     REST API Reference for getOperationStatuses Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-operation-statuses/
     - parameter id: (query) The operation to report on, as returned in `id` when it was started; without it every operation of the caller  is reported. An id that is not among the caller's operations gives an empty answer rather than an error. (optional)
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
     - Returns the background file operations of the caller that are still running or whose finished result has not  been read yet, grouped by kind: duplications first, then moves and copies, deletions, downloads and  mark-as-read. This is the polling target for every operation in this section — an operation appears here as  soon as it is queued and carries `progress` from 0 to 100, `finished`, the `error` of a failed item and, for a  download, the address of the archive in `url`. A record is dropped once its finished state has been handed  out, so a completed operation is reported once and an empty array means there is nothing left to report rather  than that the work failed. Pass `id` to follow a single operation; an id that is not among the caller's  operations gives an empty array. Operations are private to the account that started them, an anonymous caller  being scoped to the session of the external link. The call changes nothing. To follow one kind only use  `GET api/2.0/files/fileops/{operationType}`.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter id: (query) The operation to report on, as returned in `id` when it was started; without it every operation of the caller  is reported. An id that is not among the caller's operations gives an empty answer rather than an error. (optional)
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

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get file operations by type
     
     See also:
     REST API Reference for getOperationStatusesByType Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-operation-statuses-by-type/
     - parameter operationType: (path) The kind of operation the answer is limited to. Only the kinds that have a queue of their own ever carry  records — a copy, a deletion, a download, a mark-as-read and a duplication — and moves cannot be read through  this route at all, because its address belongs to another operation.      - parameter id: (query) The operation to report on, as returned in `id` when it was started; without it every operation of the caller  is reported. An id that is not among the caller's operations gives an empty answer rather than an error. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileOperationArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getOperationStatusesByType(operationType: FileOperationType, id: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileOperationArrayWrapper {
        return try await getOperationStatusesByTypeWithRequestBuilder(operationType: operationType, id: id, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get file operations by type
     
     See also:
     REST API Reference for getOperationStatusesByType Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-operation-statuses-by-type/
     
     - GET /api/2.0/files/fileops/{operationType}
     - Returns the background file operations of the caller that are of one kind, named by the number in the route:  `1` for a copy, `2` for a deletion, `3` for a download, `4` for a mark-as-read and `7` for a duplication. The  answer carries the same records as `GET api/2.0/files/fileops`, with the same rule that a finished operation  is reported once and then dropped, and `id` narrows it further to a single operation. Moves, kind `0`, cannot  be read through this route: the address `api/2.0/files/fileops/move` belongs to another operation, so read  moves from `GET api/2.0/files/fileops` and pick the records whose `operation` is `0`. A kind that has no queue  of its own — `5` for an import, `6` for a conversion — is accepted and answers with an empty array, while a  number outside the operation type is rejected as an invalid request. The call changes nothing and never shows  another account's operations.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter operationType: (path) The kind of operation the answer is limited to. Only the kinds that have a queue of their own ever carry  records — a copy, a deletion, a download, a mark-as-read and a duplication — and moves cannot be read through  this route at all, because its address belongs to another operation. 
     - parameter id: (query) The operation to report on, as returned in `id` when it was started; without it every operation of the caller  is reported. An id that is not among the caller's operations gives an empty answer rather than an error. (optional)
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

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Mark files and folders as read
     
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
     Mark files and folders as read
     
     See also:
     REST API Reference for markAsRead Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/mark-as-read/
     
     - PUT /api/2.0/files/fileops/markasread
     - Queues a background job that clears the new-item badge from the requested files and folders for the calling  account, and answers with the caller's mark-as-read operations, including the one just started. Poll  `GET api/2.0/files/fileops` until the operation reports `finished`. Marking a folder clears the badges of  everything inside it as well. Items the caller cannot read are passed over in silence rather than refused, so  the call succeeds even when the whole selection is inaccessible, and an empty selection queues nothing and  answers with the operations that are already there. Repeating the call on items that are already read changes  nothing, and nothing is opened, moved or modified by it — only the caller's own badges are affected, while  other members keep theirs. To see what is currently marked as new use `GET api/2.0/files/{folderId}/news` for  one folder and `GET api/2.0/files/rooms/news` for the rooms of the caller.
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
     Move files and folders
     
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
     Move files and folders
     
     See also:
     REST API Reference for moveBatchItems Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/move-batch-items/
     
     - PUT /api/2.0/files/fileops/move
     - Queues a background job that moves the requested files and folders into `destFolderId`, removing them from  where they were, and answers with the caller's move and copy operations, including the one just started. Poll  `GET api/2.0/files/fileops` until the operation reports `finished`. Before starting,  `GET api/2.0/files/fileops/move` reports which items already have a same-named entry at the destination and  `conflictResolveType` decides what happens to them, while `GET api/2.0/files/fileops/checkdestfolder` reports  whether the destination accepts the files at all. The caller needs create access to the destination and the  right to take the items out of their source, which is why room members with editing or review rights are  refused with 403, and why content-creator rights inside a room allow copying an item out of it but not moving  it. A room cannot be moved this way — use `PUT api/2.0/files/rooms/{id}/archive` instead. To keep the  originals use `PUT api/2.0/files/fileops/copy`. An empty selection queues nothing.
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
     - parameter fileId: (path) The file to convert.      - parameter checkConversionRequestDto: (body) The parameters of the conversion. The whole body may be omitted, in which case the defaults of the portal  apply. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ConversationResultArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func startFileConversion(fileId: Int, checkConversionRequestDto: CheckConversionRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ConversationResultArrayWrapper {
        return try await startFileConversionWithRequestBuilder(fileId: fileId, checkConversionRequestDto: checkConversionRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Start file conversion
     
     See also:
     REST API Reference for startFileConversion Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/start-file-conversion/
     
     - PUT /api/2.0/files/file/{fileId}/checkconversion
     - Queues the conversion of a file into the portal's own editable format and answers with the conversion entry  the caller is to poll. The whole body may be omitted, in which case the defaults apply. `outputType` names the  target format and, left empty, the portal's default for that kind of document is used; `password` unlocks a  protected source file; `version` converts an older version instead of the current one. `createNewIfExist`  decides where the result goes: with `true` a new file is created beside the source, while with `false`, the  default, the converted file that already exists is replaced. `sync=true` converts inside the request and  answers with the finished result instead of a queue entry, which is only sensible for small documents.  Otherwise poll `GET api/2.0/files/file/{fileId}/checkconversion` until `progress` reaches 100 and take the  converted file from `file`. Only formats the portal has to convert are accepted; anything already editable,  and anything it cannot convert, is answered without work being queued or rejected as an invalid request. The  caller needs read access to the file. The call is mutating and not idempotent.
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
     - parameter fileId: (path) The file to convert. 
     - parameter checkConversionRequestDto: (body) The parameters of the conversion. The whole body may be omitted, in which case the defaults of the portal  apply. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ConversationResultArrayWrapper> 
     */
    open class func startFileConversionWithRequestBuilder(fileId: Int, checkConversionRequestDto: CheckConversionRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ConversationResultArrayWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/checkconversion"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: checkConversionRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ConversationResultArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Start file conversion (third-party storage)
     
     See also:
     REST API Reference for startFileConversion Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/start-file-conversion/
     - parameter fileId: (path) The file to convert.      - parameter thirdPartyCheckConversionRequestDto: (body) The parameters of the conversion. The whole body may be omitted, in which case the defaults of the portal  apply. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ConversationResultArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func startFileConversion(fileId: String, thirdPartyCheckConversionRequestDto: ThirdPartyCheckConversionRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ConversationResultArrayWrapper {
        return try await startFileConversionWithRequestBuilder(fileId: fileId, thirdPartyCheckConversionRequestDto: thirdPartyCheckConversionRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Start file conversion (third-party storage)
     
     See also:
     REST API Reference for startFileConversion Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/start-file-conversion/
     
     - PUT /api/2.0/files/file/{fileId}/checkconversion
     - Queues the conversion of a file into the portal's own editable format and answers with the conversion entry  the caller is to poll. The whole body may be omitted, in which case the defaults apply. `outputType` names the  target format and, left empty, the portal's default for that kind of document is used; `password` unlocks a  protected source file; `version` converts an older version instead of the current one. `createNewIfExist`  decides where the result goes: with `true` a new file is created beside the source, while with `false`, the  default, the converted file that already exists is replaced. `sync=true` converts inside the request and  answers with the finished result instead of a queue entry, which is only sensible for small documents.  Otherwise poll `GET api/2.0/files/file/{fileId}/checkconversion` until `progress` reaches 100 and take the  converted file from `file`. Only formats the portal has to convert are accepted; anything already editable,  and anything it cannot convert, is answered without work being queued or rejected as an invalid request. The  caller needs read access to the file. The call is mutating and not idempotent.
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
     - parameter fileId: (path) The file to convert. 
     - parameter thirdPartyCheckConversionRequestDto: (body) The parameters of the conversion. The whole body may be omitted, in which case the defaults of the portal  apply. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ConversationResultArrayWrapper> 
     */
    open class func startFileConversionWithRequestBuilder(fileId: String, thirdPartyCheckConversionRequestDto: ThirdPartyCheckConversionRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ConversationResultArrayWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/checkconversion"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: thirdPartyCheckConversionRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ConversationResultArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Cancel file operations
     
     See also:
     REST API Reference for terminateTasks Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/terminate-tasks/
     - parameter id: (path) The operation to cancel, as returned in `id` when it was started. A call that leaves the route segment out  cancels every operation of the caller, and an id that is not among their operations cancels nothing without  being an error. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileOperationArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func terminateTasks(id: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileOperationArrayWrapper {
        return try await terminateTasksWithRequestBuilder(id: id, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Cancel file operations
     
     See also:
     REST API Reference for terminateTasks Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/terminate-tasks/
     
     - PUT /api/2.0/files/fileops/terminate/{id}
     - Cancels a background file operation of the caller and answers with the operations that are left. Pass the `id`  that was reported when the operation started to stop that one; a call that leaves the trailing route segment  out stops every operation the caller has running, of every kind. Cancelling stops the job where it stands and  does not undo it: what has already been copied, moved or deleted stays that way, so a cancelled batch can  leave part of itself at the destination and part of it at the source, and the result has to be read back  rather than assumed. The cancelled record is dropped from `GET api/2.0/files/fileops` at once, which is why  the answer here is usually empty. An id that is not among the caller's operations cancels nothing and is not  an error. Operations are private to the account that started them, an anonymous caller being scoped to the  session of the external link, so the call can never reach an operation of anyone else.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter id: (path) The operation to cancel, as returned in `id` when it was started. A call that leaves the route segment out  cancels every operation of the caller, and an id that is not among their operations cancels nothing without  being an error. 
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

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Update a comment
     
     See also:
     REST API Reference for updateFileComment Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/update-file-comment/
     - parameter fileId: (path) The file whose version comment is replaced.      - parameter updateComment: (body) The version and the comment to store on it. 
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
     - Replaces the comment stored on one version of a file - the note that explains what changed in it - and answers  with the comment as it was stored, which is the text cut to the length the portal keeps. `version` names the  version and has to be an existing one: a version that does not exist is rejected as an invalid request, while  a file that does not exist at all is answered as not found. Sending an empty comment clears the note. The  caller needs the right to edit the history of the file, which the room admin, a DocSpace admin acting as room  manager and a member with content-creator rights have; a member with editing access to somebody else's file,  read-only access, a guest and an anonymous caller are all refused. A file that is locked by somebody else or  lies in Trash is refused as well. The call is mutating and idempotent - repeating it with the same text leaves  the same comment. The comments of all versions come back with `GET api/2.0/files/file/{fileId}/edit/history`.
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
     - parameter fileId: (path) The file whose version comment is replaced. 
     - parameter updateComment: (body) The version and the comment to store on it. 
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
     Update a comment (third-party storage)
     
     See also:
     REST API Reference for updateFileComment Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/update-file-comment/
     - parameter fileId: (path) The file whose version comment is replaced.      - parameter updateComment: (body) The version and the comment to store on it. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: StringWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func updateFileComment(fileId: String, updateComment: UpdateComment, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> StringWrapper {
        return try await updateFileCommentWithRequestBuilder(fileId: fileId, updateComment: updateComment, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Update a comment (third-party storage)
     
     See also:
     REST API Reference for updateFileComment Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/update-file-comment/
     
     - PUT /api/2.0/files/file/{fileId}/comment
     - Replaces the comment stored on one version of a file - the note that explains what changed in it - and answers  with the comment as it was stored, which is the text cut to the length the portal keeps. `version` names the  version and has to be an existing one: a version that does not exist is rejected as an invalid request, while  a file that does not exist at all is answered as not found. Sending an empty comment clears the note. The  caller needs the right to edit the history of the file, which the room admin, a DocSpace admin acting as room  manager and a member with content-creator rights have; a member with editing access to somebody else's file,  read-only access, a guest and an anonymous caller are all refused. A file that is locked by somebody else or  lies in Trash is refused as well. The call is mutating and idempotent - repeating it with the same text leaves  the same comment. The comments of all versions come back with `GET api/2.0/files/file/{fileId}/edit/history`.
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
     - parameter fileId: (path) The file whose version comment is replaced. 
     - parameter updateComment: (body) The version and the comment to store on it. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<StringWrapper> 
     */
    open class func updateFileCommentWithRequestBuilder(fileId: String, updateComment: UpdateComment, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<StringWrapper> {
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
     Upload a numbered chunk
     
     See also:
     REST API Reference for uploadAsyncSession Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/upload-async-session/
     - parameter folderId: (path) The folder the session was opened against. It is part of the route only and is not matched against the  session, which is found by its own id.      - parameter sessionId: (path) The session this part belongs to, as returned in `id` when it was created; a 32-character hexadecimal string.      - parameter chunkNumber: (query) The position of this part in the file, counted from 1. Sending the same number again replaces that part  instead of adding one, which is how a failed part is retried; leaving the number out makes the server count  the parts itself. (optional)     - parameter file: (form) The part of the file to store, sent as the multipart field of the same name. It is kept under the number given  beside it, and a part larger than the portal chunk size is refused. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ChunkedUploadSessionResponseResponseWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func uploadAsyncSession(folderId: Int, sessionId: String, chunkNumber: Int? = nil, file: URL? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ChunkedUploadSessionResponseResponseWrapper {
        return try await uploadAsyncSessionWithRequestBuilder(folderId: folderId, sessionId: sessionId, chunkNumber: chunkNumber, file: file, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Upload a numbered chunk
     
     See also:
     REST API Reference for uploadAsyncSession Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/upload-async-session/
     
     - POST /api/2.0/files/{folderId}/session/{sessionId}/upload
     - Stores one part of a file under the number given in `chunkNumber`, which is what the ordinary chunked flow  uses: parts are kept by their number rather than by arrival, so a part that failed can be resent under the  same number without restarting the session. Numbering starts at 1, and leaving the number out makes the server  count the parts itself. The answer is always the session, never the file, and this call never completes the  upload: the file appears only after `PUT api/2.0/files/{folderId}/session/{sessionId}/finalize`. Use  `POST api/2.0/files/{folderId}/session/{sessionId}` instead when the parts go strictly in order and the upload  should complete by itself. A part bigger than `chunkUploadSize` from `GET api/2.0/files/settings` is refused,  so that value is also the size to split the payload by. The first part of a PDF is inspected, and a PDF that  is not a fillable form is refused when the session targets a form-filling room. The session is found by its id  alone.
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
     - parameter folderId: (path) The folder the session was opened against. It is part of the route only and is not matched against the  session, which is found by its own id. 
     - parameter sessionId: (path) The session this part belongs to, as returned in `id` when it was created; a 32-character hexadecimal string. 
     - parameter chunkNumber: (query) The position of this part in the file, counted from 1. Sending the same number again replaces that part  instead of adding one, which is how a failed part is retried; leaving the number out makes the server count  the parts itself. (optional)
     - parameter file: (form) The part of the file to store, sent as the multipart field of the same name. It is kept under the number given  beside it, and a part larger than the portal chunk size is refused. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ChunkedUploadSessionResponseResponseWrapper> 
     */
    open class func uploadAsyncSessionWithRequestBuilder(folderId: Int, sessionId: String, chunkNumber: Int? = nil, file: URL? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ChunkedUploadSessionResponseResponseWrapper> {
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

        let localVariableRequestBuilder: RequestBuilder<ChunkedUploadSessionResponseResponseWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Upload a numbered chunk (third-party storage)
     
     See also:
     REST API Reference for uploadAsyncSession Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/upload-async-session/
     - parameter folderId: (path) The folder the session was opened against. It is part of the route only and is not matched against the  session, which is found by its own id.      - parameter sessionId: (path) The session this part belongs to, as returned in `id` when it was created; a 32-character hexadecimal string.      - parameter chunkNumber: (query) The position of this part in the file, counted from 1. Sending the same number again replaces that part  instead of adding one, which is how a failed part is retried; leaving the number out makes the server count  the parts itself. (optional)     - parameter file: (form) The part of the file to store, sent as the multipart field of the same name. It is kept under the number given  beside it, and a part larger than the portal chunk size is refused. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ThirdPartyChunkedUploadSessionResponseResponseWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func uploadAsyncSession(folderId: String, sessionId: String, chunkNumber: Int? = nil, file: URL? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ThirdPartyChunkedUploadSessionResponseResponseWrapper {
        return try await uploadAsyncSessionWithRequestBuilder(folderId: folderId, sessionId: sessionId, chunkNumber: chunkNumber, file: file, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Upload a numbered chunk (third-party storage)
     
     See also:
     REST API Reference for uploadAsyncSession Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/upload-async-session/
     
     - POST /api/2.0/files/{folderId}/session/{sessionId}/upload
     - Stores one part of a file under the number given in `chunkNumber`, which is what the ordinary chunked flow  uses: parts are kept by their number rather than by arrival, so a part that failed can be resent under the  same number without restarting the session. Numbering starts at 1, and leaving the number out makes the server  count the parts itself. The answer is always the session, never the file, and this call never completes the  upload: the file appears only after `PUT api/2.0/files/{folderId}/session/{sessionId}/finalize`. Use  `POST api/2.0/files/{folderId}/session/{sessionId}` instead when the parts go strictly in order and the upload  should complete by itself. A part bigger than `chunkUploadSize` from `GET api/2.0/files/settings` is refused,  so that value is also the size to split the payload by. The first part of a PDF is inspected, and a PDF that  is not a fillable form is refused when the session targets a form-filling room. The session is found by its id  alone.
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
     - parameter folderId: (path) The folder the session was opened against. It is part of the route only and is not matched against the  session, which is found by its own id. 
     - parameter sessionId: (path) The session this part belongs to, as returned in `id` when it was created; a 32-character hexadecimal string. 
     - parameter chunkNumber: (query) The position of this part in the file, counted from 1. Sending the same number again replaces that part  instead of adding one, which is how a failed part is retried; leaving the number out makes the server count  the parts itself. (optional)
     - parameter file: (form) The part of the file to store, sent as the multipart field of the same name. It is kept under the number given  beside it, and a part larger than the portal chunk size is refused. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ThirdPartyChunkedUploadSessionResponseResponseWrapper> 
     */
    open class func uploadAsyncSessionWithRequestBuilder(folderId: String, sessionId: String, chunkNumber: Int? = nil, file: URL? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ThirdPartyChunkedUploadSessionResponseResponseWrapper> {
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

        let localVariableRequestBuilder: RequestBuilder<ThirdPartyChunkedUploadSessionResponseResponseWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Upload the next chunk
     
     See also:
     REST API Reference for uploadSession Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/upload-session/
     - parameter folderId: (path) The folder the session was opened against. It is part of the route only and is not matched against the  session, which is found by its own id.      - parameter sessionId: (path) The session this part belongs to, as returned in `id` when it was created; the parts of one session must be  sent one after another, not in parallel.      - parameter file: (form) The next part of the file, sent as the multipart field of the same name. Parts are appended in the order they  arrive, and a part larger than the portal chunk size is refused. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: UploadSessionResponseWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func uploadSession(folderId: Int, sessionId: String, file: URL? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> UploadSessionResponseWrapper {
        return try await uploadSessionWithRequestBuilder(folderId: folderId, sessionId: sessionId, file: file, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Upload the next chunk
     
     See also:
     REST API Reference for uploadSession Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/upload-session/
     
     - POST /api/2.0/files/{folderId}/session/{sessionId}
     - Sends the next part of a file into the session opened for it, as the multipart `File` field, and lets the  server keep count: parts are appended in the order they arrive, so two of these calls must never run in  parallel on one session. While bytes are still missing the answer describes the session and `uploaded` is  false; when the last part completes the declared size the file is written, its upload links are cleared, it is  marked as new for the room, and the answer comes back with 201, `uploaded` true and the whole file in `file`.  A session created for a payload smaller than `chunkUploadSize` from `GET api/2.0/files/settings` finishes on  the first such call and needs no separate finalize step. A part larger than that limit is refused. The first  part of a PDF is inspected, and a PDF that is not a fillable form is refused when the session targets a  form-filling room. The session is addressed by its id, and the folder in the path is not matched against it.
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
     - parameter folderId: (path) The folder the session was opened against. It is part of the route only and is not matched against the  session, which is found by its own id. 
     - parameter sessionId: (path) The session this part belongs to, as returned in `id` when it was created; the parts of one session must be  sent one after another, not in parallel. 
     - parameter file: (form) The next part of the file, sent as the multipart field of the same name. Parts are appended in the order they  arrive, and a part larger than the portal chunk size is refused. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<UploadSessionResponseWrapper> 
     */
    open class func uploadSessionWithRequestBuilder(folderId: Int, sessionId: String, file: URL? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<UploadSessionResponseWrapper> {
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

        let localVariableRequestBuilder: RequestBuilder<UploadSessionResponseWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Upload the next chunk (third-party storage)
     
     See also:
     REST API Reference for uploadSession Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/upload-session/
     - parameter folderId: (path) The folder the session was opened against. It is part of the route only and is not matched against the  session, which is found by its own id.      - parameter sessionId: (path) The session this part belongs to, as returned in `id` when it was created; the parts of one session must be  sent one after another, not in parallel.      - parameter file: (form) The next part of the file, sent as the multipart field of the same name. Parts are appended in the order they  arrive, and a part larger than the portal chunk size is refused. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ThirdPartyUploadSessionResponseWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func uploadSession(folderId: String, sessionId: String, file: URL? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ThirdPartyUploadSessionResponseWrapper {
        return try await uploadSessionWithRequestBuilder(folderId: folderId, sessionId: sessionId, file: file, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Upload the next chunk (third-party storage)
     
     See also:
     REST API Reference for uploadSession Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/upload-session/
     
     - POST /api/2.0/files/{folderId}/session/{sessionId}
     - Sends the next part of a file into the session opened for it, as the multipart `File` field, and lets the  server keep count: parts are appended in the order they arrive, so two of these calls must never run in  parallel on one session. While bytes are still missing the answer describes the session and `uploaded` is  false; when the last part completes the declared size the file is written, its upload links are cleared, it is  marked as new for the room, and the answer comes back with 201, `uploaded` true and the whole file in `file`.  A session created for a payload smaller than `chunkUploadSize` from `GET api/2.0/files/settings` finishes on  the first such call and needs no separate finalize step. A part larger than that limit is refused. The first  part of a PDF is inspected, and a PDF that is not a fillable form is refused when the session targets a  form-filling room. The session is addressed by its id, and the folder in the path is not matched against it.
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
     - parameter folderId: (path) The folder the session was opened against. It is part of the route only and is not matched against the  session, which is found by its own id. 
     - parameter sessionId: (path) The session this part belongs to, as returned in `id` when it was created; the parts of one session must be  sent one after another, not in parallel. 
     - parameter file: (form) The next part of the file, sent as the multipart field of the same name. Parts are appended in the order they  arrive, and a part larger than the portal chunk size is refused. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ThirdPartyUploadSessionResponseWrapper> 
     */
    open class func uploadSessionWithRequestBuilder(folderId: String, sessionId: String, file: URL? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ThirdPartyUploadSessionResponseWrapper> {
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

        let localVariableRequestBuilder: RequestBuilder<ThirdPartyUploadSessionResponseWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
