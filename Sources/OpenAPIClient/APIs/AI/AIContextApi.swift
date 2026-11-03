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

open class AIContextApi {

    /**
     Get context folders
     
     See also:
     REST API Reference for aiContextGetContextFolders Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-context-get-context-folders/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: [AiContextFolder]
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiContextGetContextFolders(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> [AiContextFolder] {
        return try await aiContextGetContextFoldersWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get context folders
     
     See also:
     REST API Reference for aiContextGetContextFolders Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-context-get-context-folders/
     
     - GET /api/2.0/ai/context/get-context-folders
     - Lists the Instructions rooms the caller can connect to a chat as context, grouped under the account they belong to (`docspace` for this portal). Only a room the caller can read that holds at least one skill is listed: one without skills would connect nothing. An empty list means there is nothing to connect. At most 1000 Instructions rooms are read; any beyond them are left out without a signal. Read the skills of one room with `GET api/2.0/ai/context/get-room-skills`. This is a read-only operation.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<[AiContextFolder]> 
     */
    open class func aiContextGetContextFoldersWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<[AiContextFolder]> {
        let localVariablePath = "/api/2.0/ai/context/get-context-folders"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[AiContextFolder]>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get knowledge folders
     
     See also:
     REST API Reference for aiContextGetKnowledgeFolders Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-context-get-knowledge-folders/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: [AiContextFolder]
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiContextGetKnowledgeFolders(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> [AiContextFolder] {
        return try await aiContextGetKnowledgeFoldersWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get knowledge folders
     
     See also:
     REST API Reference for aiContextGetKnowledgeFolders Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-context-get-knowledge-folders/
     
     - GET /api/2.0/ai/context/get-knowledge-folders
     - Lists the Knowledge rooms the caller can connect to a chat as its knowledge base, grouped under the account they belong to (`docspace` for this portal). A connected Knowledge room limits the knowledge search of a round to it (`actionArgs.knowledgeRooms`). An empty list means there is none the caller can read. At most 1000 Knowledge rooms are listed; any beyond them are left out without a signal. This is a read-only operation.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<[AiContextFolder]> 
     */
    open class func aiContextGetKnowledgeFoldersWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<[AiContextFolder]> {
        let localVariablePath = "/api/2.0/ai/context/get-knowledge-folders"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[AiContextFolder]>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get room skill
     
     See also:
     REST API Reference for aiContextGetRoomSkill Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-context-get-room-skill/
     - parameter roomId: (query) The Instructions room identifier.      - parameter skillId: (query) The skill identifier, as `GET api/2.0/ai/context/get-room-skills` lists it.      - parameter cloud: (query) The account the room belongs to. Only `docspace`, this portal, exists, and the value is not read; omit it. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: String
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiContextGetRoomSkill(roomId: String, skillId: String, cloud: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> String {
        return try await aiContextGetRoomSkillWithRequestBuilder(roomId: roomId, skillId: skillId, cloud: cloud, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get room skill
     
     See also:
     REST API Reference for aiContextGetRoomSkill Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-context-get-room-skill/
     
     - GET /api/2.0/ai/context/get-room-skill
     - Returns the Markdown file of one skill of an Instructions room as a JSON string. `roomId` and `skillId` are required, and the skill has to be one of that room's skills: the ID of any other file, readable or not, answers 404, as does a room that is not an Instructions room the caller can read. Only the first 256 KiB of the file are read, which covers the 64 K characters a chat passes to the model; a longer file comes back cut there without a signal. This is a read-only operation.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter roomId: (query) The Instructions room identifier. 
     - parameter skillId: (query) The skill identifier, as `GET api/2.0/ai/context/get-room-skills` lists it. 
     - parameter cloud: (query) The account the room belongs to. Only `docspace`, this portal, exists, and the value is not read; omit it. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<String> 
     */
    open class func aiContextGetRoomSkillWithRequestBuilder(roomId: String, skillId: String, cloud: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<String> {
        let localVariablePath = "/api/2.0/ai/context/get-room-skill"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableQueryItems: [String: (wrappedValue: (any Sendable)?, isExplode: Bool)] = [
            "cloud": (wrappedValue: cloud?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "roomId": (wrappedValue: roomId.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "skillId": (wrappedValue: skillId.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ]
        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems(localVariableQueryItems)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<String>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get room skills
     
     See also:
     REST API Reference for aiContextGetRoomSkills Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-context-get-room-skills/
     - parameter roomId: (query) The Instructions room identifier.      - parameter cloud: (query) The account the room belongs to. Only `docspace`, this portal, exists, and the value is not read; omit it. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: [AiRoomSkill]
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiContextGetRoomSkills(roomId: String, cloud: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> [AiRoomSkill] {
        return try await aiContextGetRoomSkillsWithRequestBuilder(roomId: roomId, cloud: cloud, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get room skills
     
     See also:
     REST API Reference for aiContextGetRoomSkills Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-context-get-room-skills/
     
     - GET /api/2.0/ai/context/get-room-skills
     - Lists the skills of one Instructions room: the ID, name and description from the frontmatter of each skill file, not its body. `roomId` is required; `cloud` is accepted and not read. A room that is not an Instructions room the caller can read answers 404. Read the body of one skill with `GET api/2.0/ai/context/get-room-skill`. This is a read-only operation.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter roomId: (query) The Instructions room identifier. 
     - parameter cloud: (query) The account the room belongs to. Only `docspace`, this portal, exists, and the value is not read; omit it. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<[AiRoomSkill]> 
     */
    open class func aiContextGetRoomSkillsWithRequestBuilder(roomId: String, cloud: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<[AiRoomSkill]> {
        let localVariablePath = "/api/2.0/ai/context/get-room-skills"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableQueryItems: [String: (wrappedValue: (any Sendable)?, isExplode: Bool)] = [
            "cloud": (wrappedValue: cloud?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "roomId": (wrappedValue: roomId.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ]
        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems(localVariableQueryItems)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[AiRoomSkill]>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
