# AIProfilesAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**aiProfilesCreate**](AIProfilesAPI.md#aiprofilescreate) | **POST** /api/2.0/ai/profiles/create | Create
[**aiProfilesDelete**](AIProfilesAPI.md#aiprofilesdelete) | **DELETE** /api/2.0/ai/profiles/delete | Delete
[**aiProfilesGetById**](AIProfilesAPI.md#aiprofilesgetbyid) | **GET** /api/2.0/ai/profiles/get-by-id | Get by id
[**aiProfilesList**](AIProfilesAPI.md#aiprofileslist) | **GET** /api/2.0/ai/profiles/list | List
[**aiProfilesListModels**](AIProfilesAPI.md#aiprofileslistmodels) | **GET** /api/2.0/ai/profiles/list-models | List models
[**aiProfilesListProviderModels**](AIProfilesAPI.md#aiprofileslistprovidermodels) | **POST** /api/2.0/ai/profiles/list-provider-models | List provider models
[**aiProfilesTestConnection**](AIProfilesAPI.md#aiprofilestestconnection) | **POST** /api/2.0/ai/profiles/test-connection | Test connection
[**aiProfilesUpdate**](AIProfilesAPI.md#aiprofilesupdate) | **PUT** /api/2.0/ai/profiles/update | Update


# **aiProfilesCreate**
```swift
    open class func aiProfilesCreate(aiCreateProfileInput: AiCreateProfileInput, completion: @escaping (_ data: AiProfileMutationResult?, _ error: Error?) -> Void)
```

Creates an AI provider profile. The name must be unique and the credentials are validated against the provider before the profile is stored; the portal's first profile also takes the `Default` assignment slot.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-create/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiCreateProfileInput** | [**AiCreateProfileInput**](AiCreateProfileInput.md) |  | 

### Return type

[**AiProfileMutationResult**](AiProfileMutationResult.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let aiCreateProfileInput = AiCreateProfileInput(name: "name_example", providerType: AiProviderType(), basedOn: AiBuiltinProviderType(), baseUrl: "baseUrl_example", key: "key_example", headers: "TODO", modelId: "modelId_example", reasoning: false, capabilities: 123, canUseTool: false, useResponsesApi: false, isCloudProvider: false, useProxy: false) // AiCreateProfileInput | 

// Create
AIProfilesAPIApi.aiProfilesCreate(aiCreateProfileInput: aiCreateProfileInput) { (response, error) in
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

# **aiProfilesDelete**
```swift
    open class func aiProfilesDelete(body: String, completion: @escaping (_ data: AiSuccessResponse?, _ error: Error?) -> Void)
```

Deletes an AI provider profile and cleans up the assignments pointing at it - the `Default` slot moves to the first remaining profile, the other slots are unbound.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-delete/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **String** |  | 

### Return type

[**AiSuccessResponse**](AiSuccessResponse.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let body = "body_example" // String | 

// Delete
AIProfilesAPIApi.aiProfilesDelete(body: body) { (response, error) in
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

# **aiProfilesGetById**
```swift
    open class func aiProfilesGetById(id: String, completion: @escaping (_ data: AiProfilesGetById200Response?, _ error: Error?) -> Void)
```

Returns one AI provider profile, or an empty result when the identifier is unknown.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-get-by-id/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | The AI provider profile identifier. | 

### Return type

[**AiProfilesGetById200Response**](AiProfilesGetById200Response.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The AI provider profile identifier.

// Get by id
AIProfilesAPIApi.aiProfilesGetById(id: id) { (response, error) in
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

# **aiProfilesList**
```swift
    open class func aiProfilesList(completion: @escaping (_ data: [AiProfile]?, _ error: Error?) -> Void)
```

Lists the portal's AI provider profiles.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-list/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**[AiProfile]**](AiProfile.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// List
AIProfilesAPIApi.aiProfilesList() { (response, error) in
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

# **aiProfilesListModels**
```swift
    open class func aiProfilesListModels(profileId: String, completion: @escaping (_ data: [AiModel]?, _ error: Error?) -> Void)
```

Lists the models the given profile's provider offers, as reported by the provider itself.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-list-models/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **profileId** | **String** | The AI provider profile identifier. | 

### Return type

[**[AiModel]**](AiModel.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let profileId = "profileId_example" // String | The AI provider profile identifier.

// List models
AIProfilesAPIApi.aiProfilesListModels(profileId: profileId) { (response, error) in
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

# **aiProfilesListProviderModels**
```swift
    open class func aiProfilesListProviderModels(aiProfilesListProviderModelsRequest: AiProfilesListProviderModelsRequest, completion: @escaping (_ data: [AiModel]?, _ error: Error?) -> Void)
```

Lists the models a provider offers for the supplied endpoint and key, before any profile is created from them.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-list-provider-models/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiProfilesListProviderModelsRequest** | [**AiProfilesListProviderModelsRequest**](AiProfilesListProviderModelsRequest.md) |  | 

### Return type

[**[AiModel]**](AiModel.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let aiProfilesListProviderModelsRequest = aiProfilesListProviderModels_request(providerType: AiProviderType(), baseUrl: "baseUrl_example", apiKey: "apiKey_example") // AiProfilesListProviderModelsRequest | 

// List provider models
AIProfilesAPIApi.aiProfilesListProviderModels(aiProfilesListProviderModelsRequest: aiProfilesListProviderModelsRequest) { (response, error) in
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

# **aiProfilesTestConnection**
```swift
    open class func aiProfilesTestConnection(body: String, completion: @escaping (_ data: AiProfilesTestConnection200Response?, _ error: Error?) -> Void)
```

Checks a stored profile's credentials against its provider and reports the provider's own error when the call fails. Nothing is written.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-test-connection/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **String** |  | 

### Return type

[**AiProfilesTestConnection200Response**](AiProfilesTestConnection200Response.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let body = "body_example" // String | 

// Test connection
AIProfilesAPIApi.aiProfilesTestConnection(body: body) { (response, error) in
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

# **aiProfilesUpdate**
```swift
    open class func aiProfilesUpdate(aiProfile: AiProfile, completion: @escaping (_ data: AiProfileMutationResult?, _ error: Error?) -> Void)
```

Updates an AI provider profile, re-checking name uniqueness and the provider credentials.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-update/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiProfile** | [**AiProfile**](AiProfile.md) |  | 

### Return type

[**AiProfileMutationResult**](AiProfileMutationResult.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let aiProfile = AiProfile(id: "id_example", name: "name_example", providerType: AiProviderType(), basedOn: AiBuiltinProviderType(), baseUrl: "baseUrl_example", key: "key_example", headers: "TODO", modelId: "modelId_example", reasoning: false, capabilities: 123, canUseTool: false, useResponsesApi: false, isCloudProvider: false, useProxy: false, createdAt: 123) // AiProfile | 

// Update
AIProfilesAPIApi.aiProfilesUpdate(aiProfile: aiProfile) { (response, error) in
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

