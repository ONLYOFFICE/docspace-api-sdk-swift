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
     - Registers a custom MCP server in the scope under the given name.
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

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
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
     - Lists the tools on the always-allow list of the scope.
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

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
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
     - Returns the configuration of one custom MCP server, or an empty result when it is not registered.
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

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
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
     - Returns the switched-off tools of the scope, grouped by server type.
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

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
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
     - Tells whether one tool is on the always-allow list.
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

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
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
     - Tells whether one tool of a server type is switched off.
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

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
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
     - Lists the custom MCP servers registered in the scope, keyed by name.
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

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     List system tools
     
     See also:
     REST API Reference for aiToolsListSystemTools Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-list-system-tools/
     - parameter entityId: (query) The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: [String: [AiTMCPItem]]
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiToolsListSystemTools(entityId: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> [String: [AiTMCPItem]] {
        return try await aiToolsListSystemToolsWithRequestBuilder(entityId: entityId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     List system tools
     
     See also:
     REST API Reference for aiToolsListSystemTools Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-list-system-tools/
     
     - GET /api/2.0/ai/tools/list-system-tools
     - Lists the tools of the host-configured system MCP servers, grouped by server type. The servers are connected and listed server-side, so the client renders its permission cards from one request and never opens an MCP connection of its own.
     - parameter entityId: (query) The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<[String: [AiTMCPItem]]> 
     */
    open class func aiToolsListSystemToolsWithRequestBuilder(entityId: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<[String: [AiTMCPItem]]> {
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

        let localVariableRequestBuilder: RequestBuilder<[String: [AiTMCPItem]]>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
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
     - Removes a custom MCP server from the registry.
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

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
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
     - Replaces the whole custom MCP server registry of the scope with the supplied map.
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

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
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
     - Adds a tool to the always-allow list, or removes it - the tools on that list run without an approval dialog.
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

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
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
     - Marks the listed tools of one server type as switched off, so the model is no longer offered them.
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

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
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
     - Updates the configuration of a registered custom MCP server.
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

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }
}
