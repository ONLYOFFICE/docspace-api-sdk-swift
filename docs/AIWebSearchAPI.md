# AIWebSearchAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**aiWebSearchClear**](AIWebSearchAPI.md#aiwebsearchclear) | **DELETE** /api/2.0/ai/web-search/clear | Clear the web-search configuration
[**aiWebSearchConfigure**](AIWebSearchAPI.md#aiwebsearchconfigure) | **PUT** /api/2.0/ai/web-search/configure | Configure and verify web search
[**aiWebSearchGetActiveConfig**](AIWebSearchAPI.md#aiwebsearchgetactiveconfig) | **GET** /api/2.0/ai/web-search/get-active-config | Get active config
[**aiWebSearchIsConfigured**](AIWebSearchAPI.md#aiwebsearchisconfigured) | **GET** /api/2.0/ai/web-search/is-configured | Is configured
[**aiWebSearchPassthroughContents**](AIWebSearchAPI.md#aiwebsearchpassthroughcontents) | **POST** /api/2.0/ai/websearch/v1/contents | Web page contents passthrough
[**aiWebSearchPassthroughSearch**](AIWebSearchAPI.md#aiwebsearchpassthroughsearch) | **POST** /api/2.0/ai/websearch/v1/search | Web search passthrough
[**aiWebSearchSetActiveConfig**](AIWebSearchAPI.md#aiwebsearchsetactiveconfig) | **PUT** /api/2.0/ai/web-search/set-active-config | Set active config
[**aiWebSearchTestConnection**](AIWebSearchAPI.md#aiwebsearchtestconnection) | **POST** /api/2.0/ai/web-search/test-connection | Test a web-search provider


# **aiWebSearchClear**
```swift
    open class func aiWebSearchClear(aiWebSearchClearRequest: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiSuccessResponse
```

Removes the portal's web-search configuration, after which web search is unavailable everywhere it was not configured separately. This is not scoped: it takes no `entityId` and any body sent with it is ignored, so it cannot be used to clear one room's configuration. Clearing an already-unconfigured portal is not an error and the call answers success either way. The stored provider key is destroyed with the configuration and has to be entered again.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-web-search-clear/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiWebSearchClearRequest** | **String** | Ignored. The operation always clears the portal-wide configuration, so send an empty body; a value here does not scope it to a room. | 

### Return type

[**AiSuccessResponse**](AiSuccessResponse.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let aiWebSearchClearRequest = "aiWebSearchClearRequest_example" // String | Ignored. The operation always clears the portal-wide configuration, so send an empty body; a value here does not scope it to a room.

// Clear the web-search configuration
do {
    let response = try await AIWebSearchAPIApi.aiWebSearchClear(aiWebSearchClearRequest: aiWebSearchClearRequest)
    dump(response)
} catch {
    print(error)
}
```

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **aiWebSearchConfigure**
```swift
    open class func aiWebSearchConfigure(aiWebSearchConfigureRequest: AiWebSearchConfigureRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiWebSearchMutationResult
```

Validates a web-search configuration against the live provider and stores it only if the provider answers, which makes it the safe way to save a form in one step. `entityId` scopes the configuration to a room and has to name one the caller can open; omitting it configures the portal. A `baseUrl` pointing at a private network address is refused. Use `PUT api/2.0/ai/web-search/set-active-config` when the configuration should be stored without a provider round trip.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-web-search-configure/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiWebSearchConfigureRequest** | [**AiWebSearchConfigureRequest**](AiWebSearchConfigureRequest.md) |  | 

### Return type

[**AiWebSearchMutationResult**](AiWebSearchMutationResult.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let aiWebSearchConfigureRequest = AiWebSearchConfigureRequest(config: AiWebSearchConfig(provider: "provider_example", key: "key_example", baseUrl: "baseUrl_example", isCloudProvider: true, headers: "TODO"), entityId: "entityId_example") // AiWebSearchConfigureRequest | 

// Configure and verify web search
do {
    let response = try await AIWebSearchAPIApi.aiWebSearchConfigure(aiWebSearchConfigureRequest: aiWebSearchConfigureRequest)
    dump(response)
} catch {
    print(error)
}
```

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **aiWebSearchGetActiveConfig**
```swift
    open class func aiWebSearchGetActiveConfig(entityId: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiWebSearchConfig
```

Returns the web-search configuration in force for a scope - the provider, its endpoint and its settings. `entityId` picks a room and has to name one the caller can open; omitting it reads the portal-wide configuration, and a room with none of its own falls back to that. An unconfigured scope answers an empty result rather than 404. The provider key is not part of the answer, so a client cannot read it back after storing it.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-web-search-get-active-config/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityId** | **String** | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. | [optional] 

### Return type

[**AiWebSearchConfig**](AiWebSearchConfig.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let entityId = "entityId_example" // String | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. (optional)

// Get active config
do {
    let response = try await AIWebSearchAPIApi.aiWebSearchGetActiveConfig(entityId: entityId)
    dump(response)
} catch {
    print(error)
}
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **aiWebSearchIsConfigured**
```swift
    open class func aiWebSearchIsConfigured(entityId: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> Bool
```

Tells whether web search is available in a scope, as a bare boolean, which is the cheap check for hiding or showing the feature. `entityId` picks a room and has to name one the caller can open. It reports the same state as `GET api/2.0/ai/web-search/get-active-config` without transferring the configuration itself. A true answer means a provider is stored, not that the provider is currently reachable - probe that with `POST api/2.0/ai/web-search/test-connection`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-web-search-is-configured/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityId** | **String** | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. | [optional] 

### Return type

**Bool**

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let entityId = "entityId_example" // String | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. (optional)

// Is configured
do {
    let response = try await AIWebSearchAPIApi.aiWebSearchIsConfigured(entityId: entityId)
    dump(response)
} catch {
    print(error)
}
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **aiWebSearchPassthroughContents**
```swift
    open class func aiWebSearchPassthroughContents(aiWebSearchPassthroughContentsRequest: [String: JSONValue?], apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> [String: JSONValue]
```

Fetches the contents of web pages on behalf of the document editor's AI plugin, against the portal's active web-search provider, exactly as the search passthrough does — including the `entityId` / `entityKind` billing attribution. The portal-wide configuration is used and a portal without one answers 404. `urls` has to be a non-empty array of strings, or the call answers 400 naming the field. The provider's 4xx status, body and content type are relayed, so its 429 surfaces unchanged, while a 5xx is replaced by a fixed 502 with the detail kept in the server log. This is the follow-up to `POST api/2.0/ai/websearch/v1/search`, which returns the results whose contents this operation retrieves.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-web-search-passthrough-contents/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiWebSearchPassthroughContentsRequest** | [**[String: JSONValue?]**](JSONValue.md) | A page-contents request in the shape the portal's active web-search provider expects, forwarded to it once `urls` passes a type check. The endpoint and the key come from the stored configuration. | 

### Return type

**[String: JSONValue]**

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let aiWebSearchPassthroughContentsRequest = "TODO" // [String: JSONValue?] | A page-contents request in the shape the portal's active web-search provider expects, forwarded to it once `urls` passes a type check. The endpoint and the key come from the stored configuration.

// Web page contents passthrough
do {
    let response = try await AIWebSearchAPIApi.aiWebSearchPassthroughContents(aiWebSearchPassthroughContentsRequest: aiWebSearchPassthroughContentsRequest)
    dump(response)
} catch {
    print(error)
}
```

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **aiWebSearchPassthroughSearch**
```swift
    open class func aiWebSearchPassthroughSearch(aiWebSearchPassthroughSearchRequest: [String: JSONValue?], apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> [String: JSONValue?]
```

Runs a web search on behalf of the document editor's AI plugin, which holds only a placeholder configuration - the portal's active provider and its key are resolved here, so neither ever reaches the browser. The portal-wide configuration is used, and a portal without one answers 404. The `entityId` and `entityKind` query parameters name the document the search is billed to; with the ONLYOFFICE provider the entry is resolved under the caller's credentials and sent to the gateway as the request `metadata` (`source_id` / `source_type` / `source_title`), and an entry the caller cannot open sends none. `query` has to be a non-empty string and `numResults`, when sent, a positive integer; a body failing that answers 400 naming the field, before anything is sent on. The provider's own 4xx status, body and content type are relayed as they stand, so a provider that rate-limits answers 429; a 5xx from the provider or from the hop in front of it is not relayed, its detail stays in the server log and the call answers a fixed 502, which is also what an unreachable provider answers. Closing the connection aborts the upstream request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-web-search-passthrough-search/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiWebSearchPassthroughSearchRequest** | [**[String: JSONValue?]**](JSONValue.md) | A search request in the shape the portal's active web-search provider expects, forwarded to it once `query` and `numResults` pass a type check. The endpoint and the key come from the stored configuration and must not be sent here. | 

### Return type

**[String: JSONValue?]**

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let aiWebSearchPassthroughSearchRequest = "TODO" // [String: JSONValue?] | A search request in the shape the portal's active web-search provider expects, forwarded to it once `query` and `numResults` pass a type check. The endpoint and the key come from the stored configuration and must not be sent here.

// Web search passthrough
do {
    let response = try await AIWebSearchAPIApi.aiWebSearchPassthroughSearch(aiWebSearchPassthroughSearchRequest: aiWebSearchPassthroughSearchRequest)
    dump(response)
} catch {
    print(error)
}
```

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **aiWebSearchSetActiveConfig**
```swift
    open class func aiWebSearchSetActiveConfig(aiWebSearchSetActiveConfigRequest: AiWebSearchSetActiveConfigRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiSuccessResponse
```

Stores a web-search configuration without contacting the provider first, for a form that has already validated its input or for restoring a known-good configuration. `entityId` scopes it to a room and has to name one the caller can open. A `baseUrl` pointing at a private network address is still refused, because that check is local. Nothing guarantees the stored provider works: follow up with `POST api/2.0/ai/web-search/test-connection`, or use `PUT api/2.0/ai/web-search/configure` to have the store gated on a live probe.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-web-search-set-active-config/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiWebSearchSetActiveConfigRequest** | [**AiWebSearchSetActiveConfigRequest**](AiWebSearchSetActiveConfigRequest.md) |  | 

### Return type

[**AiSuccessResponse**](AiSuccessResponse.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let aiWebSearchSetActiveConfigRequest = AiWebSearchSetActiveConfigRequest(config: AiWebSearchConfig(provider: "provider_example", key: "key_example", baseUrl: "baseUrl_example", isCloudProvider: true, headers: "TODO"), entityId: "entityId_example") // AiWebSearchSetActiveConfigRequest | 

// Set active config
do {
    let response = try await AIWebSearchAPIApi.aiWebSearchSetActiveConfig(aiWebSearchSetActiveConfigRequest: aiWebSearchSetActiveConfigRequest)
    dump(response)
} catch {
    print(error)
}
```

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **aiWebSearchTestConnection**
```swift
    open class func aiWebSearchTestConnection(aiWebSearchConfig: AiWebSearchConfig, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiProfilesTestConnection200Response
```

Probes a web-search configuration against the live provider and reports the outcome, storing nothing - this is what a Test button calls so that a failure commits no state. The configuration is taken from the request rather than from storage, so credentials that were never saved can be checked. A `baseUrl` pointing at a private network address is refused before any request leaves the portal. The verdict is carried in the body rather than in the status, so a failed probe still answers 200 and the caller has to read the payload.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-web-search-test-connection/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiWebSearchConfig** | [**AiWebSearchConfig**](AiWebSearchConfig.md) |  | 

### Return type

[**AiProfilesTestConnection200Response**](AiProfilesTestConnection200Response.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let aiWebSearchConfig = AiWebSearchConfig(provider: "provider_example", key: "key_example", baseUrl: "baseUrl_example", isCloudProvider: true, headers: "TODO") // AiWebSearchConfig | 

// Test a web-search provider
do {
    let response = try await AIWebSearchAPIApi.aiWebSearchTestConnection(aiWebSearchConfig: aiWebSearchConfig)
    dump(response)
} catch {
    print(error)
}
```

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

