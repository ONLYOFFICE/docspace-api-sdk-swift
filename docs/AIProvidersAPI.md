# AIProvidersAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addProvider**](AIProvidersAPI.md#addprovider) | **POST** /api/2.0/ai/providers | Add an AI provider
[**deleteProviders**](AIProvidersAPI.md#deleteproviders) | **DELETE** /api/2.0/ai/providers | Delete AI providers
[**getAvailableProviders**](AIProvidersAPI.md#getavailableproviders) | **GET** /api/2.0/ai/providers/available | Get available AI provider types
[**getDefaultProvider**](AIProvidersAPI.md#getdefaultprovider) | **GET** /api/2.0/ai/providers/default | Get the default AI provider
[**getProviderModels**](AIProvidersAPI.md#getprovidermodels) | **GET** /api/2.0/ai/providers/{providerId}/models | Get all models for a provider with their settings
[**getProviders**](AIProvidersAPI.md#getproviders) | **GET** /api/2.0/ai/providers | Get AI providers
[**previewProviderModels**](AIProvidersAPI.md#previewprovidermodels) | **POST** /api/2.0/ai/providers/models/preview | Preview models for a new AI provider
[**setDefaultProvider**](AIProvidersAPI.md#setdefaultprovider) | **PUT** /api/2.0/ai/providers/default | Set the default AI provider
[**updateProvider**](AIProvidersAPI.md#updateprovider) | **PUT** /api/2.0/ai/providers/{id} | Update an AI provider


# **addProvider**
```swift
    open class func addProvider(createProviderRequestDto: CreateProviderRequestDto? = nil, completion: @escaping (_ data: AiProviderWrapper?, _ error: Error?) -> Void)
```

Registers a new AI provider for the current tenant by specifying its type, display title, API endpoint URL, and authentication key.  The provider becomes available for AI chat conversations after creation. This action is rate-limited.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/add-provider/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createProviderRequestDto** | [**CreateProviderRequestDto**](CreateProviderRequestDto.md) |  | [optional] 

### Return type

[**AiProviderWrapper**](AiProviderWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let createProviderRequestDto = CreateProviderRequestDto(type: ProviderType(), title: "title_example", url: "url_example", key: "key_example", modelSettings: [ModelSettingsItemDto(modelId: "modelId_example", isEnabled: true, alias: "alias_example", capabilities: AiModelCapabilities(vision: true, toolCalling: true, thinking: false))]) // CreateProviderRequestDto |  (optional)

// Add an AI provider
AIProvidersAPIApi.addProvider(createProviderRequestDto: createProviderRequestDto) { (response, error) in
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

# **deleteProviders**
```swift
    open class func deleteProviders(removeProviderRequestDto: RemoveProviderRequestDto? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Permanently deletes one or more AI providers by their identifiers.  All specified providers are removed from the current tenant. This action cannot be undone.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-providers/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **removeProviderRequestDto** | [**RemoveProviderRequestDto**](RemoveProviderRequestDto.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let removeProviderRequestDto = RemoveProviderRequestDto(ids: [123]) // RemoveProviderRequestDto |  (optional)

// Delete AI providers
AIProvidersAPIApi.deleteProviders(removeProviderRequestDto: removeProviderRequestDto) { (response, error) in
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

# **getAvailableProviders**
```swift
    open class func getAvailableProviders(completion: @escaping (_ data: ProviderSettingsArrayWrapper?, _ error: Error?) -> Void)
```

Returns the list of AI provider types that are available for configuration on the current instance.  Each entry includes the provider type identifier and the default API endpoint URL.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-available-providers/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**ProviderSettingsArrayWrapper**](ProviderSettingsArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get available AI provider types
AIProvidersAPIApi.getAvailableProviders() { (response, error) in
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

# **getDefaultProvider**
```swift
    open class func getDefaultProvider(completion: @escaping (_ data: DefaultProviderWrapper?, _ error: Error?) -> Void)
```

Returns the default AI provider and model configured for the current tenant.  Returns null if the tenant does not have any registered providers.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-default-provider/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**DefaultProviderWrapper**](DefaultProviderWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get the default AI provider
AIProvidersAPIApi.getDefaultProvider() { (response, error) in
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

# **getProviderModels**
```swift
    open class func getProviderModels(providerId: Int, completion: @escaping (_ data: ModelSettingsArrayWrapper?, _ error: Error?) -> Void)
```

Returns the full list of AI models available from a provider, including both recommended and additional models.  Each model includes its current settings: enabled state, display alias, and capabilities (vision, tool calling, thinking).  Recommended models are enabled by default and their alias and capabilities come from configuration.  Additional models are disabled by default and can be configured by the admin.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-provider-models/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **providerId** | **Int** | The identifier of the AI provider. | 

### Return type

[**ModelSettingsArrayWrapper**](ModelSettingsArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let providerId = 987 // Int | The identifier of the AI provider.

// Get all models for a provider with their settings
AIProvidersAPIApi.getProviderModels(providerId: providerId) { (response, error) in
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

# **getProviders**
```swift
    open class func getProviders(startIndex: Int? = nil, count: Int? = nil, completion: @escaping (_ data: AiProviderArrayWrapper?, _ error: Error?) -> Void)
```

Returns a paginated list of AI providers configured for the current tenant.  Supports pagination via the startIndex and count query parameters. The total number of providers is included in the response metadata.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-providers/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startIndex** | **Int** | The number of items to skip before returning results (zero-based offset). Defaults to 0. | [optional] 
 **count** | **Int** | The maximum number of items to return per page. Defaults to 100. | [optional] 

### Return type

[**AiProviderArrayWrapper**](AiProviderArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let startIndex = 987 // Int | The number of items to skip before returning results (zero-based offset). Defaults to 0. (optional)
let count = 987 // Int | The maximum number of items to return per page. Defaults to 100. (optional)

// Get AI providers
AIProvidersAPIApi.getProviders(startIndex: startIndex, count: count) { (response, error) in
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

# **previewProviderModels**
```swift
    open class func previewProviderModels(previewProviderModelsRequestDto: PreviewProviderModelsRequestDto? = nil, completion: @escaping (_ data: ModelSettingsArrayWrapper?, _ error: Error?) -> Void)
```

Connects to the specified AI provider using the provided credentials and returns the available models  with their default settings. This is used to preview models before saving the provider.  Recommended models are enabled by default with configuration-defined settings.  Additional models are disabled by default with empty capabilities.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/preview-provider-models/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **previewProviderModelsRequestDto** | [**PreviewProviderModelsRequestDto**](PreviewProviderModelsRequestDto.md) |  | [optional] 

### Return type

[**ModelSettingsArrayWrapper**](ModelSettingsArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let previewProviderModelsRequestDto = PreviewProviderModelsRequestDto(type: ProviderType(), url: "url_example", key: "key_example") // PreviewProviderModelsRequestDto |  (optional)

// Preview models for a new AI provider
AIProvidersAPIApi.previewProviderModels(previewProviderModelsRequestDto: previewProviderModelsRequestDto) { (response, error) in
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

# **setDefaultProvider**
```swift
    open class func setDefaultProvider(setDefaultProviderRequestDto: SetDefaultProviderRequestDto? = nil, completion: @escaping (_ data: DefaultProviderWrapper?, _ error: Error?) -> Void)
```

Sets the default AI provider and model for the current tenant.  The specified provider and model will be used as the default for all new AI chat sessions within the tenant.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-default-provider/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **setDefaultProviderRequestDto** | [**SetDefaultProviderRequestDto**](SetDefaultProviderRequestDto.md) |  | [optional] 

### Return type

[**DefaultProviderWrapper**](DefaultProviderWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let setDefaultProviderRequestDto = SetDefaultProviderRequestDto(providerId: 123, defaultModel: "defaultModel_example") // SetDefaultProviderRequestDto |  (optional)

// Set the default AI provider
AIProvidersAPIApi.setDefaultProvider(setDefaultProviderRequestDto: setDefaultProviderRequestDto) { (response, error) in
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

# **updateProvider**
```swift
    open class func updateProvider(id: Int, updateProviderBody: UpdateProviderBody, completion: @escaping (_ data: AiProviderWrapper?, _ error: Error?) -> Void)
```

Updates the configuration of an existing AI provider, including its display title, API endpoint URL, and authentication key.  Only the fields provided in the request body will be updated. This action is rate-limited.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-provider/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The identifier of the AI provider to update. | 
 **updateProviderBody** | [**UpdateProviderBody**](UpdateProviderBody.md) | The AI provider configuration parameters to update. | 

### Return type

[**AiProviderWrapper**](AiProviderWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The identifier of the AI provider to update.
let updateProviderBody = UpdateProviderBody(title: "title_example", url: "url_example", key: "key_example", modelSettings: [ModelSettingsItemDto(modelId: "modelId_example", isEnabled: true, alias: "alias_example", capabilities: AiModelCapabilities(vision: true, toolCalling: true, thinking: false))]) // UpdateProviderBody | The AI provider configuration parameters to update.

// Update an AI provider
AIProvidersAPIApi.updateProvider(id: id, updateProviderBody: updateProviderBody) { (response, error) in
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

