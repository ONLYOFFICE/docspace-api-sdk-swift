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
     Add custom server
     
     See also:
     REST API Reference for aiToolsAddCustomServer Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-add-custom-server/
     - parameter aiToolsAddCustomServerRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiToolsMutationResult
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiToolsAddCustomServer(aiToolsAddCustomServerRequest: AiToolsAddCustomServerRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiToolsMutationResult {
        return try await aiToolsAddCustomServerWithRequestBuilder(aiToolsAddCustomServerRequest: aiToolsAddCustomServerRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Add custom server
     
     See also:
     REST API Reference for aiToolsAddCustomServer Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-add-custom-server/
     
     - POST /api/2.0/ai/tools/add-custom-server
     - Registers a custom MCP server under the given name so the model may call its tools. The name becomes a URL path segment, so it may not be `.`, `..`, or contain a path separator or a control character. `config` may be omitted in two cases: a name matching a host-configured system server pins the entry to that server's canonical settings as a whitelist marker, and a name already registered portal-wide copies the portal-level configuration into this scope; anything else without a config is rejected. `entityId` scopes the registration and has to name a room the caller can open - a room that is not an agent room folds to the portal-wide scope, while an unreachable one is refused so it cannot silently rewrite the portal's own registry.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter aiToolsAddCustomServerRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiToolsMutationResult> 
     */
    open class func aiToolsAddCustomServerWithRequestBuilder(aiToolsAddCustomServerRequest: AiToolsAddCustomServerRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiToolsMutationResult> {
        let localVariablePath = "/api/2.0/ai/tools/add-custom-server"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: aiToolsAddCustomServerRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiToolsMutationResult>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get allow always
     
     See also:
     REST API Reference for aiToolsGetAllowAlways Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-get-allow-always/
     - parameter entityId: (query) The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: [String]
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiToolsGetAllowAlways(entityId: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> [String] {
        return try await aiToolsGetAllowAlwaysWithRequestBuilder(entityId: entityId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get allow always
     
     See also:
     REST API Reference for aiToolsGetAllowAlways Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-get-allow-always/
     
     - GET /api/2.0/ai/tools/get-allow-always
     - Returns the always-allow list of the scope - the tools whose calls run without pausing the round for approval. `entityId` picks the scope and omitting it reads the portal-wide setting. An empty answer means every tool call has to be approved through `POST api/2.0/ai/ai/approve-tool-call`. Use `GET api/2.0/ai/tools/is-allow-always` to ask about a single tool.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter entityId: (query) The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<[String]> 
     */
    open class func aiToolsGetAllowAlwaysWithRequestBuilder(entityId: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<[String]> {
        let localVariablePath = "/api/2.0/ai/tools/get-allow-always"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "entityId": (wrappedValue: entityId?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[String]>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get custom server
     
     See also:
     REST API Reference for aiToolsGetCustomServer Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-get-custom-server/
     - parameter name: (query) The custom MCP server name.      - parameter entityId: (query) The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: JSONValue
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiToolsGetCustomServer(name: String, entityId: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> JSONValue {
        return try await aiToolsGetCustomServerWithRequestBuilder(name: name, entityId: entityId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get custom server
     
     See also:
     REST API Reference for aiToolsGetCustomServer Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-get-custom-server/
     
     - GET /api/2.0/ai/tools/get-custom-server
     - Returns the stored configuration of one registered custom MCP server. The name is required and is read from the query; `entityId` picks the scope, and omitting it reads the portal-wide registry. A name that is not registered answers a null body with status 200 rather than 404. The configuration of a system server is returned empty on purpose: those run server-side only, so neither their endpoint nor their credentials are handed to a browser.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter name: (query) The custom MCP server name. 
     - parameter entityId: (query) The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<JSONValue> 
     */
    open class func aiToolsGetCustomServerWithRequestBuilder(name: String, entityId: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<JSONValue> {
        let localVariablePath = "/api/2.0/ai/tools/get-custom-server"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "name": (wrappedValue: name.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "entityId": (wrappedValue: entityId?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<JSONValue>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get disabled
     
     See also:
     REST API Reference for aiToolsGetDisabled Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-get-disabled/
     - parameter entityId: (query) The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: [String: [String]]
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiToolsGetDisabled(entityId: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> [String: [String]] {
        return try await aiToolsGetDisabledWithRequestBuilder(entityId: entityId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get disabled
     
     See also:
     REST API Reference for aiToolsGetDisabled Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-get-disabled/
     
     - GET /api/2.0/ai/tools/get-disabled
     - Returns the tools switched off in the scope, as a map of server type to tool names. `entityId` picks the scope and omitting it reads the portal-wide setting. An absent server type means nothing is switched off for it, so an empty answer means every tool is on offer. Use `GET api/2.0/ai/tools/is-tool-disabled` to ask about one tool instead of reading the whole map.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter entityId: (query) The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<[String: [String]]> 
     */
    open class func aiToolsGetDisabledWithRequestBuilder(entityId: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<[String: [String]]> {
        let localVariablePath = "/api/2.0/ai/tools/get-disabled"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "entityId": (wrappedValue: entityId?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[String: [String]]>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Is allow always
     
     See also:
     REST API Reference for aiToolsIsAllowAlways Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-is-allow-always/
     - parameter serverType: (query) The MCP server type the tool belongs to.      - parameter toolName: (query) The tool name.      - parameter entityId: (query) The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Bool
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiToolsIsAllowAlways(serverType: String, toolName: String, entityId: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> Bool {
        return try await aiToolsIsAllowAlwaysWithRequestBuilder(serverType: serverType, toolName: toolName, entityId: entityId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Is allow always
     
     See also:
     REST API Reference for aiToolsIsAllowAlways Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-is-allow-always/
     
     - GET /api/2.0/ai/tools/is-allow-always
     - Tells whether one named tool runs without an approval pause in the scope. Both `serverType` and `toolName` are required and are read from the query; `entityId` picks the scope. The answer is a bare boolean. A false answer means a call to that tool pauses the round, and the caller resumes it with the approve or deny operation.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter serverType: (query) The MCP server type the tool belongs to. 
     - parameter toolName: (query) The tool name. 
     - parameter entityId: (query) The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Bool> 
     */
    open class func aiToolsIsAllowAlwaysWithRequestBuilder(serverType: String, toolName: String, entityId: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<Bool> {
        let localVariablePath = "/api/2.0/ai/tools/is-allow-always"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "serverType": (wrappedValue: serverType.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "toolName": (wrappedValue: toolName.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "entityId": (wrappedValue: entityId?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Bool>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Is tool disabled
     
     See also:
     REST API Reference for aiToolsIsToolDisabled Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-is-tool-disabled/
     - parameter serverType: (query) The MCP server type the tool belongs to.      - parameter toolName: (query) The tool name.      - parameter entityId: (query) The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Bool
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiToolsIsToolDisabled(serverType: String, toolName: String, entityId: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> Bool {
        return try await aiToolsIsToolDisabledWithRequestBuilder(serverType: serverType, toolName: toolName, entityId: entityId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Is tool disabled
     
     See also:
     REST API Reference for aiToolsIsToolDisabled Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-is-tool-disabled/
     
     - GET /api/2.0/ai/tools/is-tool-disabled
     - Tells whether one named tool of one server type is switched off in the scope. Both `serverType` and `toolName` are required and are read from the query; `entityId` picks the scope. The answer is a bare boolean. It reflects only the disable list - a tool that is on offer may still require approval, which `GET api/2.0/ai/tools/is-allow-always` reports.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter serverType: (query) The MCP server type the tool belongs to. 
     - parameter toolName: (query) The tool name. 
     - parameter entityId: (query) The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Bool> 
     */
    open class func aiToolsIsToolDisabledWithRequestBuilder(serverType: String, toolName: String, entityId: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<Bool> {
        let localVariablePath = "/api/2.0/ai/tools/is-tool-disabled"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "serverType": (wrappedValue: serverType.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "toolName": (wrappedValue: toolName.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "entityId": (wrappedValue: entityId?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Bool>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     List custom servers
     
     See also:
     REST API Reference for aiToolsListCustomServers Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-list-custom-servers/
     - parameter entityId: (query) The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: [String: JSONValue]
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiToolsListCustomServers(entityId: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> [String: JSONValue] {
        return try await aiToolsListCustomServersWithRequestBuilder(entityId: entityId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     List custom servers
     
     See also:
     REST API Reference for aiToolsListCustomServers Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-list-custom-servers/
     
     - GET /api/2.0/ai/tools/list-custom-servers
     - Lists the custom MCP servers registered in the scope as a map of name to configuration. `entityId` picks the scope and omitting it lists the portal-wide registry. The configuration of any entry that names a host-configured system server comes back empty, for the same reason as in the single-server read, and the portal's own built-in MCP server is left out of the list entirely because it is always enabled and cannot be configured. The names in the answer are what the disable and always-allow operations accept as `serverType`.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter entityId: (query) The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<[String: JSONValue]> 
     */
    open class func aiToolsListCustomServersWithRequestBuilder(entityId: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<[String: JSONValue]> {
        let localVariablePath = "/api/2.0/ai/tools/list-custom-servers"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "entityId": (wrappedValue: entityId?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[String: JSONValue]>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     List system tools
     
     See also:
     REST API Reference for aiToolsListSystemTools Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-list-system-tools/
     - parameter entityId: (query) The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiToolsListSystemTools200Response
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiToolsListSystemTools(entityId: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiToolsListSystemTools200Response {
        return try await aiToolsListSystemToolsWithRequestBuilder(entityId: entityId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     List system tools
     
     See also:
     REST API Reference for aiToolsListSystemTools Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-list-system-tools/
     
     - GET /api/2.0/ai/tools/list-system-tools
     - Lists every tool the scope can offer the model, as a map of server type to tool group. The answer merges two sources - the host-configured system servers and the live tools of the scope's registered custom MCP servers - and names the system ones separately in `system`, so a client can tell the two apart. `errors` carries the reason a registered server delivered no tools, which is the text to show on a permission card, because the browser cannot reach a server-executed MCP server to find out for itself. The connections are opened server-side, so one request is enough and the client never speaks MCP itself; the portal's own built-in server is left out because it is always enabled.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter entityId: (query) The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiToolsListSystemTools200Response> 
     */
    open class func aiToolsListSystemToolsWithRequestBuilder(entityId: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiToolsListSystemTools200Response> {
        let localVariablePath = "/api/2.0/ai/tools/list-system-tools"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "entityId": (wrappedValue: entityId?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiToolsListSystemTools200Response>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Remove custom server
     
     See also:
     REST API Reference for aiToolsRemoveCustomServer Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-remove-custom-server/
     - parameter aiToolsRemoveCustomServerRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiSuccessResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiToolsRemoveCustomServer(aiToolsRemoveCustomServerRequest: AiToolsRemoveCustomServerRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiSuccessResponse {
        return try await aiToolsRemoveCustomServerWithRequestBuilder(aiToolsRemoveCustomServerRequest: aiToolsRemoveCustomServerRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Remove custom server
     
     See also:
     REST API Reference for aiToolsRemoveCustomServer Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-remove-custom-server/
     
     - DELETE /api/2.0/ai/tools/remove-custom-server
     - Unregisters a custom MCP server from the scope, so the model is no longer offered its tools. The name is required and may be sent in the body or as a query parameter, and `entityId` has to name a room the caller can open. A name that is not registered is not reported: the call answers success without removing anything. The server itself is untouched - only this portal's registration is dropped.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter aiToolsRemoveCustomServerRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiSuccessResponse> 
     */
    open class func aiToolsRemoveCustomServerWithRequestBuilder(aiToolsRemoveCustomServerRequest: AiToolsRemoveCustomServerRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiSuccessResponse> {
        let localVariablePath = "/api/2.0/ai/tools/remove-custom-server"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: aiToolsRemoveCustomServerRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiSuccessResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Replace all custom servers
     
     See also:
     REST API Reference for aiToolsReplaceAllCustomServers Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-replace-all-custom-servers/
     - parameter aiToolsReplaceAllCustomServersRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiToolsBulkResult
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiToolsReplaceAllCustomServers(aiToolsReplaceAllCustomServersRequest: AiToolsReplaceAllCustomServersRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiToolsBulkResult {
        return try await aiToolsReplaceAllCustomServersWithRequestBuilder(aiToolsReplaceAllCustomServersRequest: aiToolsReplaceAllCustomServersRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Replace all custom servers
     
     See also:
     REST API Reference for aiToolsReplaceAllCustomServers Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-replace-all-custom-servers/
     
     - PUT /api/2.0/ai/tools/replace-all-custom-servers
     - Replaces the whole custom MCP server registry of the scope with the supplied map in one write, which makes it the operation a settings screen saves with. `map` is required: without it the registry would be emptied, so a missing or non-object value is rejected rather than treated as none. Every name in the map is validated as a routable path segment and every configuration is resolved before anything is written, so a map with one bad entry changes nothing. `entityId` has to name a room the caller can open - this is the operation where an unreachable one would otherwise have wiped the portal-wide registry.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter aiToolsReplaceAllCustomServersRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiToolsBulkResult> 
     */
    open class func aiToolsReplaceAllCustomServersWithRequestBuilder(aiToolsReplaceAllCustomServersRequest: AiToolsReplaceAllCustomServersRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiToolsBulkResult> {
        let localVariablePath = "/api/2.0/ai/tools/replace-all-custom-servers"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: aiToolsReplaceAllCustomServersRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiToolsBulkResult>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Set allow always
     
     See also:
     REST API Reference for aiToolsSetAllowAlways Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-set-allow-always/
     - parameter aiToolsSetAllowAlwaysRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiSuccessResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiToolsSetAllowAlways(aiToolsSetAllowAlwaysRequest: AiToolsSetAllowAlwaysRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiSuccessResponse {
        return try await aiToolsSetAllowAlwaysWithRequestBuilder(aiToolsSetAllowAlwaysRequest: aiToolsSetAllowAlwaysRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Set allow always
     
     See also:
     REST API Reference for aiToolsSetAllowAlways Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-set-allow-always/
     
     - PUT /api/2.0/ai/tools/set-allow-always
     - Adds one tool to the scope's always-allow list, or takes it off, which decides whether a call to it pauses the round for approval. `value` is coerced to a boolean, so any truthy value adds and any falsy one removes. Unlike the disable operation, `serverType` is not validated here: an unknown one is stored and then simply never matches, so a wrong value fails silently. `entityId` has to name a room the caller can open.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter aiToolsSetAllowAlwaysRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiSuccessResponse> 
     */
    open class func aiToolsSetAllowAlwaysWithRequestBuilder(aiToolsSetAllowAlwaysRequest: AiToolsSetAllowAlwaysRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiSuccessResponse> {
        let localVariablePath = "/api/2.0/ai/tools/set-allow-always"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: aiToolsSetAllowAlwaysRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiSuccessResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Set disabled
     
     See also:
     REST API Reference for aiToolsSetDisabled Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-set-disabled/
     - parameter aiToolsSetDisabledRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiSuccessResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiToolsSetDisabled(aiToolsSetDisabledRequest: AiToolsSetDisabledRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiSuccessResponse {
        return try await aiToolsSetDisabledWithRequestBuilder(aiToolsSetDisabledRequest: aiToolsSetDisabledRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Set disabled
     
     See also:
     REST API Reference for aiToolsSetDisabled Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-set-disabled/
     
     - PUT /api/2.0/ai/tools/set-disabled
     - Switches off the listed tools of one server type in the scope, so the model is no longer offered them. `serverType` has to be a key the round's tool filter actually matches - a host-configured system server, one of the two DocSpace integration groups, web search, image generation, or one of the scope's registered custom servers - and an unknown value is rejected with the list of valid ones in the message, rather than stored and silently ignored. `toolNames` replaces the previous selection for that server type, so send the full list and pass an empty one to switch everything back on. `entityId` has to name a room the caller can open.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter aiToolsSetDisabledRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiSuccessResponse> 
     */
    open class func aiToolsSetDisabledWithRequestBuilder(aiToolsSetDisabledRequest: AiToolsSetDisabledRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiSuccessResponse> {
        let localVariablePath = "/api/2.0/ai/tools/set-disabled"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: aiToolsSetDisabledRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiSuccessResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Update custom server
     
     See also:
     REST API Reference for aiToolsUpdateCustomServer Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-update-custom-server/
     - parameter aiToolsUpdateCustomServerRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiToolsMutationResult
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiToolsUpdateCustomServer(aiToolsUpdateCustomServerRequest: AiToolsUpdateCustomServerRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiToolsMutationResult {
        return try await aiToolsUpdateCustomServerWithRequestBuilder(aiToolsUpdateCustomServerRequest: aiToolsUpdateCustomServerRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Update custom server
     
     See also:
     REST API Reference for aiToolsUpdateCustomServer Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-update-custom-server/
     
     - PUT /api/2.0/ai/tools/update-custom-server
     - Replaces the stored configuration of a registered custom MCP server, under the same name and scope rules as the add operation. The name is re-validated as a routable path segment, and an omitted `config` resolves the same way - to a system server's canonical settings, or to the portal-level entry of that name. `entityId` has to name a room the caller can open. The answer carries the stored registry entry.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter aiToolsUpdateCustomServerRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiToolsMutationResult> 
     */
    open class func aiToolsUpdateCustomServerWithRequestBuilder(aiToolsUpdateCustomServerRequest: AiToolsUpdateCustomServerRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiToolsMutationResult> {
        let localVariablePath = "/api/2.0/ai/tools/update-custom-server"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: aiToolsUpdateCustomServerRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiToolsMutationResult>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
