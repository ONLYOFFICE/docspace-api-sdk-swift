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
     Create an agent
     
     See also:
     REST API Reference for aiAgentsCreate Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-create/
     - parameter aiAgentsCreateRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiFolderWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiAgentsCreate(aiAgentsCreateRequest: AiAgentsCreateRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiFolderWrapper {
        return try await aiAgentsCreateWithRequestBuilder(aiAgentsCreateRequest: aiAgentsCreateRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Create an agent
     
     See also:
     REST API Reference for aiAgentsCreate Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-create/
     
     - POST /api/2.0/ai/agents
     - Creates an AI agent room and binds a model to it, in that order. `profileId` is required, has to be a UUID, has to name an existing profile, and that profile has to support chat - an image-only model is refused here rather than failing on every later request. `prompt` is required and is stored on the room as its standing instruction with any markup stripped, so it cannot round-trip HTML into another user's reply. The two steps are not atomic: when the room is created but the model binding fails, the call reports an error and the room is left behind, so re-bind it with `PUT api/2.0/ai/agents/{id}` rather than creating a second one.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter aiAgentsCreateRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiFolderWrapper> 
     */
    open class func aiAgentsCreateWithRequestBuilder(aiAgentsCreateRequest: AiAgentsCreateRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiFolderWrapper> {
        let localVariablePath = "/api/2.0/ai/agents"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: aiAgentsCreateRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiFolderWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Delete an agent
     
     See also:
     REST API Reference for aiAgentsDelete Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-delete/
     - parameter id: (path) The agent identifier.      - parameter aiAgentsDeleteRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiFileOperationWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiAgentsDelete(id: String, aiAgentsDeleteRequest: AiAgentsDeleteRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiFileOperationWrapper {
        return try await aiAgentsDeleteWithRequestBuilder(id: id, aiAgentsDeleteRequest: aiAgentsDeleteRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Delete an agent
     
     See also:
     REST API Reference for aiAgentsDelete Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-delete/
     
     - DELETE /api/2.0/ai/agents/{id}
     - Deletes an AI agent room. The ID has to be the room's integer identifier, and the body is forwarded to the DocSpace AI service unchanged, so it accepts the same options as deleting an ordinary room - `deleteAfter` among them. Deletion is asynchronous there: the answer is a file-operation payload to poll, not a completed result. The agent's model binding is deliberately left behind, because the upstream assignment API has no per-entry delete, so an orphaned assignment row survives the room.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter id: (path) The agent identifier. 
     - parameter aiAgentsDeleteRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiFileOperationWrapper> 
     */
    open class func aiAgentsDeleteWithRequestBuilder(id: String, aiAgentsDeleteRequest: AiAgentsDeleteRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiFileOperationWrapper> {
        var localVariablePath = "/api/2.0/ai/agents/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: aiAgentsDeleteRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiFileOperationWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get an agent
     
     See also:
     REST API Reference for aiAgentsGet Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-get/
     - parameter id: (path) The agent identifier. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiAgentsGet200Response
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiAgentsGet(id: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiAgentsGet200Response {
        return try await aiAgentsGetWithRequestBuilder(id: id, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get an agent
     
     See also:
     REST API Reference for aiAgentsGet Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-get/
     
     - GET /api/2.0/ai/agents/{id}
     - Returns one AI agent room, enriched with the `profileId` currently bound to it so an edit form can prefill its model selector. The ID is the room's integer identifier, and a non-integer value is refused rather than passed on to fail opaquely upstream. The binding lives in an assignment rather than on the room, so it is looked up separately: a missing or unreadable assignment simply leaves `profileId` out of the answer instead of failing the call. The standing instruction comes back on the room as `chatSettings.prompt`.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter id: (path) The agent identifier. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiAgentsGet200Response> 
     */
    open class func aiAgentsGetWithRequestBuilder(id: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiAgentsGet200Response> {
        var localVariablePath = "/api/2.0/ai/agents/{id}"
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

        let localVariableRequestBuilder: RequestBuilder<AiAgentsGet200Response>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     List agents
     
     See also:
     REST API Reference for aiAgentsList Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-list/
     - parameter subjectId: (query) Show only the agent rooms this user takes part in. (optional)     - parameter subjectOwnerId: (query) Show only the agent rooms owned by this user. (optional)     - parameter excludeSubject: (query) Invert the user filter: leave out what `subjectId` selects instead of keeping it. (optional)     - parameter tags: (query) Show only the agent rooms carrying these tags, comma-separated. (optional)     - parameter withoutTags: (query) Show only the agent rooms that carry no tags at all. (optional)     - parameter quotaFilter: (query) Filter by quota kind: 0 for all, 1 for the default quota, 2 for a custom one. (optional)     - parameter filterValue: (query) Show only the agent rooms whose title matches this text. (optional)     - parameter sortBy: (query) Field to sort by, for example `DateAndTime`. (optional)     - parameter sortOrder: (query) Sort direction, `ascending` or `descending`. (optional)     - parameter startIndex: (query) Index of the first entry to return; 0 starts at the beginning. (optional)     - parameter count: (query) How many entries to return. The internal service applies its own default. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiFolderContentWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiAgentsList(subjectId: String? = nil, subjectOwnerId: String? = nil, excludeSubject: Bool? = nil, tags: String? = nil, withoutTags: Bool? = nil, quotaFilter: Int? = nil, filterValue: String? = nil, sortBy: String? = nil, sortOrder: String? = nil, startIndex: Int? = nil, count: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiFolderContentWrapper {
        return try await aiAgentsListWithRequestBuilder(subjectId: subjectId, subjectOwnerId: subjectOwnerId, excludeSubject: excludeSubject, tags: tags, withoutTags: withoutTags, quotaFilter: quotaFilter, filterValue: filterValue, sortBy: sortBy, sortOrder: sortOrder, startIndex: startIndex, count: count, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     List agents
     
     See also:
     REST API Reference for aiAgentsList Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-list/
     
     - GET /api/2.0/ai/agents
     - Lists the portal's AI agent rooms. The query is forwarded unchanged to the DocSpace AI service, so it takes the same paging, sorting and filtering parameters as an ordinary room listing, and the answer is that service's folder-content payload rather than a shape of this API's own. Array and object query values are dropped rather than guessed at, so send flat strings. The profile bound to each agent is not included here - read one agent with `GET api/2.0/ai/agents/{id}` for that.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter subjectId: (query) Show only the agent rooms this user takes part in. (optional)
     - parameter subjectOwnerId: (query) Show only the agent rooms owned by this user. (optional)
     - parameter excludeSubject: (query) Invert the user filter: leave out what `subjectId` selects instead of keeping it. (optional)
     - parameter tags: (query) Show only the agent rooms carrying these tags, comma-separated. (optional)
     - parameter withoutTags: (query) Show only the agent rooms that carry no tags at all. (optional)
     - parameter quotaFilter: (query) Filter by quota kind: 0 for all, 1 for the default quota, 2 for a custom one. (optional)
     - parameter filterValue: (query) Show only the agent rooms whose title matches this text. (optional)
     - parameter sortBy: (query) Field to sort by, for example `DateAndTime`. (optional)
     - parameter sortOrder: (query) Sort direction, `ascending` or `descending`. (optional)
     - parameter startIndex: (query) Index of the first entry to return; 0 starts at the beginning. (optional)
     - parameter count: (query) How many entries to return. The internal service applies its own default. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiFolderContentWrapper> 
     */
    open class func aiAgentsListWithRequestBuilder(subjectId: String? = nil, subjectOwnerId: String? = nil, excludeSubject: Bool? = nil, tags: String? = nil, withoutTags: Bool? = nil, quotaFilter: Int? = nil, filterValue: String? = nil, sortBy: String? = nil, sortOrder: String? = nil, startIndex: Int? = nil, count: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiFolderContentWrapper> {
        let localVariablePath = "/api/2.0/ai/agents"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "subjectId": (wrappedValue: subjectId?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "subjectOwnerId": (wrappedValue: subjectOwnerId?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "excludeSubject": (wrappedValue: excludeSubject?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "tags": (wrappedValue: tags?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "withoutTags": (wrappedValue: withoutTags?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "quotaFilter": (wrappedValue: quotaFilter?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "filterValue": (wrappedValue: filterValue?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "sortBy": (wrappedValue: sortBy?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "sortOrder": (wrappedValue: sortOrder?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "startIndex": (wrappedValue: startIndex?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "count": (wrappedValue: count?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]

        if let fields = self.fields {
            localVariableNillableHeaders["fields"] = fields
            self.fields = nil
        }

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiFolderContentWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     List agent news items
     
     See also:
     REST API Reference for aiAgentsNews Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-news/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiNewItemsAgentNewItemsArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiAgentsNews(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiNewItemsAgentNewItemsArrayWrapper {
        return try await aiAgentsNewsWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     List agent news items
     
     See also:
     REST API Reference for aiAgentsNews Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-news/
     
     - GET /api/2.0/ai/agents/news
     - Lists the unread items across the caller's AI agent rooms, so a badge can be rendered without walking each room. It takes no parameters and is scoped to the caller by the DocSpace AI service. The answer is that service's new-items payload. This is a read-only operation and does not mark anything as seen.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiNewItemsAgentNewItemsArrayWrapper> 
     */
    open class func aiAgentsNewsWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiNewItemsAgentNewItemsArrayWrapper> {
        let localVariablePath = "/api/2.0/ai/agents/news"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiNewItemsAgentNewItemsArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Reset agents' quota
     
     See also:
     REST API Reference for aiAgentsResetQuota Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-reset-quota/
     - parameter aiAgentsResetQuotaRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiFolderArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiAgentsResetQuota(aiAgentsResetQuotaRequest: AiAgentsResetQuotaRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiFolderArrayWrapper {
        return try await aiAgentsResetQuotaWithRequestBuilder(aiAgentsResetQuotaRequest: aiAgentsResetQuotaRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Reset agents' quota
     
     See also:
     REST API Reference for aiAgentsResetQuota Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-reset-quota/
     
     - PUT /api/2.0/ai/agents/resetquota
     - Returns the listed AI agent rooms to the portal's default storage quota, forwarding `roomIds` to the DocSpace AI service unchanged. The answer is that service's payload, one updated room per entry. This is the counterpart of `PUT api/2.0/ai/agents/agentquota` and takes no quota value of its own. Rooms already on the default are unaffected.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter aiAgentsResetQuotaRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiFolderArrayWrapper> 
     */
    open class func aiAgentsResetQuotaWithRequestBuilder(aiAgentsResetQuotaRequest: AiAgentsResetQuotaRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiFolderArrayWrapper> {
        let localVariablePath = "/api/2.0/ai/agents/resetquota"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: aiAgentsResetQuotaRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiFolderArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Update an agent
     
     See also:
     REST API Reference for aiAgentsUpdate Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-update/
     - parameter id: (path) The agent identifier.      - parameter aiAgentsUpdateRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiFolderWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiAgentsUpdate(id: String, aiAgentsUpdateRequest: AiAgentsUpdateRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiFolderWrapper {
        return try await aiAgentsUpdateWithRequestBuilder(id: id, aiAgentsUpdateRequest: aiAgentsUpdateRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Update an agent
     
     See also:
     REST API Reference for aiAgentsUpdate Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-update/
     
     - PUT /api/2.0/ai/agents/{id}
     - Changes an AI agent room - its title, tags or standing instruction - and optionally rebinds its model. The ID has to be the room's integer identifier. `profileId` is not part of the room contract: it is taken out of the forwarded body and applied afterwards as the agent's assignment, and it has to be a UUID naming an existing chat-capable profile. An instruction sent as `chatSettings.prompt` has its markup stripped, as on create; note that when `chatSettings` is present the upstream service still requires the rest of that object to be valid, so send it whole.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter id: (path) The agent identifier. 
     - parameter aiAgentsUpdateRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiFolderWrapper> 
     */
    open class func aiAgentsUpdateWithRequestBuilder(id: String, aiAgentsUpdateRequest: AiAgentsUpdateRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiFolderWrapper> {
        var localVariablePath = "/api/2.0/ai/agents/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: aiAgentsUpdateRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiFolderWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Update agents' quota
     
     See also:
     REST API Reference for aiAgentsUpdateQuota Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-update-quota/
     - parameter aiAgentsUpdateQuotaRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiFolderArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiAgentsUpdateQuota(aiAgentsUpdateQuotaRequest: AiAgentsUpdateQuotaRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiFolderArrayWrapper {
        return try await aiAgentsUpdateQuotaWithRequestBuilder(aiAgentsUpdateQuotaRequest: aiAgentsUpdateQuotaRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Update agents' quota
     
     See also:
     REST API Reference for aiAgentsUpdateQuota Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-update-quota/
     
     - PUT /api/2.0/ai/agents/agentquota
     - Sets the storage quota of the listed AI agent rooms in one call, forwarding `roomIds` and `quota` to the DocSpace AI service unchanged. The answer is that service's payload, one updated room per entry. A quota applies to the room's stored files, not to the model usage of its chats. Use `PUT api/2.0/ai/agents/resetquota` to return rooms to the portal default instead of naming a number.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter aiAgentsUpdateQuotaRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiFolderArrayWrapper> 
     */
    open class func aiAgentsUpdateQuotaWithRequestBuilder(aiAgentsUpdateQuotaRequest: AiAgentsUpdateQuotaRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiFolderArrayWrapper> {
        let localVariablePath = "/api/2.0/ai/agents/agentquota"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: aiAgentsUpdateQuotaRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiFolderArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
extension AIAgentsAPIApi {
    @discardableResult
    public func withFields(_ fields: String) -> AIAgentsAPIApi {
        self.fields = fields
        return self
    }
}
