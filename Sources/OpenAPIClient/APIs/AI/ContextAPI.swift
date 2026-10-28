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

open class AIContextAPIApi {

    /**
     Get context folders
     
     See also:
     REST API Reference for aiContextGetContextFolders Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-context-get-context-folders/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiSuccessResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiContextGetContextFolders(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiSuccessResponse {
        return try await aiContextGetContextFoldersWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get context folders
     
     See also:
     REST API Reference for aiContextGetContextFolders Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-context-get-context-folders/
     
     - GET /api/2.0/ai/context/get-context-folders
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiSuccessResponse> 
     */
    open class func aiContextGetContextFoldersWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiSuccessResponse> {
        let localVariablePath = "/api/2.0/ai/context/get-context-folders"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiSuccessResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get room skill
     
     See also:
     REST API Reference for aiContextGetRoomSkill Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-context-get-room-skill/
     - parameter cloud: (query)       - parameter roomId: (query)       - parameter skillId: (query)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiSuccessResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiContextGetRoomSkill(cloud: String, roomId: String, skillId: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiSuccessResponse {
        return try await aiContextGetRoomSkillWithRequestBuilder(cloud: cloud, roomId: roomId, skillId: skillId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get room skill
     
     See also:
     REST API Reference for aiContextGetRoomSkill Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-context-get-room-skill/
     
     - GET /api/2.0/ai/context/get-room-skill
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter cloud: (query)  
     - parameter roomId: (query)  
     - parameter skillId: (query)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiSuccessResponse> 
     */
    open class func aiContextGetRoomSkillWithRequestBuilder(cloud: String, roomId: String, skillId: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiSuccessResponse> {
        let localVariablePath = "/api/2.0/ai/context/get-room-skill"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableQueryItems: [String: (wrappedValue: (any Sendable)?, isExplode: Bool)] = [
            "cloud": (wrappedValue: cloud.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "roomId": (wrappedValue: roomId.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "skillId": (wrappedValue: skillId.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ]
        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems(localVariableQueryItems)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiSuccessResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get room skills
     
     See also:
     REST API Reference for aiContextGetRoomSkills Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-context-get-room-skills/
     - parameter cloud: (query)       - parameter roomId: (query)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiSuccessResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiContextGetRoomSkills(cloud: String, roomId: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiSuccessResponse {
        return try await aiContextGetRoomSkillsWithRequestBuilder(cloud: cloud, roomId: roomId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get room skills
     
     See also:
     REST API Reference for aiContextGetRoomSkills Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-context-get-room-skills/
     
     - GET /api/2.0/ai/context/get-room-skills
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter cloud: (query)  
     - parameter roomId: (query)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiSuccessResponse> 
     */
    open class func aiContextGetRoomSkillsWithRequestBuilder(cloud: String, roomId: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiSuccessResponse> {
        let localVariablePath = "/api/2.0/ai/context/get-room-skills"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableQueryItems: [String: (wrappedValue: (any Sendable)?, isExplode: Bool)] = [
            "cloud": (wrappedValue: cloud.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "roomId": (wrappedValue: roomId.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ]
        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems(localVariableQueryItems)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiSuccessResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
