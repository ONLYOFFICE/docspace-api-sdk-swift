# AISettingsAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAiSettings**](AISettingsAPI.md#getaisettings) | **GET** /api/2.0/ai/config | Get AI settings
[**getVectorizationSettings**](AISettingsAPI.md#getvectorizationsettings) | **GET** /api/2.0/ai/config/vectorization | Get vectorization settings
[**getWebSearchSettings**](AISettingsAPI.md#getwebsearchsettings) | **GET** /api/2.0/ai/config/web-search | Get web search settings
[**setVectorizationSettings**](AISettingsAPI.md#setvectorizationsettings) | **PUT** /api/2.0/ai/config/vectorization | Update vectorization settings
[**setWebSearchSettings**](AISettingsAPI.md#setwebsearchsettings) | **PUT** /api/2.0/ai/config/web-search | Update web search settings


# **getAiSettings**
```swift
    open class func getAiSettings(completion: @escaping (_ data: AiSettingsWrapper?, _ error: Error?) -> Void)
```

Retrieves the combined AI configuration for the current portal, including the status of web search,  vectorization, and AI readiness, along with tool names and the portal MCP server identifier.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-ai-settings/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**AiSettingsWrapper**](AiSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get AI settings
AISettingsAPIApi.getAiSettings() { (response, error) in
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

# **getVectorizationSettings**
```swift
    open class func getVectorizationSettings(completion: @escaping (_ data: VectorizationSettingsWrapper?, _ error: Error?) -> Void)
```

Retrieves the current embedding provider settings used for document vectorization,  including the configured provider type and whether the API key needs to be reset.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-vectorization-settings/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**VectorizationSettingsWrapper**](VectorizationSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get vectorization settings
AISettingsAPIApi.getVectorizationSettings() { (response, error) in
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

# **getWebSearchSettings**
```swift
    open class func getWebSearchSettings(completion: @escaping (_ data: WebSearchSettingsWrapper?, _ error: Error?) -> Void)
```

Retrieves the current web search integration settings for AI chat sessions,  including whether web search is enabled, the configured search engine type, and whether the API key needs to be reset.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-web-search-settings/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**WebSearchSettingsWrapper**](WebSearchSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get web search settings
AISettingsAPIApi.getWebSearchSettings() { (response, error) in
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

# **setVectorizationSettings**
```swift
    open class func setVectorizationSettings(setEmbeddingConfigRequestBody: SetEmbeddingConfigRequestBody, completion: @escaping (_ data: VectorizationSettingsWrapper?, _ error: Error?) -> Void)
```

Configures the embedding provider used for document vectorization at the portal level.  Vectorization enables semantic search and knowledge retrieval capabilities in AI chat sessions.  Allows selecting the embedding provider type and providing the API key for the chosen provider.  Only portal administrators can modify these settings.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-vectorization-settings/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **setEmbeddingConfigRequestBody** | [**SetEmbeddingConfigRequestBody**](SetEmbeddingConfigRequestBody.md) | The embedding provider configuration parameters. | 

### Return type

[**VectorizationSettingsWrapper**](VectorizationSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let setEmbeddingConfigRequestBody = SetEmbeddingConfigRequestBody(type: EmbeddingProviderType(), key: "key_example") // SetEmbeddingConfigRequestBody | The embedding provider configuration parameters.

// Update vectorization settings
AISettingsAPIApi.setVectorizationSettings(setEmbeddingConfigRequestBody: setEmbeddingConfigRequestBody) { (response, error) in
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

# **setWebSearchSettings**
```swift
    open class func setWebSearchSettings(setWebSearchSettingsRequestBody: SetWebSearchSettingsRequestBody, completion: @escaping (_ data: WebSearchSettingsWrapper?, _ error: Error?) -> Void)
```

Configures the web search integration for AI chat sessions at the portal level.  Allows enabling or disabling web search, selecting the search engine type, and providing the API key for the chosen engine.  Only portal administrators can modify these settings.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-web-search-settings/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **setWebSearchSettingsRequestBody** | [**SetWebSearchSettingsRequestBody**](SetWebSearchSettingsRequestBody.md) | The web search configuration parameters. | 

### Return type

[**WebSearchSettingsWrapper**](WebSearchSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let setWebSearchSettingsRequestBody = SetWebSearchSettingsRequestBody(enabled: true, type: EngineType(), key: "key_example") // SetWebSearchSettingsRequestBody | The web search configuration parameters.

// Update web search settings
AISettingsAPIApi.setWebSearchSettings(setWebSearchSettingsRequestBody: setWebSearchSettingsRequestBody) { (response, error) in
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

