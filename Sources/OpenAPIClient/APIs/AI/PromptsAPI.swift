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
     Create
     
     See also:
     REST API Reference for aiPromptsCreate Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-create/
     - parameter aiCreatePromptInput: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiPromptMutationResult
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiPromptsCreate(aiCreatePromptInput: AiCreatePromptInput, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiPromptMutationResult {
        return try await aiPromptsCreateWithRequestBuilder(aiCreatePromptInput: aiCreatePromptInput, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Create
     
     See also:
     REST API Reference for aiPromptsCreate Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-create/
     
     - POST /api/2.0/ai/prompts/create
     - Saves a new prompt. The name must be non-empty and unique inside its folder, and `folderId` must point at an existing folder - omit it for the root.
     - parameter aiCreatePromptInput: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiPromptMutationResult> 
     */
    open class func aiPromptsCreateWithRequestBuilder(aiCreatePromptInput: AiCreatePromptInput, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiPromptMutationResult> {
        let localVariablePath = "/api/2.0/ai/prompts/create"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: aiCreatePromptInput, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiPromptMutationResult>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Create folder
     
     See also:
     REST API Reference for aiPromptsCreateFolder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-create-folder/
     - parameter body: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiFolderMutationResult
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiPromptsCreateFolder(body: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiFolderMutationResult {
        return try await aiPromptsCreateFolderWithRequestBuilder(body: body, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Create folder
     
     See also:
     REST API Reference for aiPromptsCreateFolder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-create-folder/
     
     - POST /api/2.0/ai/prompts/create-folder
     - Creates a prompt folder. The name must be non-empty and unique across the portal - prompt folders do not nest.
     - parameter body: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiFolderMutationResult> 
     */
    open class func aiPromptsCreateFolderWithRequestBuilder(body: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiFolderMutationResult> {
        let localVariablePath = "/api/2.0/ai/prompts/create-folder"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiFolderMutationResult>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Delete
     
     See also:
     REST API Reference for aiPromptsDelete Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-delete/
     - parameter body: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiSuccessResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiPromptsDelete(body: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiSuccessResponse {
        return try await aiPromptsDeleteWithRequestBuilder(body: body, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Delete
     
     See also:
     REST API Reference for aiPromptsDelete Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-delete/
     
     - DELETE /api/2.0/ai/prompts/delete
     - Deletes a saved prompt. Does nothing when it no longer exists.
     - parameter body: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiSuccessResponse> 
     */
    open class func aiPromptsDeleteWithRequestBuilder(body: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiSuccessResponse> {
        let localVariablePath = "/api/2.0/ai/prompts/delete"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiSuccessResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Delete folder
     
     See also:
     REST API Reference for aiPromptsDeleteFolder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-delete-folder/
     - parameter body: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiSuccessResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiPromptsDeleteFolder(body: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiSuccessResponse {
        return try await aiPromptsDeleteFolderWithRequestBuilder(body: body, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Delete folder
     
     See also:
     REST API Reference for aiPromptsDeleteFolder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-delete-folder/
     
     - DELETE /api/2.0/ai/prompts/delete-folder
     - Deletes a prompt folder together with the prompts inside it.
     - parameter body: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiSuccessResponse> 
     */
    open class func aiPromptsDeleteFolderWithRequestBuilder(body: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiSuccessResponse> {
        let localVariablePath = "/api/2.0/ai/prompts/delete-folder"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiSuccessResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Export
     
     See also:
     REST API Reference for aiPromptsExport Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-export/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiPromptBundle
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiPromptsExport(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiPromptBundle {
        return try await aiPromptsExportWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Export
     
     See also:
     REST API Reference for aiPromptsExport Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-export/
     
     - GET /api/2.0/ai/prompts/export
     - Builds a self-contained, versioned bundle of every saved prompt and folder, ready for `import-bundle`.
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiPromptBundle> 
     */
    open class func aiPromptsExportWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiPromptBundle> {
        let localVariablePath = "/api/2.0/ai/prompts/export"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiPromptBundle>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Get by id
     
     See also:
     REST API Reference for aiPromptsGetById Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-get-by-id/
     - parameter id: (query) The saved prompt identifier. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiPrompt
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiPromptsGetById(id: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiPrompt {
        return try await aiPromptsGetByIdWithRequestBuilder(id: id, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get by id
     
     See also:
     REST API Reference for aiPromptsGetById Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-get-by-id/
     
     - GET /api/2.0/ai/prompts/get-by-id
     - Returns one saved prompt, or an empty result when the identifier is unknown.
     - parameter id: (query) The saved prompt identifier. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiPrompt> 
     */
    open class func aiPromptsGetByIdWithRequestBuilder(id: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiPrompt> {
        let localVariablePath = "/api/2.0/ai/prompts/get-by-id"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "id": (wrappedValue: id.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiPrompt>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Get folder by id
     
     See also:
     REST API Reference for aiPromptsGetFolderById Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-get-folder-by-id/
     - parameter id: (query) The prompt folder identifier. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiPromptFolder
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiPromptsGetFolderById(id: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiPromptFolder {
        return try await aiPromptsGetFolderByIdWithRequestBuilder(id: id, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get folder by id
     
     See also:
     REST API Reference for aiPromptsGetFolderById Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-get-folder-by-id/
     
     - GET /api/2.0/ai/prompts/get-folder-by-id
     - Returns one prompt folder, or an empty result when the identifier is unknown.
     - parameter id: (query) The prompt folder identifier. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiPromptFolder> 
     */
    open class func aiPromptsGetFolderByIdWithRequestBuilder(id: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiPromptFolder> {
        let localVariablePath = "/api/2.0/ai/prompts/get-folder-by-id"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "id": (wrappedValue: id.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiPromptFolder>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Import bundle
     
     See also:
     REST API Reference for aiPromptsImportBundle Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-import-bundle/
     - parameter aiPromptsImportBundleRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiImportResult
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiPromptsImportBundle(aiPromptsImportBundleRequest: AiPromptsImportBundleRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiImportResult {
        return try await aiPromptsImportBundleWithRequestBuilder(aiPromptsImportBundleRequest: aiPromptsImportBundleRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Import bundle
     
     See also:
     REST API Reference for aiPromptsImportBundle Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-import-bundle/
     
     - POST /api/2.0/ai/prompts/import-bundle
     - Restores a prompt bundle. `replace` wipes the current prompts and folders before writing the bundle, `merge` writes the bundle on top of what is already there; both validate the folder references inside the bundle before any write, so a corrupt bundle is rejected whole.
     - parameter aiPromptsImportBundleRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiImportResult> 
     */
    open class func aiPromptsImportBundleWithRequestBuilder(aiPromptsImportBundleRequest: AiPromptsImportBundleRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiImportResult> {
        let localVariablePath = "/api/2.0/ai/prompts/import-bundle"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: aiPromptsImportBundleRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiImportResult>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     List
     
     See also:
     REST API Reference for aiPromptsList Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-list/
     - parameter folderId: (query) The prompt folder identifier. Omit to list the prompts that sit outside any folder. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: [AiPrompt]
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiPromptsList(folderId: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> [AiPrompt] {
        return try await aiPromptsListWithRequestBuilder(folderId: folderId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     List
     
     See also:
     REST API Reference for aiPromptsList Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-list/
     
     - GET /api/2.0/ai/prompts/list
     - Lists saved prompts. Scope the answer to one folder, ask for the root-level prompts only, or omit the folder to get every prompt newest first.
     - parameter folderId: (query) The prompt folder identifier. Omit to list the prompts that sit outside any folder. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<[AiPrompt]> 
     */
    open class func aiPromptsListWithRequestBuilder(folderId: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<[AiPrompt]> {
        let localVariablePath = "/api/2.0/ai/prompts/list"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "folderId": (wrappedValue: folderId?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[AiPrompt]>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     List folders
     
     See also:
     REST API Reference for aiPromptsListFolders Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-list-folders/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: [AiPromptFolder]
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiPromptsListFolders(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> [AiPromptFolder] {
        return try await aiPromptsListFoldersWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     List folders
     
     See also:
     REST API Reference for aiPromptsListFolders Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-list-folders/
     
     - GET /api/2.0/ai/prompts/list-folders
     - Lists the prompt folders, newest first.
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<[AiPromptFolder]> 
     */
    open class func aiPromptsListFoldersWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<[AiPromptFolder]> {
        let localVariablePath = "/api/2.0/ai/prompts/list-folders"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[AiPromptFolder]>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Move
     
     See also:
     REST API Reference for aiPromptsMove Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-move/
     - parameter aiPromptsMoveRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiPromptMutationResult
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiPromptsMove(aiPromptsMoveRequest: AiPromptsMoveRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiPromptMutationResult {
        return try await aiPromptsMoveWithRequestBuilder(aiPromptsMoveRequest: aiPromptsMoveRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Move
     
     See also:
     REST API Reference for aiPromptsMove Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-move/
     
     - PUT /api/2.0/ai/prompts/move
     - Moves a saved prompt into another folder, or to the root. The name is re-validated in the target folder, so the move fails when a prompt of that name is already there.
     - parameter aiPromptsMoveRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiPromptMutationResult> 
     */
    open class func aiPromptsMoveWithRequestBuilder(aiPromptsMoveRequest: AiPromptsMoveRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiPromptMutationResult> {
        let localVariablePath = "/api/2.0/ai/prompts/move"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: aiPromptsMoveRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiPromptMutationResult>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Rename folder
     
     See also:
     REST API Reference for aiPromptsRenameFolder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-rename-folder/
     - parameter aiPromptsRenameFolderRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiFolderMutationResult
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiPromptsRenameFolder(aiPromptsRenameFolderRequest: AiPromptsRenameFolderRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiFolderMutationResult {
        return try await aiPromptsRenameFolderWithRequestBuilder(aiPromptsRenameFolderRequest: aiPromptsRenameFolderRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Rename folder
     
     See also:
     REST API Reference for aiPromptsRenameFolder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-rename-folder/
     
     - PUT /api/2.0/ai/prompts/rename-folder
     - Renames a prompt folder, validating the new name against the existing folders.
     - parameter aiPromptsRenameFolderRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiFolderMutationResult> 
     */
    open class func aiPromptsRenameFolderWithRequestBuilder(aiPromptsRenameFolderRequest: AiPromptsRenameFolderRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiFolderMutationResult> {
        let localVariablePath = "/api/2.0/ai/prompts/rename-folder"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: aiPromptsRenameFolderRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiFolderMutationResult>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Update
     
     See also:
     REST API Reference for aiPromptsUpdate Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-update/
     - parameter aiPromptsUpdateRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiPromptMutationResult
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiPromptsUpdate(aiPromptsUpdateRequest: AiPromptsUpdateRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiPromptMutationResult {
        return try await aiPromptsUpdateWithRequestBuilder(aiPromptsUpdateRequest: aiPromptsUpdateRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Update
     
     See also:
     REST API Reference for aiPromptsUpdate Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-update/
     
     - PUT /api/2.0/ai/prompts/update
     - Updates a saved prompt. The name and the folder reference are re-validated whenever either of them changes.
     - parameter aiPromptsUpdateRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiPromptMutationResult> 
     */
    open class func aiPromptsUpdateWithRequestBuilder(aiPromptsUpdateRequest: AiPromptsUpdateRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiPromptMutationResult> {
        let localVariablePath = "/api/2.0/ai/prompts/update"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: aiPromptsUpdateRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiPromptMutationResult>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }
}
