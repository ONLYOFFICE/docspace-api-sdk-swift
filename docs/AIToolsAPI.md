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

Registers a custom MCP server in the scope under the given name.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-add-custom-server/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiToolsAddCustomServerRequest** | [**AiToolsAddCustomServerRequest**](AiToolsAddCustomServerRequest.md) |  | 

### Return type

[**AiToolsMutationResult**](AiToolsMutationResult.md)

### Authorization

No authorization required

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

Lists the tools on the always-allow list of the scope.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-get-allow-always/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityId** | **String** | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. | [optional] 

### Return type

**[String]**

### Authorization

No authorization required

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

Returns the configuration of one custom MCP server, or an empty result when it is not registered.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-get-custom-server/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String** | The custom MCP server name. | 
 **entityId** | **String** | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. | [optional] 

### Return type

**JSONValue**

### Authorization

No authorization required

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

Returns the switched-off tools of the scope, grouped by server type.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-get-disabled/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityId** | **String** | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. | [optional] 

### Return type

[**[String: [String]]**](Array.md)

### Authorization

No authorization required

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

Tells whether one tool is on the always-allow list.

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

No authorization required

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

Tells whether one tool of a server type is switched off.

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

No authorization required

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

Lists the custom MCP servers registered in the scope, keyed by name.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-list-custom-servers/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityId** | **String** | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. | [optional] 

### Return type

**[String: JSONValue]**

### Authorization

No authorization required

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
    open class func aiToolsListSystemTools(entityId: String? = nil, completion: @escaping (_ data: [String: [AiTMCPItem]]?, _ error: Error?) -> Void)
```

Lists the tools of the host-configured system MCP servers, grouped by server type. The servers are connected and listed server-side, so the client renders its permission cards from one request and never opens an MCP connection of its own.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-list-system-tools/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityId** | **String** | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. | [optional] 

### Return type

[**[String: [AiTMCPItem]]**](Array.md)

### Authorization

No authorization required

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

Removes a custom MCP server from the registry.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-remove-custom-server/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiToolsRemoveCustomServerRequest** | [**AiToolsRemoveCustomServerRequest**](AiToolsRemoveCustomServerRequest.md) |  | 

### Return type

[**AiSuccessResponse**](AiSuccessResponse.md)

### Authorization

No authorization required

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

Replaces the whole custom MCP server registry of the scope with the supplied map.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-replace-all-custom-servers/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiToolsReplaceAllCustomServersRequest** | [**AiToolsReplaceAllCustomServersRequest**](AiToolsReplaceAllCustomServersRequest.md) |  | 

### Return type

[**AiToolsBulkResult**](AiToolsBulkResult.md)

### Authorization

No authorization required

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

Adds a tool to the always-allow list, or removes it - the tools on that list run without an approval dialog.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-set-allow-always/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiToolsSetAllowAlwaysRequest** | [**AiToolsSetAllowAlwaysRequest**](AiToolsSetAllowAlwaysRequest.md) |  | 

### Return type

[**AiSuccessResponse**](AiSuccessResponse.md)

### Authorization

No authorization required

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

Marks the listed tools of one server type as switched off, so the model is no longer offered them.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-set-disabled/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiToolsSetDisabledRequest** | [**AiToolsSetDisabledRequest**](AiToolsSetDisabledRequest.md) |  | 

### Return type

[**AiSuccessResponse**](AiSuccessResponse.md)

### Authorization

No authorization required

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

Updates the configuration of a registered custom MCP server.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-update-custom-server/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiToolsUpdateCustomServerRequest** | [**AiToolsUpdateCustomServerRequest**](AiToolsUpdateCustomServerRequest.md) |  | 

### Return type

[**AiToolsMutationResult**](AiToolsMutationResult.md)

### Authorization

No authorization required

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

