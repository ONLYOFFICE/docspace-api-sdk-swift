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
     Assign MCP servers to a room
     
     See also:
     REST API Reference for addRoomServers Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/add-room-servers/
     - parameter roomId: (path) Identifier of the room to which MCP servers will be assigned.      - parameter addRoomServersRequestBody: (body) Server identifiers to assign. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: McpServerStatusArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func addRoomServers(roomId: Int, addRoomServersRequestBody: AddRoomServersRequestBody, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> McpServerStatusArrayWrapper {
        return try await addRoomServersWithRequestBuilder(roomId: roomId, addRoomServersRequestBody: addRoomServersRequestBody, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Assign MCP servers to a room
     
     See also:
     REST API Reference for addRoomServers Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/add-room-servers/
     
     - POST /api/2.0/ai/rooms/{roomId}/servers
     - Associates one or more MCP servers with a specific room, making them available for AI chat sessions  within that room. A maximum of 5 MCP servers can be assigned to a single room. If OAuth-based servers  are included, each room member will need to individually authorize their connection.  Requires room edit permissions.
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
     - parameter roomId: (path) Identifier of the room to which MCP servers will be assigned. 
     - parameter addRoomServersRequestBody: (body) Server identifiers to assign. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<McpServerStatusArrayWrapper> 
     */
    open class func addRoomServersWithRequestBuilder(roomId: Int, addRoomServersRequestBody: AddRoomServersRequestBody, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<McpServerStatusArrayWrapper> {
        var localVariablePath = "/api/2.0/ai/rooms/{roomId}/servers"
        let roomIdPreEscape = "\(APIHelper.mapValueToPathItem(roomId))"
        let roomIdPostEscape = roomIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{roomId}", with: roomIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: addRoomServersRequestBody, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<McpServerStatusArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Register a custom MCP server
     
     See also:
     REST API Reference for addServer Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/add-server/
     - parameter addMcpServerRequestBody: (body) MCP server registration parameters. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: McpServerWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func addServer(addMcpServerRequestBody: AddMcpServerRequestBody, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> McpServerWrapper {
        return try await addServerWithRequestBuilder(addMcpServerRequestBody: addMcpServerRequestBody, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Register a custom MCP server
     
     See also:
     REST API Reference for addServer Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/add-server/
     
     - POST /api/2.0/ai/servers
     - Registers a new custom MCP (Model Context Protocol) server for the current tenant.  The system validates the server name (only letters, numbers, underscores, and hyphens are allowed),  checks that it is not reserved or already taken, and then attempts to connect to the provided endpoint  to verify reachability and credentials before persisting the configuration.  Requires DocSpace administrator privileges.
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
     - parameter addMcpServerRequestBody: (body) MCP server registration parameters. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<McpServerWrapper> 
     */
    open class func addServerWithRequestBuilder(addMcpServerRequestBody: AddMcpServerRequestBody, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<McpServerWrapper> {
        let localVariablePath = "/api/2.0/ai/servers"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: addMcpServerRequestBody, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<McpServerWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Connect an OAuth-based MCP server in a room
     
     See also:
     REST API Reference for connectServer Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/connect-server/
     - parameter roomId: (path) Identifier of the room containing the MCP server.      - parameter serverId: (path) Unique identifier of the MCP server to connect.      - parameter connectServerRequestBody: (body) The request body containing additional data necessary for connecting to the server,  such as authentication or operation-specific information. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: McpServerStatusWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func connectServer(roomId: Int, serverId: UUID, connectServerRequestBody: ConnectServerRequestBody, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> McpServerStatusWrapper {
        return try await connectServerWithRequestBuilder(roomId: roomId, serverId: serverId, connectServerRequestBody: connectServerRequestBody, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Connect an OAuth-based MCP server in a room
     
     See also:
     REST API Reference for connectServer Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/connect-server/
     
     - POST /api/2.0/ai/rooms/{roomId}/servers/{serverId}/connect
     - Completes the OAuth authorization flow for an MCP server within a specific room on behalf of the  current user. The authorization code obtained from the OAuth provider must be passed in the request body.  Upon successful token exchange, the system verifies connectivity to the server and stores  the credentials for the current user. Requires room edit permissions.
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
     - parameter roomId: (path) Identifier of the room containing the MCP server. 
     - parameter serverId: (path) Unique identifier of the MCP server to connect. 
     - parameter connectServerRequestBody: (body) The request body containing additional data necessary for connecting to the server,  such as authentication or operation-specific information. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<McpServerStatusWrapper> 
     */
    open class func connectServerWithRequestBuilder(roomId: Int, serverId: UUID, connectServerRequestBody: ConnectServerRequestBody, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<McpServerStatusWrapper> {
        var localVariablePath = "/api/2.0/ai/rooms/{roomId}/servers/{serverId}/connect"
        let roomIdPreEscape = "\(APIHelper.mapValueToPathItem(roomId))"
        let roomIdPostEscape = roomIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{roomId}", with: roomIdPostEscape, options: .literal, range: nil)
        let serverIdPreEscape = "\(APIHelper.mapValueToPathItem(serverId))"
        let serverIdPostEscape = serverIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{serverId}", with: serverIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: connectServerRequestBody, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<McpServerStatusWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Remove MCP servers from a room
     
     See also:
     REST API Reference for deleteRoomServers Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-room-servers/
     - parameter roomId: (path) Identifier of the room from which MCP servers will be removed.      - parameter deleteRoomServersRequestBody: (body) Server identifiers to remove. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func deleteRoomServers(roomId: Int, deleteRoomServersRequestBody: DeleteRoomServersRequestBody, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await deleteRoomServersWithRequestBuilder(roomId: roomId, deleteRoomServersRequestBody: deleteRoomServersRequestBody, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Remove MCP servers from a room
     
     See also:
     REST API Reference for deleteRoomServers Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-room-servers/
     
     - DELETE /api/2.0/ai/rooms/{roomId}/servers
     - Detaches one or more MCP servers from the specified room. After removal, the servers will no longer  be available in AI chat sessions within this room. Existing connections and tool configurations for  the removed servers are also cleaned up. Requires room edit permissions.
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
     - parameter roomId: (path) Identifier of the room from which MCP servers will be removed. 
     - parameter deleteRoomServersRequestBody: (body) Server identifiers to remove. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func deleteRoomServersWithRequestBuilder(roomId: Int, deleteRoomServersRequestBody: DeleteRoomServersRequestBody, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<Void> {
        var localVariablePath = "/api/2.0/ai/rooms/{roomId}/servers"
        let roomIdPreEscape = "\(APIHelper.mapValueToPathItem(roomId))"
        let roomIdPostEscape = roomIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{roomId}", with: roomIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: deleteRoomServersRequestBody, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Delete MCP servers
     
     See also:
     REST API Reference for deleteServer Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-server/
     - parameter deleteServersRequestBody: (body) Server identifiers to delete. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func deleteServer(deleteServersRequestBody: DeleteServersRequestBody, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await deleteServerWithRequestBuilder(deleteServersRequestBody: deleteServersRequestBody, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Delete MCP servers
     
     See also:
     REST API Reference for deleteServer Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-server/
     
     - DELETE /api/2.0/ai/servers
     - Permanently removes one or more MCP servers from the current tenant by their IDs.  All room associations and connection data for the deleted servers are also cleaned up.  This action is irreversible. Requires DocSpace administrator privileges.
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
     - parameter deleteServersRequestBody: (body) Server identifiers to delete. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func deleteServerWithRequestBuilder(deleteServersRequestBody: DeleteServersRequestBody, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<Void> {
        let localVariablePath = "/api/2.0/ai/servers"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: deleteServersRequestBody, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Disconnect an MCP server in a room
     
     See also:
     REST API Reference for disconnectServer Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/disconnect-server/
     - parameter roomId: (path) Identifier of the room containing the MCP server.      - parameter serverId: (path) Unique identifier of the MCP server to disconnect from. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: McpServerStatusWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func disconnectServer(roomId: Int, serverId: UUID, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> McpServerStatusWrapper {
        return try await disconnectServerWithRequestBuilder(roomId: roomId, serverId: serverId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Disconnect an MCP server in a room
     
     See also:
     REST API Reference for disconnectServer Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/disconnect-server/
     
     - POST /api/2.0/ai/rooms/{roomId}/servers/{serverId}/disconnect
     - Revokes the current user's OAuth connection to an MCP server within the specified room. After  disconnection, the server's tools will no longer be available to this user in AI chat sessions  until they re-authorize. Other room members' connections are not affected.  Requires room edit permissions.
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
     - parameter roomId: (path) Identifier of the room containing the MCP server. 
     - parameter serverId: (path) Unique identifier of the MCP server to disconnect from. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<McpServerStatusWrapper> 
     */
    open class func disconnectServerWithRequestBuilder(roomId: Int, serverId: UUID, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<McpServerStatusWrapper> {
        var localVariablePath = "/api/2.0/ai/rooms/{roomId}/servers/{serverId}/disconnect"
        let roomIdPreEscape = "\(APIHelper.mapValueToPathItem(roomId))"
        let roomIdPostEscape = roomIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{roomId}", with: roomIdPostEscape, options: .literal, range: nil)
        let serverIdPreEscape = "\(APIHelper.mapValueToPathItem(serverId))"
        let serverIdPostEscape = serverIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{serverId}", with: serverIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<McpServerStatusWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get available MCP servers
     
     See also:
     REST API Reference for getAvailableServers Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-available-servers/
     - parameter startIndex: (query) The number of items to skip before returning results (zero-based offset). Defaults to 0. (optional)     - parameter count: (query) The maximum number of items to return per page. Defaults to 100. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: McpServerShortArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getAvailableServers(startIndex: Int? = nil, count: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> McpServerShortArrayWrapper {
        return try await getAvailableServersWithRequestBuilder(startIndex: startIndex, count: count, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get available MCP servers
     
     See also:
     REST API Reference for getAvailableServers Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-available-servers/
     
     - GET /api/2.0/ai/servers/available
     - Returns a paginated list of MCP servers that are currently active (enabled) and available for  assignment to rooms. Only servers in the enabled state are included. Each entry contains a compact  summary with the server name, type, icon, and status. Supports pagination via startIndex and count.  The total count of available servers is included in the response metadata.
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
     - parameter startIndex: (query) The number of items to skip before returning results (zero-based offset). Defaults to 0. (optional)
     - parameter count: (query) The maximum number of items to return per page. Defaults to 100. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<McpServerShortArrayWrapper> 
     */
    open class func getAvailableServersWithRequestBuilder(startIndex: Int? = nil, count: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<McpServerShortArrayWrapper> {
        let localVariablePath = "/api/2.0/ai/servers/available"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
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

        let localVariableRequestBuilder: RequestBuilder<McpServerShortArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get MCP servers assigned to a room
     
     See also:
     REST API Reference for getRoomServers Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-servers/
     - parameter roomId: (path) Identifier of the room whose assigned MCP servers are being retrieved. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: McpServerStatusArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getRoomServers(roomId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> McpServerStatusArrayWrapper {
        return try await getRoomServersWithRequestBuilder(roomId: roomId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get MCP servers assigned to a room
     
     See also:
     REST API Reference for getRoomServers Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-servers/
     
     - GET /api/2.0/ai/rooms/{roomId}/servers
     - Returns the list of MCP servers currently assigned to the specified room along with their connection  statuses for the current user. For OAuth-based servers, the connection status reflects whether the  current user has completed authorization. Requires access to the room's AI chat.
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
     - parameter roomId: (path) Identifier of the room whose assigned MCP servers are being retrieved. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<McpServerStatusArrayWrapper> 
     */
    open class func getRoomServersWithRequestBuilder(roomId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<McpServerStatusArrayWrapper> {
        var localVariablePath = "/api/2.0/ai/rooms/{roomId}/servers"
        let roomIdPreEscape = "\(APIHelper.mapValueToPathItem(roomId))"
        let roomIdPostEscape = roomIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{roomId}", with: roomIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<McpServerStatusArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get an MCP server by ID
     
     See also:
     REST API Reference for getServer Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-server/
     - parameter id: (path) Unique identifier of the MCP server to retrieve. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: McpServerShortWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getServer(id: UUID, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> McpServerShortWrapper {
        return try await getServerWithRequestBuilder(id: id, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get an MCP server by ID
     
     See also:
     REST API Reference for getServer Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-server/
     
     - GET /api/2.0/ai/servers/{id}
     - Retrieves a summary view of a single MCP server by its unique identifier, including its name,  type, enabled state, and icon. This endpoint returns a compact representation without  sensitive details such as endpoint URL or authentication headers.  Requires DocSpace administrator privileges.
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
     - parameter id: (path) Unique identifier of the MCP server to retrieve. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<McpServerShortWrapper> 
     */
    open class func getServerWithRequestBuilder(id: UUID, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<McpServerShortWrapper> {
        var localVariablePath = "/api/2.0/ai/servers/{id}"
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

        let localVariableRequestBuilder: RequestBuilder<McpServerShortWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get all MCP servers
     
     See also:
     REST API Reference for getServers Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-servers/
     - parameter startIndex: (query) The number of items to skip before returning results (zero-based offset). Defaults to 0. (optional)     - parameter count: (query) The maximum number of items to return per page. Defaults to 100. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: McpServerArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getServers(startIndex: Int? = nil, count: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> McpServerArrayWrapper {
        return try await getServersWithRequestBuilder(startIndex: startIndex, count: count, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get all MCP servers
     
     See also:
     REST API Reference for getServers Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-servers/
     
     - GET /api/2.0/ai/servers
     - Returns a paginated list of all MCP servers registered for the current tenant, including both  enabled and disabled servers. Each entry contains the full configuration (endpoint, headers,  icon, type, and status). Supports pagination via the startIndex and count query parameters.  The total number of servers is included in the response metadata.  Requires DocSpace administrator privileges.
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
     - parameter startIndex: (query) The number of items to skip before returning results (zero-based offset). Defaults to 0. (optional)
     - parameter count: (query) The maximum number of items to return per page. Defaults to 100. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<McpServerArrayWrapper> 
     */
    open class func getServersWithRequestBuilder(startIndex: Int? = nil, count: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<McpServerArrayWrapper> {
        let localVariablePath = "/api/2.0/ai/servers"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
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

        let localVariableRequestBuilder: RequestBuilder<McpServerArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get MCP server tools in a room
     
     See also:
     REST API Reference for getTools Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tools/
     - parameter roomId: (path) Identifier of the room containing the MCP server.      - parameter serverId: (path) Unique identifier of the MCP server whose tools are being retrieved. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: McpToolArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getTools(roomId: Int, serverId: UUID, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> McpToolArrayWrapper {
        return try await getToolsWithRequestBuilder(roomId: roomId, serverId: serverId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get MCP server tools in a room
     
     See also:
     REST API Reference for getTools Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tools/
     
     - GET /api/2.0/ai/rooms/{roomId}/servers/{serverId}/tools
     - Retrieves the full list of tools exposed by an MCP server within the context of a specific room,  along with each tool's enabled or disabled state. Disabled tools will not be invoked during  AI chat sessions in this room. Requires access to the room's AI chat.
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
     - parameter roomId: (path) Identifier of the room containing the MCP server. 
     - parameter serverId: (path) Unique identifier of the MCP server whose tools are being retrieved. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<McpToolArrayWrapper> 
     */
    open class func getToolsWithRequestBuilder(roomId: Int, serverId: UUID, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<McpToolArrayWrapper> {
        var localVariablePath = "/api/2.0/ai/rooms/{roomId}/servers/{serverId}/tools"
        let roomIdPreEscape = "\(APIHelper.mapValueToPathItem(roomId))"
        let roomIdPostEscape = roomIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{roomId}", with: roomIdPostEscape, options: .literal, range: nil)
        let serverIdPreEscape = "\(APIHelper.mapValueToPathItem(serverId))"
        let serverIdPostEscape = serverIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{serverId}", with: serverIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<McpToolArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Enable or disable an MCP server
     
     See also:
     REST API Reference for setServerStatus Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-server-status/
     - parameter id: (path) Unique identifier of the MCP server whose status is being changed.      - parameter setServerStatusRequestBody: (body) New status value. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: McpServerWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func setServerStatus(id: UUID, setServerStatusRequestBody: SetServerStatusRequestBody, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> McpServerWrapper {
        return try await setServerStatusWithRequestBuilder(id: id, setServerStatusRequestBody: setServerStatusRequestBody, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Enable or disable an MCP server
     
     See also:
     REST API Reference for setServerStatus Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-server-status/
     
     - PUT /api/2.0/ai/servers/{id}/status
     - Toggles the enabled/disabled state of an MCP server. When a server is disabled, it becomes  unavailable for assignment to rooms and will not be used during AI chat sessions.  Enabling a previously disabled server restores its availability across the tenant.  Requires DocSpace administrator privileges.
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
     - parameter id: (path) Unique identifier of the MCP server whose status is being changed. 
     - parameter setServerStatusRequestBody: (body) New status value. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<McpServerWrapper> 
     */
    open class func setServerStatusWithRequestBuilder(id: UUID, setServerStatusRequestBody: SetServerStatusRequestBody, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<McpServerWrapper> {
        var localVariablePath = "/api/2.0/ai/servers/{id}/status"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: setServerStatusRequestBody, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<McpServerWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Configure MCP server tools in a room
     
     See also:
     REST API Reference for setTools Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-tools/
     - parameter roomId: (path) Identifier of the room containing the MCP server.      - parameter serverId: (path) Unique identifier of the MCP server whose tools are being configured.      - parameter setMcpToolsRequestBody: (body) Tool configuration parameters. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: McpToolArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func setTools(roomId: Int, serverId: UUID, setMcpToolsRequestBody: SetMcpToolsRequestBody, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> McpToolArrayWrapper {
        return try await setToolsWithRequestBuilder(roomId: roomId, serverId: serverId, setMcpToolsRequestBody: setMcpToolsRequestBody, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Configure MCP server tools in a room
     
     See also:
     REST API Reference for setTools Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-tools/
     
     - PUT /api/2.0/ai/rooms/{roomId}/servers/{serverId}/tools
     - Updates the set of disabled tools for an MCP server within a specific room. Pass a list of tool names  that should be disabled — all other tools exposed by the server will remain enabled. This allows  room administrators to restrict which MCP capabilities are available during AI chat sessions.  Requires room edit permissions.
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
     - parameter roomId: (path) Identifier of the room containing the MCP server. 
     - parameter serverId: (path) Unique identifier of the MCP server whose tools are being configured. 
     - parameter setMcpToolsRequestBody: (body) Tool configuration parameters. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<McpToolArrayWrapper> 
     */
    open class func setToolsWithRequestBuilder(roomId: Int, serverId: UUID, setMcpToolsRequestBody: SetMcpToolsRequestBody, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<McpToolArrayWrapper> {
        var localVariablePath = "/api/2.0/ai/rooms/{roomId}/servers/{serverId}/tools"
        let roomIdPreEscape = "\(APIHelper.mapValueToPathItem(roomId))"
        let roomIdPostEscape = roomIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{roomId}", with: roomIdPostEscape, options: .literal, range: nil)
        let serverIdPreEscape = "\(APIHelper.mapValueToPathItem(serverId))"
        let serverIdPostEscape = serverIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{serverId}", with: serverIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: setMcpToolsRequestBody, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<McpToolArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Update a custom MCP server
     
     See also:
     REST API Reference for updateServer Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/update-server/
     - parameter id: (path) Unique identifier of the MCP server to update.      - parameter updateServerRequestBody: (body) Updated server configuration fields. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: McpServerWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func updateServer(id: UUID, updateServerRequestBody: UpdateServerRequestBody, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> McpServerWrapper {
        return try await updateServerWithRequestBuilder(id: id, updateServerRequestBody: updateServerRequestBody, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Update a custom MCP server
     
     See also:
     REST API Reference for updateServer Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/update-server/
     
     - PUT /api/2.0/ai/servers/{id}
     - Updates the configuration of an existing custom MCP server identified by its unique ID.  Any combination of fields (name, description, endpoint, headers, icon) can be updated in a single request.  If the endpoint or headers are changed, the system re-validates connectivity by attempting to reach  the new endpoint before saving. Name uniqueness and format rules are enforced on every update.  Requires DocSpace administrator privileges.
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
     - parameter id: (path) Unique identifier of the MCP server to update. 
     - parameter updateServerRequestBody: (body) Updated server configuration fields. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<McpServerWrapper> 
     */
    open class func updateServerWithRequestBuilder(id: UUID, updateServerRequestBody: UpdateServerRequestBody, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<McpServerWrapper> {
        var localVariablePath = "/api/2.0/ai/servers/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateServerRequestBody, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<McpServerWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
extension AIMCPAPIApi {
    @discardableResult
    public func withFields(_ fields: String) -> AIMCPAPIApi {
        self.fields = fields
        return self
    }
}
