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

open class RoomsAIApi {

    /**
     Get the AI project model
     
     See also:
     REST API Reference for getProjectModel Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-project-model/
     - parameter id: (path) The room to act on, named by the identifier that `GET api/2.0/files/rooms` reports for it. Rooms kept in the  portal itself use whole numbers, while a room backed by a connected third-party account uses the string form  of the same listing. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiProjectModelWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getProjectModel(id: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiProjectModelWrapper {
        return try await getProjectModelWithRequestBuilder(id: id, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the AI project model
     
     See also:
     REST API Reference for getProjectModel Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-project-model/
     
     - GET /api/2.0/files/rooms/{id}/model
     - Returns the AI model selected for the chat of an AI project, as the ID of an AI model profile. Any project member with read access may call it. The call is read-only. The result holds only the project's own choice: `profileId` is null when nobody has selected a model for the project yet, or when the selected profile has been removed from the portal since. In both cases the portal-wide model is used instead, which this operation does not return. To change the model, use `PUT api/2.0/files/rooms/{id}/model`.
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
     - parameter id: (path) The room to act on, named by the identifier that `GET api/2.0/files/rooms` reports for it. Rooms kept in the  portal itself use whole numbers, while a room backed by a connected third-party account uses the string form  of the same listing. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiProjectModelWrapper> 
     */
    open class func getProjectModelWithRequestBuilder(id: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiProjectModelWrapper> {
        var localVariablePath = "/api/2.0/files/rooms/{id}/model"
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

        let localVariableRequestBuilder: RequestBuilder<AiProjectModelWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get the AI project sources
     
     See also:
     REST API Reference for getProjectSources Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-project-sources/
     - parameter id: (path) The room to act on, named by the identifier that `GET api/2.0/files/rooms` reports for it. Rooms kept in the  portal itself use whole numbers, while a room backed by a connected third-party account uses the string form  of the same listing. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiProjectSourcesWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getProjectSources(id: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiProjectSourcesWrapper {
        return try await getProjectSourcesWithRequestBuilder(id: id, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the AI project sources
     
     See also:
     REST API Reference for getProjectSources Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-project-sources/
     
     - GET /api/2.0/files/rooms/{id}/sources
     - Returns the Instructions and Knowledge rooms linked to an AI project as its sources.
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
     - parameter id: (path) The room to act on, named by the identifier that `GET api/2.0/files/rooms` reports for it. Rooms kept in the  portal itself use whole numbers, while a room backed by a connected third-party account uses the string form  of the same listing. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiProjectSourcesWrapper> 
     */
    open class func getProjectSourcesWithRequestBuilder(id: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiProjectSourcesWrapper> {
        var localVariablePath = "/api/2.0/files/rooms/{id}/sources"
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

        let localVariableRequestBuilder: RequestBuilder<AiProjectSourcesWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get the skills of an AI room
     
     See also:
     REST API Reference for getRoomSkills Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-skills/
     - parameter id: (path) The room to act on, named by the identifier that `GET api/2.0/files/rooms` reports for it. Rooms kept in the  portal itself use whole numbers, while a room backed by a connected third-party account uses the string form  of the same listing. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiSkillsWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getRoomSkills(id: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiSkillsWrapper {
        return try await getRoomSkillsWithRequestBuilder(id: id, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the skills of an AI room
     
     See also:
     REST API Reference for getRoomSkills Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-skills/
     
     - GET /api/2.0/files/rooms/{id}/skills
     - Returns the skills of an Instructions room, or of the Instructions rooms linked to an AI project.
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
     - parameter id: (path) The room to act on, named by the identifier that `GET api/2.0/files/rooms` reports for it. Rooms kept in the  portal itself use whole numbers, while a room backed by a connected third-party account uses the string form  of the same listing. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiSkillsWrapper> 
     */
    open class func getRoomSkillsWithRequestBuilder(id: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiSkillsWrapper> {
        var localVariablePath = "/api/2.0/files/rooms/{id}/skills"
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

        let localVariableRequestBuilder: RequestBuilder<AiSkillsWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get the skills of Instructions rooms
     
     See also:
     REST API Reference for getRoomsSkills Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-rooms-skills/
     - parameter roomIds: (query) IDs of the Instructions rooms, one `roomIds` query item per room; 1 to 20 items. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiSkillsWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getRoomsSkills(roomIds: Set<Int>? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiSkillsWrapper {
        return try await getRoomsSkillsWithRequestBuilder(roomIds: roomIds, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the skills of Instructions rooms
     
     See also:
     REST API Reference for getRoomsSkills Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-rooms-skills/
     
     - GET /api/2.0/files/rooms/skills
     - Returns the skills of several Instructions rooms. Rooms the caller cannot read are left out.
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
     - parameter roomIds: (query) IDs of the Instructions rooms, one `roomIds` query item per room; 1 to 20 items. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiSkillsWrapper> 
     */
    open class func getRoomsSkillsWithRequestBuilder(roomIds: Set<Int>? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiSkillsWrapper> {
        let localVariablePath = "/api/2.0/files/rooms/skills"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableQueryItems: [String: (wrappedValue: (any Sendable)?, isExplode: Bool)] = [
            "roomIds": (wrappedValue: roomIds?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ]
        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems(localVariableQueryItems)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiSkillsWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Link sources to an AI project
     
     See also:
     REST API Reference for linkProjectSources Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/link-project-sources/
     - parameter id: (path) ID of the project.      - parameter linkAiProjectSourcesRequest: (body) The rooms to link. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func linkProjectSources(id: Int, linkAiProjectSourcesRequest: LinkAiProjectSourcesRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await linkProjectSourcesWithRequestBuilder(id: id, linkAiProjectSourcesRequest: linkAiProjectSourcesRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Link sources to an AI project
     
     See also:
     REST API Reference for linkProjectSources Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/link-project-sources/
     
     - POST /api/2.0/files/rooms/{id}/sources
     - Links Instructions and Knowledge rooms to an AI project as its sources, which gives every project member read access to them. The caller must manage the project and each listed room; rooms that are already linked are skipped.
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
     - parameter id: (path) ID of the project. 
     - parameter linkAiProjectSourcesRequest: (body) The rooms to link. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func linkProjectSourcesWithRequestBuilder(id: Int, linkAiProjectSourcesRequest: LinkAiProjectSourcesRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<Void> {
        var localVariablePath = "/api/2.0/files/rooms/{id}/sources"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: linkAiProjectSourcesRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Set the AI project model
     
     See also:
     REST API Reference for setProjectModel Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-project-model/
     - parameter id: (path) ID of the project.      - parameter updateAiProjectModelRequest: (body) The model to set. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiProjectModelWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func setProjectModel(id: Int, updateAiProjectModelRequest: UpdateAiProjectModelRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiProjectModelWrapper {
        return try await setProjectModelWithRequestBuilder(id: id, updateAiProjectModelRequest: updateAiProjectModelRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Set the AI project model
     
     See also:
     REST API Reference for setProjectModel Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-project-model/
     
     - PUT /api/2.0/files/rooms/{id}/model
     - Selects the AI model that answers in the chat of an AI project, replacing the previous choice, and returns the model now selected. Take `profileId` from the profiles that `GET api/2.0/ai/profiles/list` returns. The caller must be able to edit the project; reading it is not enough. The change applies to every member of the project, is recorded in the audit trail and notifies the project's open clients. Repeating the call with the same profile changes nothing. A model can only be replaced by another one: there is no operation that clears the selection and returns the project to the portal-wide model. The profile must exist on the portal and be able to chat; a profile known to serve only other kinds of tasks, such as image generation, is refused with 400.
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
     - parameter id: (path) ID of the project. 
     - parameter updateAiProjectModelRequest: (body) The model to set. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiProjectModelWrapper> 
     */
    open class func setProjectModelWithRequestBuilder(id: Int, updateAiProjectModelRequest: UpdateAiProjectModelRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiProjectModelWrapper> {
        var localVariablePath = "/api/2.0/files/rooms/{id}/model"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateAiProjectModelRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiProjectModelWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Unlink sources from an AI project
     
     See also:
     REST API Reference for unlinkProjectSources Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/unlink-project-sources/
     - parameter id: (path) ID of the project.      - parameter unlinkAiProjectSourcesRequest: (body) The rooms to unlink. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func unlinkProjectSources(id: Int, unlinkAiProjectSourcesRequest: UnlinkAiProjectSourcesRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await unlinkProjectSourcesWithRequestBuilder(id: id, unlinkAiProjectSourcesRequest: unlinkAiProjectSourcesRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Unlink sources from an AI project
     
     See also:
     REST API Reference for unlinkProjectSources Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/unlink-project-sources/
     
     - DELETE /api/2.0/files/rooms/{id}/sources
     - Unlinks Instructions and Knowledge rooms from an AI project; project members lose the access the link gave them. The caller must manage the project, rights on the rooms are not checked; the rooms themselves are not changed.
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
     - parameter id: (path) ID of the project. 
     - parameter unlinkAiProjectSourcesRequest: (body) The rooms to unlink. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func unlinkProjectSourcesWithRequestBuilder(id: Int, unlinkAiProjectSourcesRequest: UnlinkAiProjectSourcesRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<Void> {
        var localVariablePath = "/api/2.0/files/rooms/{id}/sources"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: unlinkAiProjectSourcesRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
