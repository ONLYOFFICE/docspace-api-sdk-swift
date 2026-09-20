# AIToolsAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**aiToolsAddCustomServer**](AIToolsAPI.md#aitoolsaddcustomserver) | **POST** /api/2.0/ai/tools/add-custom-server | Add custom server
[**aiToolsGetAllowAlways**](AIToolsAPI.md#aitoolsgetallowalways) | **GET** /api/2.0/ai/tools/get-allow-always | Get allow always
[**aiToolsGetCustomServer**](AIToolsAPI.md#aitoolsgetcustomserver) | **GET** /api/2.0/ai/tools/get-custom-server | Get custom server
[**aiToolsGetDisabled**](AIToolsAPI.md#aitoolsgetdisabled) | **GET** /api/2.0/ai/tools/get-disabled | Get disabled
[**aiToolsIsAllowAlways**](AIToolsAPI.md#aitoolsisallowalways) | **GET** /api/2.0/ai/tools/is-allow-always | Is allow always
[**aiToolsIsToolDisabled**](AIToolsAPI.md#aitoolsistooldisabled) | **GET** /api/2.0/ai/tools/is-tool-disabled | Is tool disabled
[**aiToolsListCustomServers**](AIToolsAPI.md#aitoolslistcustomservers) | **GET** /api/2.0/ai/tools/list-custom-servers | List custom servers
[**aiToolsListSystemTools**](AIToolsAPI.md#aitoolslistsystemtools) | **GET** /api/2.0/ai/tools/list-system-tools | List system tools
[**aiToolsRemoveCustomServer**](AIToolsAPI.md#aitoolsremovecustomserver) | **DELETE** /api/2.0/ai/tools/remove-custom-server | Remove custom server
[**aiToolsReplaceAllCustomServers**](AIToolsAPI.md#aitoolsreplaceallcustomservers) | **PUT** /api/2.0/ai/tools/replace-all-custom-servers | Replace all custom servers
[**aiToolsSetAllowAlways**](AIToolsAPI.md#aitoolssetallowalways) | **PUT** /api/2.0/ai/tools/set-allow-always | Set allow always
[**aiToolsSetDisabled**](AIToolsAPI.md#aitoolssetdisabled) | **PUT** /api/2.0/ai/tools/set-disabled | Set disabled
[**aiToolsUpdateCustomServer**](AIToolsAPI.md#aitoolsupdatecustomserver) | **PUT** /api/2.0/ai/tools/update-custom-server | Update custom server


# **aiToolsAddCustomServer**
```swift
    open class func aiToolsAddCustomServer(aiToolsAddCustomServerRequest: AiToolsAddCustomServerRequest, completion: @escaping (_ data: AiToolsMutationResult?, _ error: Error?) -> Void)
```

Registers a custom MCP server under the given name so the model may call its tools. The name becomes a URL path segment, so it may not be `.`, `..`, or contain a path separator or a control character. `config` may be omitted in two cases: a name matching a host-configured system server pins the entry to that server's canonical settings as a whitelist marker, and a name already registered portal-wide copies the portal-level configuration into this scope; anything else without a config is rejected. `entityId` scopes the registration and has to name a room the caller can open - a room that is not an agent room folds to the portal-wide scope, while an unreachable one is refused so it cannot silently rewrite the portal's own registry.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-add-custom-server/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiToolsAddCustomServerRequest** | [**AiToolsAddCustomServerRequest**](AiToolsAddCustomServerRequest.md) |  | 

### Return type

[**AiToolsMutationResult**](AiToolsMutationResult.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let aiToolsAddCustomServerRequest = aiToolsAddCustomServer_request(name: "name_example", config: 123, entityId: "entityId_example") // AiToolsAddCustomServerRequest | 

// Add custom server
AIToolsAPIApi.aiToolsAddCustomServer(aiToolsAddCustomServerRequest: aiToolsAddCustomServerRequest) { (response, error) in
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

# **aiToolsGetAllowAlways**
```swift
    open class func aiToolsGetAllowAlways(entityId: String? = nil, completion: @escaping (_ data: [String]?, _ error: Error?) -> Void)
```

Returns the always-allow list of the scope - the tools whose calls run without pausing the round for approval. `entityId` picks the scope and omitting it reads the portal-wide setting. An empty answer means every tool call has to be approved through `POST api/2.0/ai/ai/approve-tool-call`. Use `GET api/2.0/ai/tools/is-allow-always` to ask about a single tool.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-get-allow-always/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityId** | **String** | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. | [optional] 

### Return type

**[String]**

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let entityId = "entityId_example" // String | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. (optional)

// Get allow always
AIToolsAPIApi.aiToolsGetAllowAlways(entityId: entityId) { (response, error) in
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

# **aiToolsGetCustomServer**
```swift
    open class func aiToolsGetCustomServer(name: String, entityId: String? = nil, completion: @escaping (_ data: JSONValue?, _ error: Error?) -> Void)
```

Returns the stored configuration of one registered custom MCP server. The name is required and is read from the query; `entityId` picks the scope, and omitting it reads the portal-wide registry. A name that is not registered answers a null body with status 200 rather than 404. The configuration of a system server is returned empty on purpose: those run server-side only, so neither their endpoint nor their credentials are handed to a browser.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-get-custom-server/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String** | The custom MCP server name. | 
 **entityId** | **String** | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. | [optional] 

### Return type

**JSONValue**

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let name = "name_example" // String | The custom MCP server name.
let entityId = "entityId_example" // String | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. (optional)

// Get custom server
AIToolsAPIApi.aiToolsGetCustomServer(name: name, entityId: entityId) { (response, error) in
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

# **aiToolsGetDisabled**
```swift
    open class func aiToolsGetDisabled(entityId: String? = nil, completion: @escaping (_ data: [String: [String]]?, _ error: Error?) -> Void)
```

Returns the tools switched off in the scope, as a map of server type to tool names. `entityId` picks the scope and omitting it reads the portal-wide setting. An absent server type means nothing is switched off for it, so an empty answer means every tool is on offer. Use `GET api/2.0/ai/tools/is-tool-disabled` to ask about one tool instead of reading the whole map.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-get-disabled/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityId** | **String** | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. | [optional] 

### Return type

[**[String: [String]]**](Array.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let entityId = "entityId_example" // String | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. (optional)

// Get disabled
AIToolsAPIApi.aiToolsGetDisabled(entityId: entityId) { (response, error) in
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

# **aiToolsIsAllowAlways**
```swift
    open class func aiToolsIsAllowAlways(serverType: String, toolName: String, entityId: String? = nil, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Tells whether one named tool runs without an approval pause in the scope. Both `serverType` and `toolName` are required and are read from the query; `entityId` picks the scope. The answer is a bare boolean. A false answer means a call to that tool pauses the round, and the caller resumes it with the approve or deny operation.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-is-allow-always/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **serverType** | **String** | The MCP server type the tool belongs to. | 
 **toolName** | **String** | The tool name. | 
 **entityId** | **String** | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. | [optional] 

### Return type

**Bool**

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let serverType = "serverType_example" // String | The MCP server type the tool belongs to.
let toolName = "toolName_example" // String | The tool name.
let entityId = "entityId_example" // String | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. (optional)

// Is allow always
AIToolsAPIApi.aiToolsIsAllowAlways(serverType: serverType, toolName: toolName, entityId: entityId) { (response, error) in
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

# **aiToolsIsToolDisabled**
```swift
    open class func aiToolsIsToolDisabled(serverType: String, toolName: String, entityId: String? = nil, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Tells whether one named tool of one server type is switched off in the scope. Both `serverType` and `toolName` are required and are read from the query; `entityId` picks the scope. The answer is a bare boolean. It reflects only the disable list - a tool that is on offer may still require approval, which `GET api/2.0/ai/tools/is-allow-always` reports.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-is-tool-disabled/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **serverType** | **String** | The MCP server type the tool belongs to. | 
 **toolName** | **String** | The tool name. | 
 **entityId** | **String** | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. | [optional] 

### Return type

**Bool**

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let serverType = "serverType_example" // String | The MCP server type the tool belongs to.
let toolName = "toolName_example" // String | The tool name.
let entityId = "entityId_example" // String | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. (optional)

// Is tool disabled
AIToolsAPIApi.aiToolsIsToolDisabled(serverType: serverType, toolName: toolName, entityId: entityId) { (response, error) in
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

# **aiToolsListCustomServers**
```swift
    open class func aiToolsListCustomServers(entityId: String? = nil, completion: @escaping (_ data: [String: JSONValue]?, _ error: Error?) -> Void)
```

Lists the custom MCP servers registered in the scope as a map of name to configuration. `entityId` picks the scope and omitting it lists the portal-wide registry. The configuration of any entry that names a host-configured system server comes back empty, for the same reason as in the single-server read, and the portal's own built-in MCP server is left out of the list entirely because it is always enabled and cannot be configured. The names in the answer are what the disable and always-allow operations accept as `serverType`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-list-custom-servers/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityId** | **String** | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. | [optional] 

### Return type

**[String: JSONValue]**

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let entityId = "entityId_example" // String | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. (optional)

// List custom servers
AIToolsAPIApi.aiToolsListCustomServers(entityId: entityId) { (response, error) in
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

# **aiToolsListSystemTools**
```swift
    open class func aiToolsListSystemTools(entityId: String? = nil, completion: @escaping (_ data: AiToolsListSystemTools200Response?, _ error: Error?) -> Void)
```

Lists every tool the scope can offer the model, as a map of server type to tool group. The answer merges two sources - the host-configured system servers and the live tools of the scope's registered custom MCP servers - and names the system ones separately in `system`, so a client can tell the two apart. `errors` carries the reason a registered server delivered no tools, which is the text to show on a permission card, because the browser cannot reach a server-executed MCP server to find out for itself. The connections are opened server-side, so one request is enough and the client never speaks MCP itself; the portal's own built-in server is left out because it is always enabled.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-list-system-tools/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityId** | **String** | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. | [optional] 

### Return type

[**AiToolsListSystemTools200Response**](AiToolsListSystemTools200Response.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let entityId = "entityId_example" // String | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. (optional)

// List system tools
AIToolsAPIApi.aiToolsListSystemTools(entityId: entityId) { (response, error) in
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

# **aiToolsRemoveCustomServer**
```swift
    open class func aiToolsRemoveCustomServer(aiToolsRemoveCustomServerRequest: AiToolsRemoveCustomServerRequest, completion: @escaping (_ data: AiSuccessResponse?, _ error: Error?) -> Void)
```

Unregisters a custom MCP server from the scope, so the model is no longer offered its tools. The name is required and may be sent in the body or as a query parameter, and `entityId` has to name a room the caller can open. A name that is not registered is not reported: the call answers success without removing anything. The server itself is untouched - only this portal's registration is dropped.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-remove-custom-server/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiToolsRemoveCustomServerRequest** | [**AiToolsRemoveCustomServerRequest**](AiToolsRemoveCustomServerRequest.md) |  | 

### Return type

[**AiSuccessResponse**](AiSuccessResponse.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let aiToolsRemoveCustomServerRequest = aiToolsRemoveCustomServer_request(name: "name_example", entityId: "entityId_example") // AiToolsRemoveCustomServerRequest | 

// Remove custom server
AIToolsAPIApi.aiToolsRemoveCustomServer(aiToolsRemoveCustomServerRequest: aiToolsRemoveCustomServerRequest) { (response, error) in
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

# **aiToolsReplaceAllCustomServers**
```swift
    open class func aiToolsReplaceAllCustomServers(aiToolsReplaceAllCustomServersRequest: AiToolsReplaceAllCustomServersRequest, completion: @escaping (_ data: AiToolsBulkResult?, _ error: Error?) -> Void)
```

Replaces the whole custom MCP server registry of the scope with the supplied map in one write, which makes it the operation a settings screen saves with. `map` is required: without it the registry would be emptied, so a missing or non-object value is rejected rather than treated as none. Every name in the map is validated as a routable path segment and every configuration is resolved before anything is written, so a map with one bad entry changes nothing. `entityId` has to name a room the caller can open - this is the operation where an unreachable one would otherwise have wiped the portal-wide registry.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-replace-all-custom-servers/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiToolsReplaceAllCustomServersRequest** | [**AiToolsReplaceAllCustomServersRequest**](AiToolsReplaceAllCustomServersRequest.md) |  | 

### Return type

[**AiToolsBulkResult**](AiToolsBulkResult.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let aiToolsReplaceAllCustomServersRequest = aiToolsReplaceAllCustomServers_request(map: "TODO", entityId: "entityId_example") // AiToolsReplaceAllCustomServersRequest | 

// Replace all custom servers
AIToolsAPIApi.aiToolsReplaceAllCustomServers(aiToolsReplaceAllCustomServersRequest: aiToolsReplaceAllCustomServersRequest) { (response, error) in
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

# **aiToolsSetAllowAlways**
```swift
    open class func aiToolsSetAllowAlways(aiToolsSetAllowAlwaysRequest: AiToolsSetAllowAlwaysRequest, completion: @escaping (_ data: AiSuccessResponse?, _ error: Error?) -> Void)
```

Adds one tool to the scope's always-allow list, or takes it off, which decides whether a call to it pauses the round for approval. `value` is coerced to a boolean, so any truthy value adds and any falsy one removes. Unlike the disable operation, `serverType` is not validated here: an unknown one is stored and then simply never matches, so a wrong value fails silently. `entityId` has to name a room the caller can open.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-set-allow-always/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiToolsSetAllowAlwaysRequest** | [**AiToolsSetAllowAlwaysRequest**](AiToolsSetAllowAlwaysRequest.md) |  | 

### Return type

[**AiSuccessResponse**](AiSuccessResponse.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let aiToolsSetAllowAlwaysRequest = aiToolsSetAllowAlways_request(serverType: "serverType_example", toolName: "toolName_example", value: false, entityId: "entityId_example") // AiToolsSetAllowAlwaysRequest | 

// Set allow always
AIToolsAPIApi.aiToolsSetAllowAlways(aiToolsSetAllowAlwaysRequest: aiToolsSetAllowAlwaysRequest) { (response, error) in
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

# **aiToolsSetDisabled**
```swift
    open class func aiToolsSetDisabled(aiToolsSetDisabledRequest: AiToolsSetDisabledRequest, completion: @escaping (_ data: AiSuccessResponse?, _ error: Error?) -> Void)
```

Switches off the listed tools of one server type in the scope, so the model is no longer offered them. `serverType` has to be a key the round's tool filter actually matches - a host-configured system server, one of the two DocSpace integration groups, web search, image generation, or one of the scope's registered custom servers - and an unknown value is rejected with the list of valid ones in the message, rather than stored and silently ignored. `toolNames` replaces the previous selection for that server type, so send the full list and pass an empty one to switch everything back on. `entityId` has to name a room the caller can open.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-set-disabled/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiToolsSetDisabledRequest** | [**AiToolsSetDisabledRequest**](AiToolsSetDisabledRequest.md) |  | 

### Return type

[**AiSuccessResponse**](AiSuccessResponse.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let aiToolsSetDisabledRequest = aiToolsSetDisabled_request(serverType: "serverType_example", toolNames: ["toolNames_example"], entityId: "entityId_example") // AiToolsSetDisabledRequest | 

// Set disabled
AIToolsAPIApi.aiToolsSetDisabled(aiToolsSetDisabledRequest: aiToolsSetDisabledRequest) { (response, error) in
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

# **aiToolsUpdateCustomServer**
```swift
    open class func aiToolsUpdateCustomServer(aiToolsUpdateCustomServerRequest: AiToolsUpdateCustomServerRequest, completion: @escaping (_ data: AiToolsMutationResult?, _ error: Error?) -> Void)
```

Replaces the stored configuration of a registered custom MCP server, under the same name and scope rules as the add operation. The name is re-validated as a routable path segment, and an omitted `config` resolves the same way - to a system server's canonical settings, or to the portal-level entry of that name. `entityId` has to name a room the caller can open. The answer carries the stored registry entry.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-update-custom-server/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiToolsUpdateCustomServerRequest** | [**AiToolsUpdateCustomServerRequest**](AiToolsUpdateCustomServerRequest.md) |  | 

### Return type

[**AiToolsMutationResult**](AiToolsMutationResult.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let aiToolsUpdateCustomServerRequest = aiToolsUpdateCustomServer_request(name: "name_example", config: 123, entityId: "entityId_example") // AiToolsUpdateCustomServerRequest | 

// Update custom server
AIToolsAPIApi.aiToolsUpdateCustomServer(aiToolsUpdateCustomServerRequest: aiToolsUpdateCustomServerRequest) { (response, error) in
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

