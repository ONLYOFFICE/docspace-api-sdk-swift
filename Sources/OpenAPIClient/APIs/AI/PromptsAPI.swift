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
     Save a prompt
     
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
     Save a prompt
     
     See also:
     REST API Reference for aiPromptsCreate Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-create/
     
     - POST /api/2.0/ai/prompts/create
     - Saves a new prompt in the caller's own prompt library and returns it. The name has to be non-empty and unique inside its folder, and `folderId` has to name an existing folder - omit it to save the prompt at the root. Prompts are per-user: another user's library is never visible here, and no permission beyond having AI enabled is needed. The answer carries the stored prompt including the ID to use with the update, move and delete operations.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
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

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Create folder
     
     See also:
     REST API Reference for aiPromptsCreateFolder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-create-folder/
     - parameter body: (body) The name of the folder to create, as a bare JSON string. 
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
     - Creates a folder in the caller's prompt library and returns it. The name has to be non-empty and unique across that library. Folders do not nest: there is one flat level, so a folder cannot be created inside another. The answer carries the folder ID to use as `folderId` when saving or moving prompts.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter body: (body) The name of the folder to create, as a bare JSON string. 
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

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Delete a saved prompt
     
     See also:
     REST API Reference for aiPromptsDelete Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-delete/
     - parameter body: (body) The ID of the prompt to delete, as a bare JSON string. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiSuccessResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiPromptsDelete(body: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiSuccessResponse {
        return try await aiPromptsDeleteWithRequestBuilder(body: body, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Delete a saved prompt
     
     See also:
     REST API Reference for aiPromptsDelete Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-delete/
     
     - DELETE /api/2.0/ai/prompts/delete
     - Deletes one saved prompt from the caller's library. The ID may be sent in the body or as a query parameter, and it is required. An ID that does not exist, or that belongs to another user, is not reported: the call answers success without deleting anything. The deletion is permanent.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter body: (body) The ID of the prompt to delete, as a bare JSON string. 
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

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Delete folder
     
     See also:
     REST API Reference for aiPromptsDeleteFolder Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-delete-folder/
     - parameter body: (body) The ID of the folder to delete, as a bare JSON string. 
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
     - Deletes a folder together with every prompt inside it, permanently. The ID is required and may be sent in the body or as a query parameter. Unlike deleting a prompt, this checks first: a folder that does not exist, and one that belongs to another user, both answer 404 - the two cases are deliberately indistinguishable, so a foreign folder cannot be probed. Move the prompts out with `PUT api/2.0/ai/prompts/move` first if they should survive.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter body: (body) The ID of the folder to delete, as a bare JSON string. 
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

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Export the prompt library
     
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
     Export the prompt library
     
     See also:
     REST API Reference for aiPromptsExport Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-export/
     
     - GET /api/2.0/ai/prompts/export
     - Builds a versioned bundle of every prompt and folder in the caller's library and returns it, with no parameters. The bundle is self-contained: it carries its own format version so an older export can still be read back, and it is the input `POST api/2.0/ai/prompts/import-bundle` expects. This is also the only way to read the whole library at once, since listing is folder-scoped. Nothing is changed by the call.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
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

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get a saved prompt
     
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
     Get a saved prompt
     
     See also:
     REST API Reference for aiPromptsGetById Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-get-by-id/
     
     - GET /api/2.0/ai/prompts/get-by-id
     - Returns one saved prompt by its ID. The ID is required and is read from the query. An ID that is unknown, or that belongs to another user, is not reported as 404: the answer is an empty body with status 200, so treat a missing payload as no such prompt. Prompt IDs come from `GET api/2.0/ai/prompts/list` or from the answer of the create operation.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
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

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get a prompt folder
     
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
     Get a prompt folder
     
     See also:
     REST API Reference for aiPromptsGetFolderById Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-get-folder-by-id/
     
     - GET /api/2.0/ai/prompts/get-folder-by-id
     - Returns one folder of the caller's prompt library by its ID, without the prompts inside it. The ID is required and is read from the query. An unknown or foreign ID is not reported as 404: the answer is an empty body with status 200. This differs from the delete operation on the same ID, which does answer 404.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
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

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
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
     - Writes a bundle produced by `GET api/2.0/ai/prompts/export` back into the caller's library. `mode` decides how: `replace` deletes the current prompts and folders before writing, and `merge` writes the bundle on top of what is already there. The folder references inside the bundle are validated before anything is written, so a corrupt bundle is rejected whole rather than applied halfway. `replace` is destructive and cannot be undone - export first if the current library matters.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
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

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     List saved prompts
     
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
     List saved prompts
     
     See also:
     REST API Reference for aiPromptsList Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-list/
     
     - GET /api/2.0/ai/prompts/list
     - Lists the caller's saved prompts, newest first. `folderId` scopes the answer to one folder, and omitting it - or sending it empty - lists the prompts that sit at the root rather than every prompt, because the client fetcher cannot tell an absent value from a null one. There is therefore no way to ask for the whole library in one call: walk the folders from `GET api/2.0/ai/prompts/list-folders`, or take everything at once with `GET api/2.0/ai/prompts/export`. The prompts of other users are never included.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
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

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
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
     - Lists every folder of the caller's prompt library, newest first, with no parameters and no pagination. Folders are flat, so the answer is a single list rather than a tree. The prompts inside them are not included - read those with `GET api/2.0/ai/prompts/list` per folder. Another user's folders are never listed.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
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

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Move a prompt to a folder
     
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
     Move a prompt to a folder
     
     See also:
     REST API Reference for aiPromptsMove Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-move/
     
     - PUT /api/2.0/ai/prompts/move
     - Moves a saved prompt into another folder, or to the root when `folderId` is omitted or null. The name is re-validated in the target folder, so the move fails when a prompt of that name already sits there - rename it first with `PUT api/2.0/ai/prompts/update`. Nothing about the prompt other than its folder changes. The answer carries the moved prompt.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
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

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
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
     - Renames a folder in the caller's prompt library, validating the new name against the folders already there. The prompts inside it are untouched and keep their IDs. The answer carries the renamed folder. A name that another folder already uses is rejected.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
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

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Update a saved prompt
     
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
     Update a saved prompt
     
     See also:
     REST API Reference for aiPromptsUpdate Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-update/
     
     - PUT /api/2.0/ai/prompts/update
     - Changes a saved prompt and returns the stored result. Only the fields present in `updates` are written, so a partial object leaves the rest of the prompt alone. The name and the folder reference are re-validated whenever either changes, which means an update can fail on a name another prompt in the same folder already uses. Use `PUT api/2.0/ai/prompts/move` to change only the folder.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
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

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
