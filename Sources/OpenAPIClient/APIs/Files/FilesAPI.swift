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
     Add a file to the Recent section
     
     See also:
     REST API Reference for addFileToRecent Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/add-file-to-recent/
     - parameter fileId: (path) The file unique identifier. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileIntegerWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func addFileToRecent(fileId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileIntegerWrapper {
        return try await addFileToRecentWithRequestBuilder(fileId: fileId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Add a file to the Recent section
     
     See also:
     REST API Reference for addFileToRecent Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/add-file-to-recent/
     
     - POST /api/2.0/files/file/{fileId}/recent
     - Adds a file with the ID specified in the request to the Recent section.
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
     - parameter fileId: (path) The file unique identifier. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileIntegerWrapper> 
     */
    open class func addFileToRecentWithRequestBuilder(fileId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileIntegerWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/recent"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileIntegerWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Add template files
     
     See also:
     REST API Reference for addTemplates Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/add-templates/
     - parameter templatesRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: BooleanWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func addTemplates(templatesRequestDto: TemplatesRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> BooleanWrapper {
        return try await addTemplatesWithRequestBuilder(templatesRequestDto: templatesRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Add template files
     
     See also:
     REST API Reference for addTemplates Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/add-templates/
     
     - POST /api/2.0/files/templates
     - Adds files with the IDs specified in the request to the template list.
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
     - parameter templatesRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<BooleanWrapper> 
     */
    open class func addTemplatesWithRequestBuilder(templatesRequestDto: TemplatesRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<BooleanWrapper> {
        let localVariablePath = "/api/2.0/files/templates"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: templatesRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BooleanWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Change version history
     
     See also:
     REST API Reference for changeVersionHistory Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/change-version-history/
     - parameter fileId: (path) The file Id to change its version history.      - parameter changeHistory: (body) The parameters for changing version history. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileIntegerArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func changeVersionHistory(fileId: Int, changeHistory: ChangeHistory, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileIntegerArrayWrapper {
        return try await changeVersionHistoryWithRequestBuilder(fileId: fileId, changeHistory: changeHistory, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Change version history
     
     See also:
     REST API Reference for changeVersionHistory Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/change-version-history/
     
     - PUT /api/2.0/files/file/{fileId}/history
     - Changes the version history of a file with the ID specified in the request.
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
     - parameter fileId: (path) The file Id to change its version history. 
     - parameter changeHistory: (body) The parameters for changing version history. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileIntegerArrayWrapper> 
     */
    open class func changeVersionHistoryWithRequestBuilder(fileId: Int, changeHistory: ChangeHistory, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileIntegerArrayWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/history"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: changeHistory, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileIntegerArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Check the form draft filling
     
     See also:
     REST API Reference for checkFillFormDraft Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/check-fill-form-draft/
     - parameter fileId: (path) The file ID of the form draft.      - parameter checkFillFormDraft: (body) The parameters for checking the form draft filling. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: StringWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func checkFillFormDraft(fileId: Int, checkFillFormDraft: CheckFillFormDraft, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> StringWrapper {
        return try await checkFillFormDraftWithRequestBuilder(fileId: fileId, checkFillFormDraft: checkFillFormDraft, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Check the form draft filling
     
     See also:
     REST API Reference for checkFillFormDraft Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/check-fill-form-draft/
     
     - POST /api/2.0/files/masterform/{fileId}/checkfillformdraft
     - Checks if the current file is a form draft which can be filled out.
     - parameter fileId: (path) The file ID of the form draft. 
     - parameter checkFillFormDraft: (body) The parameters for checking the form draft filling. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<StringWrapper> 
     */
    open class func checkFillFormDraftWithRequestBuilder(fileId: Int, checkFillFormDraft: CheckFillFormDraft, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<StringWrapper> {
        var localVariablePath = "/api/2.0/files/masterform/{fileId}/checkfillformdraft"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: checkFillFormDraft, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<StringWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Copy a file
     
     See also:
     REST API Reference for copyFileAs Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/copy-file-as/
     - parameter fileId: (path) The file ID to copy.      - parameter copyAsJsonElement: (body) The parameters for copying a file. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileEntryBaseWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func copyFileAs(fileId: Int, copyAsJsonElement: CopyAsJsonElement, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileEntryBaseWrapper {
        return try await copyFileAsWithRequestBuilder(fileId: fileId, copyAsJsonElement: copyAsJsonElement, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Copy a file
     
     See also:
     REST API Reference for copyFileAs Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/copy-file-as/
     
     - POST /api/2.0/files/file/{fileId}/copyas
     - Copies (and converts if possible) an existing file to the specified folder.
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
     - parameter fileId: (path) The file ID to copy. 
     - parameter copyAsJsonElement: (body) The parameters for copying a file. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileEntryBaseWrapper> 
     */
    open class func copyFileAsWithRequestBuilder(fileId: Int, copyAsJsonElement: CopyAsJsonElement, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileEntryBaseWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/copyas"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: copyAsJsonElement, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileEntryBaseWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Create the editing session
     
     See also:
     REST API Reference for createEditSession Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-edit-session/
     - parameter fileId: (path) The file ID.      - parameter fileSize: (query) The file size in bytes. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ChunkedUploadSessionResponseWrapperIntegerWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func createEditSession(fileId: Int, fileSize: Int64? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ChunkedUploadSessionResponseWrapperIntegerWrapper {
        return try await createEditSessionWithRequestBuilder(fileId: fileId, fileSize: fileSize, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Create the editing session
     
     See also:
     REST API Reference for createEditSession Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-edit-session/
     
     - POST /api/2.0/files/file/{fileId}/edit_session
     - Creates a session to edit the existing file with multiple chunks (needed for WebDAV).
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
     - parameter fileId: (path) The file ID. 
     - parameter fileSize: (query) The file size in bytes. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ChunkedUploadSessionResponseWrapperIntegerWrapper> 
     */
    open class func createEditSessionWithRequestBuilder(fileId: Int, fileSize: Int64? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ChunkedUploadSessionResponseWrapperIntegerWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/edit_session"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fileSize": (wrappedValue: fileSize?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ChunkedUploadSessionResponseWrapperIntegerWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Create a file
     
     See also:
     REST API Reference for createFile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-file/
     - parameter folderId: (path) The folder ID for the file creation.      - parameter createFileJsonElement: (body) The parameters for creating a file. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileIntegerWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func createFile(folderId: Int, createFileJsonElement: CreateFileJsonElement, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileIntegerWrapper {
        return try await createFileWithRequestBuilder(folderId: folderId, createFileJsonElement: createFileJsonElement, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Create a file
     
     See also:
     REST API Reference for createFile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-file/
     
     - POST /api/2.0/files/{folderId}/file
     - Creates a new file in the specified folder with the title specified in the request.
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
     - parameter folderId: (path) The folder ID for the file creation. 
     - parameter createFileJsonElement: (body) The parameters for creating a file. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileIntegerWrapper> 
     */
    open class func createFileWithRequestBuilder(folderId: Int, createFileJsonElement: CreateFileJsonElement, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileIntegerWrapper> {
        var localVariablePath = "/api/2.0/files/{folderId}/file"
        let folderIdPreEscape = "\(APIHelper.mapValueToPathItem(folderId))"
        let folderIdPostEscape = folderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{folderId}", with: folderIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createFileJsonElement, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileIntegerWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Create a file in the My documents section
     
     See also:
     REST API Reference for createFileInMyDocuments Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-file-in-my-documents/
     - parameter createFileJsonElement: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileIntegerWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func createFileInMyDocuments(createFileJsonElement: CreateFileJsonElement? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileIntegerWrapper {
        return try await createFileInMyDocumentsWithRequestBuilder(createFileJsonElement: createFileJsonElement, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Create a file in the My documents section
     
     See also:
     REST API Reference for createFileInMyDocuments Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-file-in-my-documents/
     
     - POST /api/2.0/files/@my/file
     - Creates a new file in the My documents section with the title specified in the request.
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
     - parameter createFileJsonElement: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileIntegerWrapper> 
     */
    open class func createFileInMyDocumentsWithRequestBuilder(createFileJsonElement: CreateFileJsonElement? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileIntegerWrapper> {
        let localVariablePath = "/api/2.0/files/@my/file"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createFileJsonElement, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileIntegerWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Create primary external link
     
     See also:
     REST API Reference for createFilePrimaryExternalLink Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-file-primary-external-link/
     - parameter id: (path) The file ID.      - parameter fileLinkRequest: (body) The file external link parameters. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileShareWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func createFilePrimaryExternalLink(id: Int, fileLinkRequest: FileLinkRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileShareWrapper {
        return try await createFilePrimaryExternalLinkWithRequestBuilder(id: id, fileLinkRequest: fileLinkRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Create primary external link
     
     See also:
     REST API Reference for createFilePrimaryExternalLink Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-file-primary-external-link/
     
     - POST /api/2.0/files/file/{id}/link
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
     - parameter id: (path) The file ID. 
     - parameter fileLinkRequest: (body) The file external link parameters. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileShareWrapper> 
     */
    open class func createFilePrimaryExternalLinkWithRequestBuilder(id: Int, fileLinkRequest: FileLinkRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileShareWrapper> {
        var localVariablePath = "/api/2.0/files/file/{id}/link"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: fileLinkRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileShareWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Create an HTML file
     
     See also:
     REST API Reference for createHtmlFile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-html-file/
     - parameter folderId: (path) The folder ID to create the text or HTML file.      - parameter createTextOrHtmlFile: (body) The parameters for creating an HTML or text file. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileIntegerWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func createHtmlFile(folderId: Int, createTextOrHtmlFile: CreateTextOrHtmlFile, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileIntegerWrapper {
        return try await createHtmlFileWithRequestBuilder(folderId: folderId, createTextOrHtmlFile: createTextOrHtmlFile, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Create an HTML file
     
     See also:
     REST API Reference for createHtmlFile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-html-file/
     
     - POST /api/2.0/files/{folderId}/html
     - Creates an HTML (.html) file in the selected folder with the title and contents specified in the request.
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
     - parameter folderId: (path) The folder ID to create the text or HTML file. 
     - parameter createTextOrHtmlFile: (body) The parameters for creating an HTML or text file. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileIntegerWrapper> 
     */
    open class func createHtmlFileWithRequestBuilder(folderId: Int, createTextOrHtmlFile: CreateTextOrHtmlFile, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileIntegerWrapper> {
        var localVariablePath = "/api/2.0/files/{folderId}/html"
        let folderIdPreEscape = "\(APIHelper.mapValueToPathItem(folderId))"
        let folderIdPostEscape = folderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{folderId}", with: folderIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createTextOrHtmlFile, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileIntegerWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Create an HTML file in the My documents section
     
     See also:
     REST API Reference for createHtmlFileInMyDocuments Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-html-file-in-my-documents/
     - parameter createTextOrHtmlFile: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileIntegerWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func createHtmlFileInMyDocuments(createTextOrHtmlFile: CreateTextOrHtmlFile? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileIntegerWrapper {
        return try await createHtmlFileInMyDocumentsWithRequestBuilder(createTextOrHtmlFile: createTextOrHtmlFile, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Create an HTML file in the My documents section
     
     See also:
     REST API Reference for createHtmlFileInMyDocuments Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-html-file-in-my-documents/
     
     - POST /api/2.0/files/@my/html
     - Creates an HTML (.html) file in the My documents section with the title and contents specified in the request.
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
     - parameter createTextOrHtmlFile: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileIntegerWrapper> 
     */
    open class func createHtmlFileInMyDocumentsWithRequestBuilder(createTextOrHtmlFile: CreateTextOrHtmlFile? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileIntegerWrapper> {
        let localVariablePath = "/api/2.0/files/@my/html"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createTextOrHtmlFile, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileIntegerWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Create a text file
     
     See also:
     REST API Reference for createTextFile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-text-file/
     - parameter folderId: (path) The folder ID to create the text or HTML file.      - parameter createTextOrHtmlFile: (body) The parameters for creating an HTML or text file. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileIntegerWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func createTextFile(folderId: Int, createTextOrHtmlFile: CreateTextOrHtmlFile, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileIntegerWrapper {
        return try await createTextFileWithRequestBuilder(folderId: folderId, createTextOrHtmlFile: createTextOrHtmlFile, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Create a text file
     
     See also:
     REST API Reference for createTextFile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-text-file/
     
     - POST /api/2.0/files/{folderId}/text
     - Creates a text (.txt) file in the selected folder with the title and contents specified in the request.
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
     - parameter folderId: (path) The folder ID to create the text or HTML file. 
     - parameter createTextOrHtmlFile: (body) The parameters for creating an HTML or text file. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileIntegerWrapper> 
     */
    open class func createTextFileWithRequestBuilder(folderId: Int, createTextOrHtmlFile: CreateTextOrHtmlFile, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileIntegerWrapper> {
        var localVariablePath = "/api/2.0/files/{folderId}/text"
        let folderIdPreEscape = "\(APIHelper.mapValueToPathItem(folderId))"
        let folderIdPostEscape = folderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{folderId}", with: folderIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createTextOrHtmlFile, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileIntegerWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Create a text file in the My documents section
     
     See also:
     REST API Reference for createTextFileInMyDocuments Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-text-file-in-my-documents/
     - parameter createTextOrHtmlFile: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileIntegerWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func createTextFileInMyDocuments(createTextOrHtmlFile: CreateTextOrHtmlFile? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileIntegerWrapper {
        return try await createTextFileInMyDocumentsWithRequestBuilder(createTextOrHtmlFile: createTextOrHtmlFile, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Create a text file in the My documents section
     
     See also:
     REST API Reference for createTextFileInMyDocuments Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-text-file-in-my-documents/
     
     - POST /api/2.0/files/@my/text
     - Creates a text (.txt) file in the My documents section with the title and contents specified in the request.
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
     - parameter createTextOrHtmlFile: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileIntegerWrapper> 
     */
    open class func createTextFileInMyDocumentsWithRequestBuilder(createTextOrHtmlFile: CreateTextOrHtmlFile? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileIntegerWrapper> {
        let localVariablePath = "/api/2.0/files/@my/text"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createTextOrHtmlFile, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileIntegerWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Create file thumbnails
     
     See also:
     REST API Reference for createThumbnails Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-thumbnails/
     - parameter baseBatchRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ObjectArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func createThumbnails(baseBatchRequestDto: BaseBatchRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ObjectArrayWrapper {
        return try await createThumbnailsWithRequestBuilder(baseBatchRequestDto: baseBatchRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Create file thumbnails
     
     See also:
     REST API Reference for createThumbnails Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-thumbnails/
     
     - POST /api/2.0/files/thumbnails
     - Creates thumbnails for the files with the IDs specified in the request.
     - parameter baseBatchRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ObjectArrayWrapper> 
     */
    open class func createThumbnailsWithRequestBuilder(baseBatchRequestDto: BaseBatchRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ObjectArrayWrapper> {
        let localVariablePath = "/api/2.0/files/thumbnails"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: baseBatchRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ObjectArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Delete a file
     
     See also:
     REST API Reference for deleteFile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-file/
     - parameter fileId: (path) The file ID to delete.      - parameter delete: (body) The parameters for deleting a file.      - parameter returnSingleOperation: (query) Specifies whether to return only the current operation (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileOperationArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func deleteFile(fileId: Int, delete: Delete, returnSingleOperation: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileOperationArrayWrapper {
        return try await deleteFileWithRequestBuilder(fileId: fileId, delete: delete, returnSingleOperation: returnSingleOperation, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Delete a file
     
     See also:
     REST API Reference for deleteFile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-file/
     
     - DELETE /api/2.0/files/file/{fileId}
     - Deletes a file with the ID specified in the request.
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
     - parameter fileId: (path) The file ID to delete. 
     - parameter delete: (body) The parameters for deleting a file. 
     - parameter returnSingleOperation: (query) Specifies whether to return only the current operation (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileOperationArrayWrapper> 
     */
    open class func deleteFileWithRequestBuilder(fileId: Int, delete: Delete, returnSingleOperation: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileOperationArrayWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: delete, codableHelper: apiConfiguration.codableHelper)

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "ReturnSingleOperation": (wrappedValue: returnSingleOperation?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileOperationArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Delete recent files
     
     See also:
     REST API Reference for deleteRecent Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-recent/
     - parameter baseBatchRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: NoContentResultWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func deleteRecent(baseBatchRequestDto: BaseBatchRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> NoContentResultWrapper {
        return try await deleteRecentWithRequestBuilder(baseBatchRequestDto: baseBatchRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Delete recent files
     
     See also:
     REST API Reference for deleteRecent Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-recent/
     
     - DELETE /api/2.0/files/recent
     - Removes files with the IDs specified in the request from the Recent section.
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
     - returns: RequestBuilder<NoContentResultWrapper> 
     */
    open class func deleteRecentWithRequestBuilder(baseBatchRequestDto: BaseBatchRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<NoContentResultWrapper> {
        let localVariablePath = "/api/2.0/files/recent"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: baseBatchRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<NoContentResultWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Delete template files
     
     See also:
     REST API Reference for deleteTemplates Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-templates/
     - parameter requestBody: (body) The file IDs. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: BooleanWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func deleteTemplates(requestBody: [Int]? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> BooleanWrapper {
        return try await deleteTemplatesWithRequestBuilder(requestBody: requestBody, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Delete template files
     
     See also:
     REST API Reference for deleteTemplates Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-templates/
     
     - DELETE /api/2.0/files/templates
     - Removes files with the IDs specified in the request from the template list.
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
     - parameter requestBody: (body) The file IDs. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<BooleanWrapper> 
     */
    open class func deleteTemplatesWithRequestBuilder(requestBody: [Int]? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<BooleanWrapper> {
        let localVariablePath = "/api/2.0/files/templates"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: requestBody, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BooleanWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Generate XLSX report
     
     See also:
     REST API Reference for generateXlsx Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/generate-xlsx/
     - parameter fileId: (path) The file unique identifier. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func generateXlsx(fileId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await generateXlsxWithRequestBuilder(fileId: fileId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Generate XLSX report
     
     See also:
     REST API Reference for generateXlsx Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/generate-xlsx/
     
     - POST /api/2.0/files/file/{fileId}/xlsx
     - Triggers asynchronous XLSX report generation for the specified form file.
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
     - parameter fileId: (path) The file unique identifier. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func generateXlsxWithRequestBuilder(fileId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<Void> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/xlsx"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get form roles
     
     See also:
     REST API Reference for getAllFormRoles Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-all-form-roles/
     - parameter fileId: (path) The file unique identifier. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FormRoleArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getAllFormRoles(fileId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FormRoleArrayWrapper {
        return try await getAllFormRolesWithRequestBuilder(fileId: fileId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get form roles
     
     See also:
     REST API Reference for getAllFormRoles Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-all-form-roles/
     
     - GET /api/2.0/files/file/{fileId}/formroles
     - Returns all roles for the specified form.
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
     - parameter fileId: (path) The file unique identifier. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FormRoleArrayWrapper> 
     */
    open class func getAllFormRolesWithRequestBuilder(fileId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FormRoleArrayWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/formroles"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FormRoleArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get changes URL
     
     See also:
     REST API Reference for getEditDiffUrl Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-edit-diff-url/
     - parameter fileId: (path) The file ID.      - parameter version: (query) The file version. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: EditHistoryDataWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getEditDiffUrl(fileId: Int, version: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> EditHistoryDataWrapper {
        return try await getEditDiffUrlWithRequestBuilder(fileId: fileId, version: version, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get changes URL
     
     See also:
     REST API Reference for getEditDiffUrl Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-edit-diff-url/
     
     - GET /api/2.0/files/file/{fileId}/edit/diff
     - Returns a URL to the changes of a file version specified in the request.
     - parameter fileId: (path) The file ID. 
     - parameter version: (query) The file version. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<EditHistoryDataWrapper> 
     */
    open class func getEditDiffUrlWithRequestBuilder(fileId: Int, version: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<EditHistoryDataWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/edit/diff"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "version": (wrappedValue: version?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<EditHistoryDataWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Get version history
     
     See also:
     REST API Reference for getEditHistory Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-edit-history/
     - parameter fileId: (path) The file unique identifier. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: EditHistoryArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getEditHistory(fileId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> EditHistoryArrayWrapper {
        return try await getEditHistoryWithRequestBuilder(fileId: fileId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get version history
     
     See also:
     REST API Reference for getEditHistory Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-edit-history/
     
     - GET /api/2.0/files/file/{fileId}/edit/history
     - Returns the version history of a file with the ID specified in the request.
     - parameter fileId: (path) The file unique identifier. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<EditHistoryArrayWrapper> 
     */
    open class func getEditHistoryWithRequestBuilder(fileId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<EditHistoryArrayWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/edit/history"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<EditHistoryArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Get file history
     
     See also:
     REST API Reference for getFileHistory Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-file-history/
     - parameter fileId: (path) The file ID of the history request.      - parameter fromDate: (query) The start date of the history. (optional)     - parameter toDate: (query) The end date of the history. (optional)     - parameter count: (query) The number of history entries to retrieve for the file log. (optional)     - parameter startIndex: (query) The starting index for retrieving a subset of file history entries. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: HistoryArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getFileHistory(fileId: Int, fromDate: ApiDateTime? = nil, toDate: ApiDateTime? = nil, count: Int? = nil, startIndex: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> HistoryArrayWrapper {
        return try await getFileHistoryWithRequestBuilder(fileId: fileId, fromDate: fromDate, toDate: toDate, count: count, startIndex: startIndex, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get file history
     
     See also:
     REST API Reference for getFileHistory Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-file-history/
     
     - GET /api/2.0/files/file/{fileId}/log
     - Returns the list of actions performed on the file with the specified identifier.
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
     - parameter fileId: (path) The file ID of the history request. 
     - parameter fromDate: (query) The start date of the history. (optional)
     - parameter toDate: (query) The end date of the history. (optional)
     - parameter count: (query) The number of history entries to retrieve for the file log. (optional)
     - parameter startIndex: (query) The starting index for retrieving a subset of file history entries. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<HistoryArrayWrapper> 
     */
    open class func getFileHistoryWithRequestBuilder(fileId: Int, fromDate: ApiDateTime? = nil, toDate: ApiDateTime? = nil, count: Int? = nil, startIndex: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<HistoryArrayWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/log"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
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
     Get file information
     
     See also:
     REST API Reference for getFileInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-file-info/
     - parameter fileId: (path) The file ID.      - parameter version: (query) The file version. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileIntegerWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getFileInfo(fileId: Int, version: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileIntegerWrapper {
        return try await getFileInfoWithRequestBuilder(fileId: fileId, version: version, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get file information
     
     See also:
     REST API Reference for getFileInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-file-info/
     
     - GET /api/2.0/files/file/{fileId}
     - Returns the detailed information about a file with the ID specified in the request.
     - parameter fileId: (path) The file ID. 
     - parameter version: (query) The file version. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileIntegerWrapper> 
     */
    open class func getFileInfoWithRequestBuilder(fileId: Int, version: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileIntegerWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "version": (wrappedValue: version?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileIntegerWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Get file external links
     
     See also:
     REST API Reference for getFileLinks Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-file-links/
     - parameter id: (path) The file unique identifier.      - parameter count: (query) The number of items to retrieve in the request. (optional)     - parameter startIndex: (query) The starting index for the query results. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileShareArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getFileLinks(id: Int, count: Int? = nil, startIndex: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileShareArrayWrapper {
        return try await getFileLinksWithRequestBuilder(id: id, count: count, startIndex: startIndex, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get file external links
     
     See also:
     REST API Reference for getFileLinks Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-file-links/
     
     - GET /api/2.0/files/file/{id}/links
     - Returns the external links of a file with the ID specified in the request.
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
     - parameter id: (path) The file unique identifier. 
     - parameter count: (query) The number of items to retrieve in the request. (optional)
     - parameter startIndex: (query) The starting index for the query results. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileShareArrayWrapper> 
     */
    open class func getFileLinksWithRequestBuilder(id: Int, count: Int? = nil, startIndex: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileShareArrayWrapper> {
        var localVariablePath = "/api/2.0/files/file/{id}/links"
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

        let localVariableRequestBuilder: RequestBuilder<FileShareArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get primary external link
     
     See also:
     REST API Reference for getFilePrimaryExternalLink Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-file-primary-external-link/
     - parameter id: (path) The file unique identifier.      - parameter count: (query) The number of items to retrieve in the request. (optional)     - parameter startIndex: (query) The starting index for the query results. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileShareWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getFilePrimaryExternalLink(id: Int, count: Int? = nil, startIndex: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileShareWrapper {
        return try await getFilePrimaryExternalLinkWithRequestBuilder(id: id, count: count, startIndex: startIndex, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get primary external link
     
     See also:
     REST API Reference for getFilePrimaryExternalLink Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-file-primary-external-link/
     
     - GET /api/2.0/files/file/{id}/link
     - Returns the primary external link by the identifier specified in the request.
     - parameter id: (path) The file unique identifier. 
     - parameter count: (query) The number of items to retrieve in the request. (optional)
     - parameter startIndex: (query) The starting index for the query results. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileShareWrapper> 
     */
    open class func getFilePrimaryExternalLinkWithRequestBuilder(id: Int, count: Int? = nil, startIndex: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileShareWrapper> {
        var localVariablePath = "/api/2.0/files/file/{id}/link"
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
     Get file versions
     
     See also:
     REST API Reference for getFileVersionInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-file-version-info/
     - parameter fileId: (path) The file unique identifier. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileIntegerArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getFileVersionInfo(fileId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileIntegerArrayWrapper {
        return try await getFileVersionInfoWithRequestBuilder(fileId: fileId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get file versions
     
     See also:
     REST API Reference for getFileVersionInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-file-version-info/
     
     - GET /api/2.0/files/file/{fileId}/history
     - Returns the detailed information about all the available file versions with the ID specified in the request.
     - parameter fileId: (path) The file unique identifier. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileIntegerArrayWrapper> 
     */
    open class func getFileVersionInfoWithRequestBuilder(fileId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileIntegerArrayWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/history"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileIntegerArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Get form-filling result
     
     See also:
     REST API Reference for getFillResult Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-fill-result/
     - parameter fillingSessionId: (query) The form-filling session ID. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FillingFormResultIntegerWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getFillResult(fillingSessionId: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FillingFormResultIntegerWrapper {
        return try await getFillResultWithRequestBuilder(fillingSessionId: fillingSessionId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get form-filling result
     
     See also:
     REST API Reference for getFillResult Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-fill-result/
     
     - GET /api/2.0/files/file/fillresult
     - Retrieves the result of a form-filling session.
     - parameter fillingSessionId: (query) The form-filling session ID. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FillingFormResultIntegerWrapper> 
     */
    open class func getFillResultWithRequestBuilder(fillingSessionId: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FillingFormResultIntegerWrapper> {
        let localVariablePath = "/api/2.0/files/file/fillresult"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fillingSessionId": (wrappedValue: fillingSessionId?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FillingFormResultIntegerWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Get form submission results
     
     See also:
     REST API Reference for getFormSubmissions Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-form-submissions/
     - parameter fileId: (path) The file unique identifier. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FormSubmissionsWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getFormSubmissions(fileId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FormSubmissionsWrapper {
        return try await getFormSubmissionsWithRequestBuilder(fileId: fileId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get form submission results
     
     See also:
     REST API Reference for getFormSubmissions Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-form-submissions/
     
     - GET /api/2.0/files/file/{fileId}/submissions
     - Returns the results of form submissions.
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
     - parameter fileId: (path) The file unique identifier. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FormSubmissionsWrapper> 
     */
    open class func getFormSubmissionsWithRequestBuilder(fileId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FormSubmissionsWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/submissions"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FormSubmissionsWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get file download link asynchronously
     
     See also:
     REST API Reference for getPresignedFileUri Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-presigned-file-uri/
     - parameter fileId: (path) The file unique identifier. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileLinkWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getPresignedFileUri(fileId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileLinkWrapper {
        return try await getPresignedFileUriWithRequestBuilder(fileId: fileId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get file download link asynchronously
     
     See also:
     REST API Reference for getPresignedFileUri Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-presigned-file-uri/
     
     - GET /api/2.0/files/file/{fileId}/presigned
     - Returns a link to download a file with the ID specified in the request asynchronously.
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
     - parameter fileId: (path) The file unique identifier. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileLinkWrapper> 
     */
    open class func getPresignedFileUriWithRequestBuilder(fileId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileLinkWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/presigned"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileLinkWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get file download link
     
     See also:
     REST API Reference for getPresignedUri Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-presigned-uri/
     - parameter fileId: (path) The file unique identifier. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: StringWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getPresignedUri(fileId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> StringWrapper {
        return try await getPresignedUriWithRequestBuilder(fileId: fileId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get file download link
     
     See also:
     REST API Reference for getPresignedUri Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-presigned-uri/
     
     - GET /api/2.0/files/file/{fileId}/presigneduri
     - Returns a pre-signed URL to download a file with the specified ID.  This temporary link provides secure access to the file.
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
     - parameter fileId: (path) The file unique identifier. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<StringWrapper> 
     */
    open class func getPresignedUriWithRequestBuilder(fileId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<StringWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/presigneduri"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<StringWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get users access rights to the protected file
     
     See also:
     REST API Reference for getProtectedFileUsers Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-protected-file-users/
     - parameter fileId: (path) The file unique identifier. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: MentionWrapperArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getProtectedFileUsers(fileId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> MentionWrapperArrayWrapper {
        return try await getProtectedFileUsersWithRequestBuilder(fileId: fileId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get users access rights to the protected file
     
     See also:
     REST API Reference for getProtectedFileUsers Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-protected-file-users/
     
     - GET /api/2.0/files/file/{fileId}/protectusers
     - Returns a list of users with their access rights to the protected file with the ID specified in the request.
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
     - parameter fileId: (path) The file unique identifier. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<MentionWrapperArrayWrapper> 
     */
    open class func getProtectedFileUsersWithRequestBuilder(fileId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<MentionWrapperArrayWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/protectusers"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<MentionWrapperArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get reference data
     
     See also:
     REST API Reference for getReferenceData Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-reference-data/
     - parameter getReferenceDataDtoInteger: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileReferenceWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getReferenceData(getReferenceDataDtoInteger: GetReferenceDataDtoInteger? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileReferenceWrapper {
        return try await getReferenceDataWithRequestBuilder(getReferenceDataDtoInteger: getReferenceDataDtoInteger, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get reference data
     
     See also:
     REST API Reference for getReferenceData Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-reference-data/
     
     - POST /api/2.0/files/file/referencedata
     - Returns the reference data to uniquely identify a file in its system and check the availability of insering data into the destination spreadsheet by the external link.
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
     - parameter getReferenceDataDtoInteger: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileReferenceWrapper> 
     */
    open class func getReferenceDataWithRequestBuilder(getReferenceDataDtoInteger: GetReferenceDataDtoInteger? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileReferenceWrapper> {
        let localVariablePath = "/api/2.0/files/file/referencedata"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: getReferenceDataDtoInteger, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileReferenceWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Check the PDF file
     
     See also:
     REST API Reference for isFormPDF Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/is-form-pdf/
     - parameter fileId: (path) The file unique identifier. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: BooleanWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func isFormPDF(fileId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> BooleanWrapper {
        return try await isFormPDFWithRequestBuilder(fileId: fileId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Check the PDF file
     
     See also:
     REST API Reference for isFormPDF Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/is-form-pdf/
     
     - GET /api/2.0/files/file/{fileId}/isformpdf
     - Checks if the PDF file is a form or not.
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
     - parameter fileId: (path) The file unique identifier. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<BooleanWrapper> 
     */
    open class func isFormPDFWithRequestBuilder(fileId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<BooleanWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/isformpdf"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BooleanWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Lock a file
     
     See also:
     REST API Reference for lockFile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/lock-file/
     - parameter fileId: (path) The file ID for locking.      - parameter lockFileParameters: (body) The parameters for locking a file. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileIntegerWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func lockFile(fileId: Int, lockFileParameters: LockFileParameters, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileIntegerWrapper {
        return try await lockFileWithRequestBuilder(fileId: fileId, lockFileParameters: lockFileParameters, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Lock a file
     
     See also:
     REST API Reference for lockFile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/lock-file/
     
     - PUT /api/2.0/files/file/{fileId}/lock
     - Locks a file with the ID specified in the request.
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
     - parameter fileId: (path) The file ID for locking. 
     - parameter lockFileParameters: (body) The parameters for locking a file. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileIntegerWrapper> 
     */
    open class func lockFileWithRequestBuilder(fileId: Int, lockFileParameters: LockFileParameters, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileIntegerWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/lock"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: lockFileParameters, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileIntegerWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Perform form filling action
     
     See also:
     REST API Reference for manageFormFilling Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/manage-form-filling/
     - parameter fileId: (path)       - parameter manageFormFillingDtoInteger: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func manageFormFilling(fileId: String, manageFormFillingDtoInteger: ManageFormFillingDtoInteger? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await manageFormFillingWithRequestBuilder(fileId: fileId, manageFormFillingDtoInteger: manageFormFillingDtoInteger, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Perform form filling action
     
     See also:
     REST API Reference for manageFormFilling Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/manage-form-filling/
     
     - PUT /api/2.0/files/file/{fileId}/manageformfilling
     - Performs the specified form filling action.
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
     - parameter fileId: (path)  
     - parameter manageFormFillingDtoInteger: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func manageFormFillingWithRequestBuilder(fileId: String, manageFormFillingDtoInteger: ManageFormFillingDtoInteger? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<Void> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/manageformfilling"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: manageFormFillingDtoInteger, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Open a file configuration
     
     See also:
     REST API Reference for openEditFile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/open-edit-file/
     - parameter fileId: (path) The file ID to open.      - parameter version: (query) The file version to open. (optional)     - parameter view: (query) Specifies if the document will be opened for viewing only or not. (optional)     - parameter editorType: (query) The editor type to open the file. (optional)     - parameter edit: (query) Specifies if the document is opened in the editing mode or not. (optional)     - parameter fill: (query) Specifies if the document is opened in the form-filling mode or not. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ConfigurationIntegerWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func openEditFile(fileId: Int, version: Int? = nil, view: Bool? = nil, editorType: EditorType? = nil, edit: Bool? = nil, fill: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ConfigurationIntegerWrapper {
        return try await openEditFileWithRequestBuilder(fileId: fileId, version: version, view: view, editorType: editorType, edit: edit, fill: fill, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Open a file configuration
     
     See also:
     REST API Reference for openEditFile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/open-edit-file/
     
     - GET /api/2.0/files/file/{fileId}/openedit
     - Returns the initialization configuration of a file to open it in the editor.
     - parameter fileId: (path) The file ID to open. 
     - parameter version: (query) The file version to open. (optional)
     - parameter view: (query) Specifies if the document will be opened for viewing only or not. (optional)
     - parameter editorType: (query) The editor type to open the file. (optional)
     - parameter edit: (query) Specifies if the document is opened in the editing mode or not. (optional)
     - parameter fill: (query) Specifies if the document is opened in the form-filling mode or not. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ConfigurationIntegerWrapper> 
     */
    open class func openEditFileWithRequestBuilder(fileId: Int, version: Int? = nil, view: Bool? = nil, editorType: EditorType? = nil, edit: Bool? = nil, fill: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ConfigurationIntegerWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/openedit"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "version": (wrappedValue: version?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "view": (wrappedValue: view?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "editorType": (wrappedValue: editorType?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "edit": (wrappedValue: edit?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "fill": (wrappedValue: fill?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ConfigurationIntegerWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Restore a file version
     
     See also:
     REST API Reference for restoreFileVersion Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/restore-file-version/
     - parameter fileId: (path) The file ID of the restore version.      - parameter version: (query) The file version of the restore. (optional)     - parameter url: (query) The file version URL of the restore. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: EditHistoryArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func restoreFileVersion(fileId: Int, version: Int? = nil, url: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> EditHistoryArrayWrapper {
        return try await restoreFileVersionWithRequestBuilder(fileId: fileId, version: version, url: url, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Restore a file version
     
     See also:
     REST API Reference for restoreFileVersion Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/restore-file-version/
     
     - POST /api/2.0/files/file/{fileId}/restoreversion
     - Restores a file version specified in the request.
     - parameter fileId: (path) The file ID of the restore version. 
     - parameter version: (query) The file version of the restore. (optional)
     - parameter url: (query) The file version URL of the restore. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<EditHistoryArrayWrapper> 
     */
    open class func restoreFileVersionWithRequestBuilder(fileId: Int, version: Int? = nil, url: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<EditHistoryArrayWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/restoreversion"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "version": (wrappedValue: version?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "url": (wrappedValue: url?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<EditHistoryArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Save file edits
     
     See also:
     REST API Reference for saveEditingFileFromForm Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/save-editing-file-from-form/
     - parameter fileId: (path) The editing file ID from the request.      - parameter downloadUri: (query) The URI to download the editing file. (optional)     - parameter fileExtension: (form) The editing file extension from the request. (optional)     - parameter file: (form) The edited file to be saved, uploaded as part of the multipart/form-data request.  This property represents the modified file content from the HTTP request form after editing operations.  The file is accessed via the IFormFile interface which provides access to the file name, content type, length, and stream. (optional)     - parameter forcesave: (form) Specifies whether to force save the file or not. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileIntegerWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func saveEditingFileFromForm(fileId: Int, downloadUri: String? = nil, fileExtension: String? = nil, file: URL? = nil, forcesave: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileIntegerWrapper {
        return try await saveEditingFileFromFormWithRequestBuilder(fileId: fileId, downloadUri: downloadUri, fileExtension: fileExtension, file: file, forcesave: forcesave, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Save file edits
     
     See also:
     REST API Reference for saveEditingFileFromForm Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/save-editing-file-from-form/
     
     - PUT /api/2.0/files/file/{fileId}/saveediting
     - Saves edits to a file with the ID specified in the request.
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
     - parameter fileId: (path) The editing file ID from the request. 
     - parameter downloadUri: (query) The URI to download the editing file. (optional)
     - parameter fileExtension: (form) The editing file extension from the request. (optional)
     - parameter file: (form) The edited file to be saved, uploaded as part of the multipart/form-data request.  This property represents the modified file content from the HTTP request form after editing operations.  The file is accessed via the IFormFile interface which provides access to the file name, content type, length, and stream. (optional)
     - parameter forcesave: (form) Specifies whether to force save the file or not. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileIntegerWrapper> 
     */
    open class func saveEditingFileFromFormWithRequestBuilder(fileId: Int, downloadUri: String? = nil, fileExtension: String? = nil, file: URL? = nil, forcesave: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileIntegerWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/saveediting"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableFormParams: [String: (any Sendable)?] = [
            "FileExtension": fileExtension?.asParameter(codableHelper: apiConfiguration.codableHelper),
            "File": file?.asParameter(codableHelper: apiConfiguration.codableHelper),
            "Forcesave": forcesave?.asParameter(codableHelper: apiConfiguration.codableHelper),
        ]

        let localVariableNonNullParameters = APIHelper.rejectNil(localVariableFormParams)
        let localVariableParameters = APIHelper.convertBoolToString(localVariableNonNullParameters)

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "DownloadUri": (wrappedValue: downloadUri?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "multipart/form-data",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileIntegerWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Save a file as PDF
     
     See also:
     REST API Reference for saveFileAsPdf Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/save-file-as-pdf/
     - parameter id: (path) The file ID to save as PDF.      - parameter saveAsPdfInteger: (body) The parameters for saving the file as PDF. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileIntegerWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func saveFileAsPdf(id: Int, saveAsPdfInteger: SaveAsPdfInteger, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileIntegerWrapper {
        return try await saveFileAsPdfWithRequestBuilder(id: id, saveAsPdfInteger: saveAsPdfInteger, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Save a file as PDF
     
     See also:
     REST API Reference for saveFileAsPdf Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/save-file-as-pdf/
     
     - POST /api/2.0/files/file/{id}/saveaspdf
     - Saves a file with the identifier specified in the request as a PDF document.
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
     - parameter id: (path) The file ID to save as PDF. 
     - parameter saveAsPdfInteger: (body) The parameters for saving the file as PDF. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileIntegerWrapper> 
     */
    open class func saveFileAsPdfWithRequestBuilder(id: Int, saveAsPdfInteger: SaveAsPdfInteger, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileIntegerWrapper> {
        var localVariablePath = "/api/2.0/files/file/{id}/saveaspdf"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: saveAsPdfInteger, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileIntegerWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Save form role mapping
     
     See also:
     REST API Reference for saveFormRoleMapping Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/save-form-role-mapping/
     - parameter fileId: (path)       - parameter saveFormRoleMappingDtoInteger: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func saveFormRoleMapping(fileId: String, saveFormRoleMappingDtoInteger: SaveFormRoleMappingDtoInteger? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await saveFormRoleMappingWithRequestBuilder(fileId: fileId, saveFormRoleMappingDtoInteger: saveFormRoleMappingDtoInteger, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Save form role mapping
     
     See also:
     REST API Reference for saveFormRoleMapping Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/save-form-role-mapping/
     
     - POST /api/2.0/files/file/{fileId}/formrolemapping
     - Saves the form role mapping.
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
     - parameter fileId: (path)  
     - parameter saveFormRoleMappingDtoInteger: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func saveFormRoleMappingWithRequestBuilder(fileId: String, saveFormRoleMappingDtoInteger: SaveFormRoleMappingDtoInteger? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<Void> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/formrolemapping"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: saveFormRoleMappingDtoInteger, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Set the Custom Filter editing mode
     
     See also:
     REST API Reference for setCustomFilterTag Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-custom-filter-tag/
     - parameter fileId: (path) The file ID.      - parameter customFilterParameters: (body) The parameters for setting the Custom Filter editing mode. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileIntegerWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func setCustomFilterTag(fileId: Int, customFilterParameters: CustomFilterParameters, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileIntegerWrapper {
        return try await setCustomFilterTagWithRequestBuilder(fileId: fileId, customFilterParameters: customFilterParameters, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Set the Custom Filter editing mode
     
     See also:
     REST API Reference for setCustomFilterTag Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-custom-filter-tag/
     
     - PUT /api/2.0/files/file/{fileId}/customfilter
     - Sets the Custom Filter editing mode to a file with the ID specified in the request.
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
     - parameter fileId: (path) The file ID. 
     - parameter customFilterParameters: (body) The parameters for setting the Custom Filter editing mode. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileIntegerWrapper> 
     */
    open class func setCustomFilterTagWithRequestBuilder(fileId: Int, customFilterParameters: CustomFilterParameters, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileIntegerWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/customfilter"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: customFilterParameters, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileIntegerWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Set an external link
     
     See also:
     REST API Reference for setFileExternalLink Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-file-external-link/
     - parameter id: (path) The file ID.      - parameter fileLinkRequest: (body) The file external link parameters. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileShareWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func setFileExternalLink(id: Int, fileLinkRequest: FileLinkRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileShareWrapper {
        return try await setFileExternalLinkWithRequestBuilder(id: id, fileLinkRequest: fileLinkRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Set an external link
     
     See also:
     REST API Reference for setFileExternalLink Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-file-external-link/
     
     - PUT /api/2.0/files/file/{id}/links
     - Sets an external link to a file with the ID specified in the request.
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
     - parameter id: (path) The file ID. 
     - parameter fileLinkRequest: (body) The file external link parameters. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileShareWrapper> 
     */
    open class func setFileExternalLinkWithRequestBuilder(id: Int, fileLinkRequest: FileLinkRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileShareWrapper> {
        var localVariablePath = "/api/2.0/files/file/{id}/links"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: fileLinkRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileShareWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Set file order
     
     See also:
     REST API Reference for setFileOrder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-file-order/
     - parameter fileId: (path) The file unique identifier.      - parameter orderRequestDto: (body) The file order information. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileIntegerWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func setFileOrder(fileId: Int, orderRequestDto: OrderRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileIntegerWrapper {
        return try await setFileOrderWithRequestBuilder(fileId: fileId, orderRequestDto: orderRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Set file order
     
     See also:
     REST API Reference for setFileOrder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-file-order/
     
     - PUT /api/2.0/files/{fileId}/order
     - Sets the order of the file with the ID specified in the request.
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
     - parameter fileId: (path) The file unique identifier. 
     - parameter orderRequestDto: (body) The file order information. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileIntegerWrapper> 
     */
    open class func setFileOrderWithRequestBuilder(fileId: Int, orderRequestDto: OrderRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileIntegerWrapper> {
        var localVariablePath = "/api/2.0/files/{fileId}/order"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: orderRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileIntegerWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Set order of files
     
     See also:
     REST API Reference for setFilesOrder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-files-order/
     - parameter ordersRequestDtoInteger: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileEntryIntegerArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func setFilesOrder(ordersRequestDtoInteger: OrdersRequestDtoInteger? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileEntryIntegerArrayWrapper {
        return try await setFilesOrderWithRequestBuilder(ordersRequestDtoInteger: ordersRequestDtoInteger, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Set order of files
     
     See also:
     REST API Reference for setFilesOrder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-files-order/
     
     - PUT /api/2.0/files/order
     - Sets the order of the files specified in the request.
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
     - parameter ordersRequestDtoInteger: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileEntryIntegerArrayWrapper> 
     */
    open class func setFilesOrderWithRequestBuilder(ordersRequestDtoInteger: OrdersRequestDtoInteger? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileEntryIntegerArrayWrapper> {
        let localVariablePath = "/api/2.0/files/order"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: ordersRequestDtoInteger, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileEntryIntegerArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Start file editing
     
     See also:
     REST API Reference for startEditFile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/start-edit-file/
     - parameter fileId: (path) The file ID to start editing.      - parameter startEdit: (body) The file parameters to start editing. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: StringWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func startEditFile(fileId: Int, startEdit: StartEdit, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> StringWrapper {
        return try await startEditFileWithRequestBuilder(fileId: fileId, startEdit: startEdit, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Start file editing
     
     See also:
     REST API Reference for startEditFile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/start-edit-file/
     
     - POST /api/2.0/files/file/{fileId}/startedit
     - Informs about opening a file with the ID specified in the request for editing, locking it from being deleted or moved (this method is called by the mobile editors).
     - parameter fileId: (path) The file ID to start editing. 
     - parameter startEdit: (body) The file parameters to start editing. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<StringWrapper> 
     */
    open class func startEditFileWithRequestBuilder(fileId: Int, startEdit: StartEdit, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<StringWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/startedit"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: startEdit, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<StringWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Start file filling
     
     See also:
     REST API Reference for startFillingFile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/start-filling-file/
     - parameter fileId: (path) The file ID to start filling. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileIntegerWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func startFillingFile(fileId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileIntegerWrapper {
        return try await startFillingFileWithRequestBuilder(fileId: fileId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Start file filling
     
     See also:
     REST API Reference for startFillingFile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/start-filling-file/
     
     - PUT /api/2.0/files/file/{fileId}/startfilling
     - Starts filling a file with the ID specified in the request.
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
     - parameter fileId: (path) The file ID to start filling. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileIntegerWrapper> 
     */
    open class func startFillingFileWithRequestBuilder(fileId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileIntegerWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/startfilling"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileIntegerWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Change the file favorite status
     
     See also:
     REST API Reference for toggleFileFavorite Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/toggle-file-favorite/
     - parameter fileId: (path) The file ID.      - parameter favorite: (query) Specifies if the file is marked as favorite or not. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: BooleanWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func toggleFileFavorite(fileId: Int, favorite: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> BooleanWrapper {
        return try await toggleFileFavoriteWithRequestBuilder(fileId: fileId, favorite: favorite, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Change the file favorite status
     
     See also:
     REST API Reference for toggleFileFavorite Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/toggle-file-favorite/
     
     - GET /api/2.0/files/favorites/{fileId}
     - Changes the favorite status of the file with the ID specified in the request.
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
     - parameter fileId: (path) The file ID. 
     - parameter favorite: (query) Specifies if the file is marked as favorite or not. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<BooleanWrapper> 
     */
    open class func toggleFileFavoriteWithRequestBuilder(fileId: Int, favorite: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<BooleanWrapper> {
        var localVariablePath = "/api/2.0/files/favorites/{fileId}"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "favorite": (wrappedValue: favorite?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BooleanWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Track file editing
     
     See also:
     REST API Reference for trackEditFile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/track-edit-file/
     - parameter fileId: (path) The file ID to track editing changes.      - parameter tabId: (query) The tab ID to track editing changes. (optional)     - parameter docKeyForTrack: (query) The document key for tracking changes. (optional)     - parameter isFinish: (query) Specifies whether to finish file tracking or not. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: KeyValuePairBooleanStringWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func trackEditFile(fileId: Int, tabId: UUID? = nil, docKeyForTrack: String? = nil, isFinish: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> KeyValuePairBooleanStringWrapper {
        return try await trackEditFileWithRequestBuilder(fileId: fileId, tabId: tabId, docKeyForTrack: docKeyForTrack, isFinish: isFinish, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Track file editing
     
     See also:
     REST API Reference for trackEditFile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/track-edit-file/
     
     - GET /api/2.0/files/file/{fileId}/trackeditfile
     - Tracks file changes when editing.
     - parameter fileId: (path) The file ID to track editing changes. 
     - parameter tabId: (query) The tab ID to track editing changes. (optional)
     - parameter docKeyForTrack: (query) The document key for tracking changes. (optional)
     - parameter isFinish: (query) Specifies whether to finish file tracking or not. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<KeyValuePairBooleanStringWrapper> 
     */
    open class func trackEditFileWithRequestBuilder(fileId: Int, tabId: UUID? = nil, docKeyForTrack: String? = nil, isFinish: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<KeyValuePairBooleanStringWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}/trackeditfile"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "tabId": (wrappedValue: tabId?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "docKeyForTrack": (wrappedValue: docKeyForTrack?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "isFinish": (wrappedValue: isFinish?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<KeyValuePairBooleanStringWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Update a file
     
     See also:
     REST API Reference for updateFile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/update-file/
     - parameter fileId: (path) The file ID to update.      - parameter updateFile: (body) The parameters for updating a file. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileIntegerWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func updateFile(fileId: Int, updateFile: UpdateFile, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileIntegerWrapper {
        return try await updateFileWithRequestBuilder(fileId: fileId, updateFile: updateFile, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Update a file
     
     See also:
     REST API Reference for updateFile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/update-file/
     
     - PUT /api/2.0/files/file/{fileId}
     - Updates the information of the selected file with the parameters specified in the request.
     - parameter fileId: (path) The file ID to update. 
     - parameter updateFile: (body) The parameters for updating a file. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileIntegerWrapper> 
     */
    open class func updateFileWithRequestBuilder(fileId: Int, updateFile: UpdateFile, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileIntegerWrapper> {
        var localVariablePath = "/api/2.0/files/file/{fileId}"
        let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateFile, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileIntegerWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }
}
