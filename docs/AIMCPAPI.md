# AIMCPAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addRoomServers**](AIMCPAPI.md#addroomservers) | **POST** /api/2.0/ai/rooms/{roomId}/servers | Assign MCP servers to a room
[**addServer**](AIMCPAPI.md#addserver) | **POST** /api/2.0/ai/servers | Register a custom MCP server
[**connectServer**](AIMCPAPI.md#connectserver) | **POST** /api/2.0/ai/rooms/{roomId}/servers/{serverId}/connect | Connect an OAuth-based MCP server in a room
[**deleteRoomServers**](AIMCPAPI.md#deleteroomservers) | **DELETE** /api/2.0/ai/rooms/{roomId}/servers | Remove MCP servers from a room
[**deleteServer**](AIMCPAPI.md#deleteserver) | **DELETE** /api/2.0/ai/servers | Delete MCP servers
[**disconnectServer**](AIMCPAPI.md#disconnectserver) | **POST** /api/2.0/ai/rooms/{roomId}/servers/{serverId}/disconnect | Disconnect an MCP server in a room
[**getAvailableServers**](AIMCPAPI.md#getavailableservers) | **GET** /api/2.0/ai/servers/available | Get available MCP servers
[**getRoomServers**](AIMCPAPI.md#getroomservers) | **GET** /api/2.0/ai/rooms/{roomId}/servers | Get MCP servers assigned to a room
[**getServer**](AIMCPAPI.md#getserver) | **GET** /api/2.0/ai/servers/{id} | Get an MCP server by ID
[**getServers**](AIMCPAPI.md#getservers) | **GET** /api/2.0/ai/servers | Get all MCP servers
[**getTools**](AIMCPAPI.md#gettools) | **GET** /api/2.0/ai/rooms/{roomId}/servers/{serverId}/tools | Get MCP server tools in a room
[**setServerStatus**](AIMCPAPI.md#setserverstatus) | **PUT** /api/2.0/ai/servers/{id}/status | Enable or disable an MCP server
[**setTools**](AIMCPAPI.md#settools) | **PUT** /api/2.0/ai/rooms/{roomId}/servers/{serverId}/tools | Configure MCP server tools in a room
[**updateServer**](AIMCPAPI.md#updateserver) | **PUT** /api/2.0/ai/servers/{id} | Update a custom MCP server


# **addRoomServers**
```swift
    open class func addRoomServers(roomId: Int, addRoomServersRequestBody: AddRoomServersRequestBody, completion: @escaping (_ data: McpServerStatusArrayWrapper?, _ error: Error?) -> Void)
```

Associates one or more MCP servers with a specific room, making them available for AI chat sessions  within that room. A maximum of 5 MCP servers can be assigned to a single room. If OAuth-based servers  are included, each room member will need to individually authorize their connection.  Requires room edit permissions.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/add-room-servers/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **roomId** | **Int** | Identifier of the room to which MCP servers will be assigned. | 
 **addRoomServersRequestBody** | [**AddRoomServersRequestBody**](AddRoomServersRequestBody.md) | Server identifiers to assign. | 

### Return type

[**McpServerStatusArrayWrapper**](McpServerStatusArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let roomId = 987 // Int | Identifier of the room to which MCP servers will be assigned.
let addRoomServersRequestBody = AddRoomServersRequestBody(servers: [123]) // AddRoomServersRequestBody | Server identifiers to assign.

// Assign MCP servers to a room
AIMCPAPIApi.addRoomServers(roomId: roomId, addRoomServersRequestBody: addRoomServersRequestBody) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addServer**
```swift
    open class func addServer(addMcpServerRequestBody: AddMcpServerRequestBody, completion: @escaping (_ data: McpServerWrapper?, _ error: Error?) -> Void)
```

Registers a new custom MCP (Model Context Protocol) server for the current tenant.  The system validates the server name (only letters, numbers, underscores, and hyphens are allowed),  checks that it is not reserved or already taken, and then attempts to connect to the provided endpoint  to verify reachability and credentials before persisting the configuration.  Requires DocSpace administrator privileges.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/add-server/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **addMcpServerRequestBody** | [**AddMcpServerRequestBody**](AddMcpServerRequestBody.md) | MCP server registration parameters. | 

### Return type

[**McpServerWrapper**](McpServerWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let addMcpServerRequestBody = AddMcpServerRequestBody(name: "name_example", description: "description_example", endpoint: "endpoint_example", headers: "TODO", icon: "icon_example") // AddMcpServerRequestBody | MCP server registration parameters.

// Register a custom MCP server
AIMCPAPIApi.addServer(addMcpServerRequestBody: addMcpServerRequestBody) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **connectServer**
```swift
    open class func connectServer(roomId: Int, serverId: UUID, connectServerRequestBody: ConnectServerRequestBody, completion: @escaping (_ data: McpServerStatusWrapper?, _ error: Error?) -> Void)
```

Completes the OAuth authorization flow for an MCP server within a specific room on behalf of the  current user. The authorization code obtained from the OAuth provider must be passed in the request body.  Upon successful token exchange, the system verifies connectivity to the server and stores  the credentials for the current user. Requires room edit permissions.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/connect-server/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **roomId** | **Int** | Identifier of the room containing the MCP server. | 
 **serverId** | **UUID** | Unique identifier of the MCP server to connect. | 
 **connectServerRequestBody** | [**ConnectServerRequestBody**](ConnectServerRequestBody.md) | The request body containing additional data necessary for connecting to the server,  such as authentication or operation-specific information. | 

### Return type

[**McpServerStatusWrapper**](McpServerStatusWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let roomId = 987 // Int | Identifier of the room containing the MCP server.
let serverId = 987 // UUID | Unique identifier of the MCP server to connect.
let connectServerRequestBody = ConnectServerRequestBody(code: "code_example") // ConnectServerRequestBody | The request body containing additional data necessary for connecting to the server,  such as authentication or operation-specific information.

// Connect an OAuth-based MCP server in a room
AIMCPAPIApi.connectServer(roomId: roomId, serverId: serverId, connectServerRequestBody: connectServerRequestBody) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteRoomServers**
```swift
    open class func deleteRoomServers(roomId: Int, deleteRoomServersRequestBody: DeleteRoomServersRequestBody, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Detaches one or more MCP servers from the specified room. After removal, the servers will no longer  be available in AI chat sessions within this room. Existing connections and tool configurations for  the removed servers are also cleaned up. Requires room edit permissions.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-room-servers/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **roomId** | **Int** | Identifier of the room from which MCP servers will be removed. | 
 **deleteRoomServersRequestBody** | [**DeleteRoomServersRequestBody**](DeleteRoomServersRequestBody.md) | Server identifiers to remove. | 

### Return type

Void (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let roomId = 987 // Int | Identifier of the room from which MCP servers will be removed.
let deleteRoomServersRequestBody = DeleteRoomServersRequestBody(servers: [123]) // DeleteRoomServersRequestBody | Server identifiers to remove.

// Remove MCP servers from a room
AIMCPAPIApi.deleteRoomServers(roomId: roomId, deleteRoomServersRequestBody: deleteRoomServersRequestBody) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteServer**
```swift
    open class func deleteServer(deleteServersRequestBody: DeleteServersRequestBody, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Permanently removes one or more MCP servers from the current tenant by their IDs.  All room associations and connection data for the deleted servers are also cleaned up.  This action is irreversible. Requires DocSpace administrator privileges.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-server/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deleteServersRequestBody** | [**DeleteServersRequestBody**](DeleteServersRequestBody.md) | Server identifiers to delete. | 

### Return type

Void (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let deleteServersRequestBody = DeleteServersRequestBody(servers: [123]) // DeleteServersRequestBody | Server identifiers to delete.

// Delete MCP servers
AIMCPAPIApi.deleteServer(deleteServersRequestBody: deleteServersRequestBody) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **disconnectServer**
```swift
    open class func disconnectServer(roomId: Int, serverId: UUID, completion: @escaping (_ data: McpServerStatusWrapper?, _ error: Error?) -> Void)
```

Revokes the current user's OAuth connection to an MCP server within the specified room. After  disconnection, the server's tools will no longer be available to this user in AI chat sessions  until they re-authorize. Other room members' connections are not affected.  Requires room edit permissions.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/disconnect-server/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **roomId** | **Int** | Identifier of the room containing the MCP server. | 
 **serverId** | **UUID** | Unique identifier of the MCP server to disconnect from. | 

### Return type

[**McpServerStatusWrapper**](McpServerStatusWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let roomId = 987 // Int | Identifier of the room containing the MCP server.
let serverId = 987 // UUID | Unique identifier of the MCP server to disconnect from.

// Disconnect an MCP server in a room
AIMCPAPIApi.disconnectServer(roomId: roomId, serverId: serverId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAvailableServers**
```swift
    open class func getAvailableServers(startIndex: Int? = nil, count: Int? = nil, completion: @escaping (_ data: McpServerShortArrayWrapper?, _ error: Error?) -> Void)
```

Returns a paginated list of MCP servers that are currently active (enabled) and available for  assignment to rooms. Only servers in the enabled state are included. Each entry contains a compact  summary with the server name, type, icon, and status. Supports pagination via startIndex and count.  The total count of available servers is included in the response metadata.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-available-servers/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startIndex** | **Int** | The number of items to skip before returning results (zero-based offset). Defaults to 0. | [optional] 
 **count** | **Int** | The maximum number of items to return per page. Defaults to 100. | [optional] 

### Return type

[**McpServerShortArrayWrapper**](McpServerShortArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let startIndex = 987 // Int | The number of items to skip before returning results (zero-based offset). Defaults to 0. (optional)
let count = 987 // Int | The maximum number of items to return per page. Defaults to 100. (optional)

// Get available MCP servers
AIMCPAPIApi.getAvailableServers(startIndex: startIndex, count: count) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRoomServers**
```swift
    open class func getRoomServers(roomId: Int, completion: @escaping (_ data: McpServerStatusArrayWrapper?, _ error: Error?) -> Void)
```

Returns the list of MCP servers currently assigned to the specified room along with their connection  statuses for the current user. For OAuth-based servers, the connection status reflects whether the  current user has completed authorization. Requires access to the room's AI chat.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-servers/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **roomId** | **Int** | Identifier of the room whose assigned MCP servers are being retrieved. | 

### Return type

[**McpServerStatusArrayWrapper**](McpServerStatusArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let roomId = 987 // Int | Identifier of the room whose assigned MCP servers are being retrieved.

// Get MCP servers assigned to a room
AIMCPAPIApi.getRoomServers(roomId: roomId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getServer**
```swift
    open class func getServer(id: UUID, completion: @escaping (_ data: McpServerShortWrapper?, _ error: Error?) -> Void)
```

Retrieves a summary view of a single MCP server by its unique identifier, including its name,  type, enabled state, and icon. This endpoint returns a compact representation without  sensitive details such as endpoint URL or authentication headers.  Requires DocSpace administrator privileges.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-server/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **UUID** | Unique identifier of the MCP server to retrieve. | 

### Return type

[**McpServerShortWrapper**](McpServerShortWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // UUID | Unique identifier of the MCP server to retrieve.

// Get an MCP server by ID
AIMCPAPIApi.getServer(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getServers**
```swift
    open class func getServers(startIndex: Int? = nil, count: Int? = nil, completion: @escaping (_ data: McpServerArrayWrapper?, _ error: Error?) -> Void)
```

Returns a paginated list of all MCP servers registered for the current tenant, including both  enabled and disabled servers. Each entry contains the full configuration (endpoint, headers,  icon, type, and status). Supports pagination via the startIndex and count query parameters.  The total number of servers is included in the response metadata.  Requires DocSpace administrator privileges.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-servers/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startIndex** | **Int** | The number of items to skip before returning results (zero-based offset). Defaults to 0. | [optional] 
 **count** | **Int** | The maximum number of items to return per page. Defaults to 100. | [optional] 

### Return type

[**McpServerArrayWrapper**](McpServerArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let startIndex = 987 // Int | The number of items to skip before returning results (zero-based offset). Defaults to 0. (optional)
let count = 987 // Int | The maximum number of items to return per page. Defaults to 100. (optional)

// Get all MCP servers
AIMCPAPIApi.getServers(startIndex: startIndex, count: count) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTools**
```swift
    open class func getTools(roomId: Int, serverId: UUID, completion: @escaping (_ data: McpToolArrayWrapper?, _ error: Error?) -> Void)
```

Retrieves the full list of tools exposed by an MCP server within the context of a specific room,  along with each tool's enabled or disabled state. Disabled tools will not be invoked during  AI chat sessions in this room. Requires access to the room's AI chat.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tools/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **roomId** | **Int** | Identifier of the room containing the MCP server. | 
 **serverId** | **UUID** | Unique identifier of the MCP server whose tools are being retrieved. | 

### Return type

[**McpToolArrayWrapper**](McpToolArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let roomId = 987 // Int | Identifier of the room containing the MCP server.
let serverId = 987 // UUID | Unique identifier of the MCP server whose tools are being retrieved.

// Get MCP server tools in a room
AIMCPAPIApi.getTools(roomId: roomId, serverId: serverId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setServerStatus**
```swift
    open class func setServerStatus(id: UUID, setServerStatusRequestBody: SetServerStatusRequestBody, completion: @escaping (_ data: McpServerWrapper?, _ error: Error?) -> Void)
```

Toggles the enabled/disabled state of an MCP server. When a server is disabled, it becomes  unavailable for assignment to rooms and will not be used during AI chat sessions.  Enabling a previously disabled server restores its availability across the tenant.  Requires DocSpace administrator privileges.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-server-status/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **UUID** | Unique identifier of the MCP server whose status is being changed. | 
 **setServerStatusRequestBody** | [**SetServerStatusRequestBody**](SetServerStatusRequestBody.md) | New status value. | 

### Return type

[**McpServerWrapper**](McpServerWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // UUID | Unique identifier of the MCP server whose status is being changed.
let setServerStatusRequestBody = SetServerStatusRequestBody(enabled: true) // SetServerStatusRequestBody | New status value.

// Enable or disable an MCP server
AIMCPAPIApi.setServerStatus(id: id, setServerStatusRequestBody: setServerStatusRequestBody) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setTools**
```swift
    open class func setTools(roomId: Int, serverId: UUID, setMcpToolsRequestBody: SetMcpToolsRequestBody, completion: @escaping (_ data: McpToolArrayWrapper?, _ error: Error?) -> Void)
```

Updates the set of disabled tools for an MCP server within a specific room. Pass a list of tool names  that should be disabled — all other tools exposed by the server will remain enabled. This allows  room administrators to restrict which MCP capabilities are available during AI chat sessions.  Requires room edit permissions.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-tools/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **roomId** | **Int** | Identifier of the room containing the MCP server. | 
 **serverId** | **UUID** | Unique identifier of the MCP server whose tools are being configured. | 
 **setMcpToolsRequestBody** | [**SetMcpToolsRequestBody**](SetMcpToolsRequestBody.md) | Tool configuration parameters. | 

### Return type

[**McpToolArrayWrapper**](McpToolArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let roomId = 987 // Int | Identifier of the room containing the MCP server.
let serverId = 987 // UUID | Unique identifier of the MCP server whose tools are being configured.
let setMcpToolsRequestBody = SetMcpToolsRequestBody(disabledTools: ["disabledTools_example"]) // SetMcpToolsRequestBody | Tool configuration parameters.

// Configure MCP server tools in a room
AIMCPAPIApi.setTools(roomId: roomId, serverId: serverId, setMcpToolsRequestBody: setMcpToolsRequestBody) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateServer**
```swift
    open class func updateServer(id: UUID, updateServerRequestBody: UpdateServerRequestBody, completion: @escaping (_ data: McpServerWrapper?, _ error: Error?) -> Void)
```

Updates the configuration of an existing custom MCP server identified by its unique ID.  Any combination of fields (name, description, endpoint, headers, icon) can be updated in a single request.  If the endpoint or headers are changed, the system re-validates connectivity by attempting to reach  the new endpoint before saving. Name uniqueness and format rules are enforced on every update.  Requires DocSpace administrator privileges.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-server/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **UUID** | Unique identifier of the MCP server to update. | 
 **updateServerRequestBody** | [**UpdateServerRequestBody**](UpdateServerRequestBody.md) | Updated server configuration fields. | 

### Return type

[**McpServerWrapper**](McpServerWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // UUID | Unique identifier of the MCP server to update.
let updateServerRequestBody = UpdateServerRequestBody(name: "name_example", description: "description_example", endpoint: "endpoint_example", headers: "TODO", updateIcon: true, icon: "icon_example") // UpdateServerRequestBody | Updated server configuration fields.

// Update a custom MCP server
AIMCPAPIApi.updateServer(id: id, updateServerRequestBody: updateServerRequestBody) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

