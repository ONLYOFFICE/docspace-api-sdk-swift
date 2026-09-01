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
     Create an agent
     
     See also:
     REST API Reference for aiAgentsCreate Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-create/
     - parameter aiAgentsCreateRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiFolderIntegerWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiAgentsCreate(aiAgentsCreateRequest: AiAgentsCreateRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiFolderIntegerWrapper {
        return try await aiAgentsCreateWithRequestBuilder(aiAgentsCreateRequest: aiAgentsCreateRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Create an agent
     
     See also:
     REST API Reference for aiAgentsCreate Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-create/
     
     - POST /api/2.0/ai/agents
     - Creates an AI agent room in the .NET AI service and binds the supplied `profileId` to it as a `Chat` assignment. The instruction is stored on the room as a prompt-only chat setting; a failed binding is reported as an error even though the room already exists.
     - parameter aiAgentsCreateRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiFolderIntegerWrapper> 
     */
    open class func aiAgentsCreateWithRequestBuilder(aiAgentsCreateRequest: AiAgentsCreateRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiFolderIntegerWrapper> {
        let localVariablePath = "/api/2.0/ai/agents"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: aiAgentsCreateRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiFolderIntegerWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
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
     - Deletes an AI agent room.
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

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Get an agent
     
     See also:
     REST API Reference for aiAgentsGet Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-get/
     - parameter id: (path) The agent identifier. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiFolderIntegerWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiAgentsGet(id: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiFolderIntegerWrapper {
        return try await aiAgentsGetWithRequestBuilder(id: id, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get an agent
     
     See also:
     REST API Reference for aiAgentsGet Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-get/
     
     - GET /api/2.0/ai/agents/{id}
     - Returns one AI agent room, enriched with the `profileId` bound to it so an edit form can prefill the profile selector. A missing assignment simply leaves `profileId` out.
     - parameter id: (path) The agent identifier. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiFolderIntegerWrapper> 
     */
    open class func aiAgentsGetWithRequestBuilder(id: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiFolderIntegerWrapper> {
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

        let localVariableRequestBuilder: RequestBuilder<AiFolderIntegerWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     List agents
     
     See also:
     REST API Reference for aiAgentsList Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-list/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiFolderContentIntegerWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiAgentsList(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiFolderContentIntegerWrapper {
        return try await aiAgentsListWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     List agents
     
     See also:
     REST API Reference for aiAgentsList Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-list/
     
     - GET /api/2.0/ai/agents
     - Lists the portal's AI agent rooms. Query parameters are forwarded unchanged to the .NET AI service, which answers with its folder-content payload.
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiFolderContentIntegerWrapper> 
     */
    open class func aiAgentsListWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiFolderContentIntegerWrapper> {
        let localVariablePath = "/api/2.0/ai/agents"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiFolderContentIntegerWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
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
     - Lists the new items across the caller's AI agent rooms.
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

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Reset agents' quota
     
     See also:
     REST API Reference for aiAgentsResetQuota Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-reset-quota/
     - parameter aiAgentsResetQuotaRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiFolderIntegerArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiAgentsResetQuota(aiAgentsResetQuotaRequest: AiAgentsResetQuotaRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiFolderIntegerArrayWrapper {
        return try await aiAgentsResetQuotaWithRequestBuilder(aiAgentsResetQuotaRequest: aiAgentsResetQuotaRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Reset agents' quota
     
     See also:
     REST API Reference for aiAgentsResetQuota Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-reset-quota/
     
     - PUT /api/2.0/ai/agents/resetquota
     - Resets the storage quota of the given AI agent rooms.
     - parameter aiAgentsResetQuotaRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiFolderIntegerArrayWrapper> 
     */
    open class func aiAgentsResetQuotaWithRequestBuilder(aiAgentsResetQuotaRequest: AiAgentsResetQuotaRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiFolderIntegerArrayWrapper> {
        let localVariablePath = "/api/2.0/ai/agents/resetquota"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: aiAgentsResetQuotaRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiFolderIntegerArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Update an agent
     
     See also:
     REST API Reference for aiAgentsUpdate Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-update/
     - parameter id: (path) The agent identifier.      - parameter aiAgentsUpdateRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiFolderIntegerWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiAgentsUpdate(id: String, aiAgentsUpdateRequest: AiAgentsUpdateRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiFolderIntegerWrapper {
        return try await aiAgentsUpdateWithRequestBuilder(id: id, aiAgentsUpdateRequest: aiAgentsUpdateRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Update an agent
     
     See also:
     REST API Reference for aiAgentsUpdate Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-update/
     
     - PUT /api/2.0/ai/agents/{id}
     - Updates an AI agent room - title, tags, instruction. `profileId` is not part of the room contract: it is stripped from the forwarded body and re-bound as the agent's assignment afterwards.
     - parameter id: (path) The agent identifier. 
     - parameter aiAgentsUpdateRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiFolderIntegerWrapper> 
     */
    open class func aiAgentsUpdateWithRequestBuilder(id: String, aiAgentsUpdateRequest: AiAgentsUpdateRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiFolderIntegerWrapper> {
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

        let localVariableRequestBuilder: RequestBuilder<AiFolderIntegerWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Update agents' quota
     
     See also:
     REST API Reference for aiAgentsUpdateQuota Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-update-quota/
     - parameter aiAgentsUpdateQuotaRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiFolderIntegerArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiAgentsUpdateQuota(aiAgentsUpdateQuotaRequest: AiAgentsUpdateQuotaRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiFolderIntegerArrayWrapper {
        return try await aiAgentsUpdateQuotaWithRequestBuilder(aiAgentsUpdateQuotaRequest: aiAgentsUpdateQuotaRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Update agents' quota
     
     See also:
     REST API Reference for aiAgentsUpdateQuota Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-update-quota/
     
     - PUT /api/2.0/ai/agents/agentquota
     - Changes the storage quota of the given AI agent rooms.
     - parameter aiAgentsUpdateQuotaRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiFolderIntegerArrayWrapper> 
     */
    open class func aiAgentsUpdateQuotaWithRequestBuilder(aiAgentsUpdateQuotaRequest: AiAgentsUpdateQuotaRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiFolderIntegerArrayWrapper> {
        let localVariablePath = "/api/2.0/ai/agents/agentquota"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: aiAgentsUpdateQuotaRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiFolderIntegerArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }
}
