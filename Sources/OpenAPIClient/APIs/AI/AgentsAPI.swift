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
     Create an ai agent
     
     See also:
     REST API Reference for createAgent Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-agent/
     - parameter createAgentRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FolderIntegerWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func createAgent(createAgentRequestDto: CreateAgentRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FolderIntegerWrapper {
        return try await createAgentWithRequestBuilder(createAgentRequestDto: createAgentRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Create an ai agent
     
     See also:
     REST API Reference for createAgent Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-agent/
     
     - POST /api/2.0/ai/agents
     - Creates an ai agent.
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
     - parameter createAgentRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FolderIntegerWrapper> 
     */
    open class func createAgentWithRequestBuilder(createAgentRequestDto: CreateAgentRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FolderIntegerWrapper> {
        let localVariablePath = "/api/2.0/ai/agents"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createAgentRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FolderIntegerWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Remove an ai agent
     
     See also:
     REST API Reference for deleteAgent Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-agent/
     - parameter id: (path) The room ID.      - parameter deleteRoomRequest: (body) The parameters for deleting a room. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FileOperationWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func deleteAgent(id: Int, deleteRoomRequest: DeleteRoomRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FileOperationWrapper {
        return try await deleteAgentWithRequestBuilder(id: id, deleteRoomRequest: deleteRoomRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Remove an ai agent
     
     See also:
     REST API Reference for deleteAgent Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-agent/
     
     - DELETE /api/2.0/ai/agents/{id}
     - Removes an ai agent.
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
     - parameter id: (path) The room ID. 
     - parameter deleteRoomRequest: (body) The parameters for deleting a room. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FileOperationWrapper> 
     */
    open class func deleteAgentWithRequestBuilder(id: Int, deleteRoomRequest: DeleteRoomRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FileOperationWrapper> {
        var localVariablePath = "/api/2.0/ai/agents/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: deleteRoomRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FileOperationWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Return an ai agent
     
     See also:
     REST API Reference for getAgentInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-agent-info/
     - parameter id: (path) The room ID. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FolderIntegerWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getAgentInfo(id: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FolderIntegerWrapper {
        return try await getAgentInfoWithRequestBuilder(id: id, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Return an ai agent
     
     See also:
     REST API Reference for getAgentInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-agent-info/
     
     - GET /api/2.0/ai/agents/{id}
     - Returns an ai agent.
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
     - parameter id: (path) The room ID. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FolderIntegerWrapper> 
     */
    open class func getAgentInfoWithRequestBuilder(id: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FolderIntegerWrapper> {
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

        let localVariableRequestBuilder: RequestBuilder<FolderIntegerWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get ai agents
     
     See also:
     REST API Reference for getAgents Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-agents/
     - parameter subjectId: (query) The filter by user ID. (optional)     - parameter withoutTags: (query) Specifies whether to search by tags or not. (optional)     - parameter tags: (query) The tags in the serialized format. (optional)     - parameter excludeSubject: (query) Specifies whether to exclude search by user or group ID. (optional)     - parameter subjectFilter: (query) The filter by user (Owner - 0, Member - 1). (optional)     - parameter quotaFilter: (query) The filter by quota (All - 0, Default - 1, Custom - 2). (optional)     - parameter count: (query) Specifies the maximum number of items to retrieve. (optional)     - parameter startIndex: (query) The index from which to start retrieving the room content. (optional)     - parameter sortBy: (query) Specifies the field by which the room content should be sorted. (optional)     - parameter sortOrder: (query) The order in which the results are sorted. (optional)     - parameter filterValue: (query) The text filter value used to refine search or query operations. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FolderContentIntegerWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getAgents(subjectId: String? = nil, withoutTags: Bool? = nil, tags: String? = nil, excludeSubject: Bool? = nil, subjectFilter: SubjectFilter? = nil, quotaFilter: QuotaFilter? = nil, count: Int? = nil, startIndex: Int? = nil, sortBy: String? = nil, sortOrder: SortOrder? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FolderContentIntegerWrapper {
        return try await getAgentsWithRequestBuilder(subjectId: subjectId, withoutTags: withoutTags, tags: tags, excludeSubject: excludeSubject, subjectFilter: subjectFilter, quotaFilter: quotaFilter, count: count, startIndex: startIndex, sortBy: sortBy, sortOrder: sortOrder, filterValue: filterValue, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get ai agents
     
     See also:
     REST API Reference for getAgents Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-agents/
     
     - GET /api/2.0/ai/agents
     - Get ai agents
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
     - parameter subjectId: (query) The filter by user ID. (optional)
     - parameter withoutTags: (query) Specifies whether to search by tags or not. (optional)
     - parameter tags: (query) The tags in the serialized format. (optional)
     - parameter excludeSubject: (query) Specifies whether to exclude search by user or group ID. (optional)
     - parameter subjectFilter: (query) The filter by user (Owner - 0, Member - 1). (optional)
     - parameter quotaFilter: (query) The filter by quota (All - 0, Default - 1, Custom - 2). (optional)
     - parameter count: (query) Specifies the maximum number of items to retrieve. (optional)
     - parameter startIndex: (query) The index from which to start retrieving the room content. (optional)
     - parameter sortBy: (query) Specifies the field by which the room content should be sorted. (optional)
     - parameter sortOrder: (query) The order in which the results are sorted. (optional)
     - parameter filterValue: (query) The text filter value used to refine search or query operations. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FolderContentIntegerWrapper> 
     */
    open class func getAgentsWithRequestBuilder(subjectId: String? = nil, withoutTags: Bool? = nil, tags: String? = nil, excludeSubject: Bool? = nil, subjectFilter: SubjectFilter? = nil, quotaFilter: QuotaFilter? = nil, count: Int? = nil, startIndex: Int? = nil, sortBy: String? = nil, sortOrder: SortOrder? = nil, filterValue: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FolderContentIntegerWrapper> {
        let localVariablePath = "/api/2.0/ai/agents"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "subjectId": (wrappedValue: subjectId?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "withoutTags": (wrappedValue: withoutTags?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "tags": (wrappedValue: tags?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "excludeSubject": (wrappedValue: excludeSubject?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "subjectFilter": (wrappedValue: subjectFilter?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "quotaFilter": (wrappedValue: quotaFilter?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
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
     Get the room new items
     
     See also:
     REST API Reference for getAgentsNewItems Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-agents-new-items/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: NewItemsAgentNewItemsArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getAgentsNewItems(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> NewItemsAgentNewItemsArrayWrapper {
        return try await getAgentsNewItemsWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the room new items
     
     See also:
     REST API Reference for getAgentsNewItems Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-agents-new-items/
     
     - GET /api/2.0/ai/agents/news
     - Returns the room new items.
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
     - returns: RequestBuilder<NewItemsAgentNewItemsArrayWrapper> 
     */
    open class func getAgentsNewItemsWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<NewItemsAgentNewItemsArrayWrapper> {
        let localVariablePath = "/api/2.0/ai/agents/news"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<NewItemsAgentNewItemsArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Reset the AI agents quota limit
     
     See also:
     REST API Reference for resetAgentsQuota Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/reset-agents-quota/
     - parameter updateRoomsRoomIdsRequestDtoInteger: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FolderIntegerArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func resetAgentsQuota(updateRoomsRoomIdsRequestDtoInteger: UpdateRoomsRoomIdsRequestDtoInteger? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FolderIntegerArrayWrapper {
        return try await resetAgentsQuotaWithRequestBuilder(updateRoomsRoomIdsRequestDtoInteger: updateRoomsRoomIdsRequestDtoInteger, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Reset the AI agents quota limit
     
     See also:
     REST API Reference for resetAgentsQuota Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/reset-agents-quota/
     
     - PUT /api/2.0/ai/agents/resetquota
     - Resets the quota limit for the AI agents with the IDs specified in the request.
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
     - parameter updateRoomsRoomIdsRequestDtoInteger: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FolderIntegerArrayWrapper> 
     */
    open class func resetAgentsQuotaWithRequestBuilder(updateRoomsRoomIdsRequestDtoInteger: UpdateRoomsRoomIdsRequestDtoInteger? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FolderIntegerArrayWrapper> {
        let localVariablePath = "/api/2.0/ai/agents/resetquota"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateRoomsRoomIdsRequestDtoInteger, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FolderIntegerArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Update an ai agent
     
     See also:
     REST API Reference for updateAgent Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/update-agent/
     - parameter id: (path) The room ID.      - parameter updateRoomRequest: (body) The request parameters for updating a room. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FolderIntegerWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func updateAgent(id: Int, updateRoomRequest: UpdateRoomRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FolderIntegerWrapper {
        return try await updateAgentWithRequestBuilder(id: id, updateRoomRequest: updateRoomRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Update an ai agent
     
     See also:
     REST API Reference for updateAgent Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/update-agent/
     
     - PUT /api/2.0/ai/agents/{id}
     - Updates an ai agent.
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
     - parameter id: (path) The room ID. 
     - parameter updateRoomRequest: (body) The request parameters for updating a room. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FolderIntegerWrapper> 
     */
    open class func updateAgentWithRequestBuilder(id: Int, updateRoomRequest: UpdateRoomRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FolderIntegerWrapper> {
        var localVariablePath = "/api/2.0/ai/agents/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateRoomRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FolderIntegerWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Change the AI agent quota limit
     
     See also:
     REST API Reference for updateAgentsQuota Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/update-agents-quota/
     - parameter updateRoomsQuotaRequestDtoInteger: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: FolderIntegerArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func updateAgentsQuota(updateRoomsQuotaRequestDtoInteger: UpdateRoomsQuotaRequestDtoInteger? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> FolderIntegerArrayWrapper {
        return try await updateAgentsQuotaWithRequestBuilder(updateRoomsQuotaRequestDtoInteger: updateRoomsQuotaRequestDtoInteger, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Change the AI agent quota limit
     
     See also:
     REST API Reference for updateAgentsQuota Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/update-agents-quota/
     
     - PUT /api/2.0/ai/agents/agentquota
     - Changes the quota limit for the AI agents with the IDs specified in the request.
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
     - parameter updateRoomsQuotaRequestDtoInteger: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<FolderIntegerArrayWrapper> 
     */
    open class func updateAgentsQuotaWithRequestBuilder(updateRoomsQuotaRequestDtoInteger: UpdateRoomsQuotaRequestDtoInteger? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<FolderIntegerArrayWrapper> {
        let localVariablePath = "/api/2.0/ai/agents/agentquota"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateRoomsQuotaRequestDtoInteger, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FolderIntegerArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

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
