# AIProfilesAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**aiProfilesCreate**](AIProfilesAPI.md#aiprofilescreate) | **POST** /api/2.0/ai/profiles/create | Create a provider profile
[**aiProfilesDelete**](AIProfilesAPI.md#aiprofilesdelete) | **DELETE** /api/2.0/ai/profiles/delete | Delete a provider profile
[**aiProfilesGetById**](AIProfilesAPI.md#aiprofilesgetbyid) | **GET** /api/2.0/ai/profiles/get-by-id | Get a provider profile
[**aiProfilesList**](AIProfilesAPI.md#aiprofileslist) | **GET** /api/2.0/ai/profiles/list | List provider profiles
[**aiProfilesListModels**](AIProfilesAPI.md#aiprofileslistmodels) | **GET** /api/2.0/ai/profiles/list-models | List models
[**aiProfilesListProviderModels**](AIProfilesAPI.md#aiprofileslistprovidermodels) | **POST** /api/2.0/ai/profiles/list-provider-models | List provider models
[**aiProfilesTestConnection**](AIProfilesAPI.md#aiprofilestestconnection) | **POST** /api/2.0/ai/profiles/test-connection | Test a profile's provider
[**aiProfilesUpdate**](AIProfilesAPI.md#aiprofilesupdate) | **PUT** /api/2.0/ai/profiles/update | Update a provider profile


# **aiProfilesCreate**
```swift
    open class func aiProfilesCreate(aiCreateProfileInput: AiCreateProfileInput, completion: @escaping (_ data: AiProfileMutationResult?, _ error: Error?) -> Void)
```

Creates an AI provider profile - the endpoint, credentials and model that a chat round runs on - and returns it. The name has to be unique, the credentials are probed against the live provider before anything is stored, and the portal's first profile also takes the `Default` assignment slot. Two inputs are refused outright: a `baseUrl` pointing at a private network address, and `providerType: external`, which delegates transport to the host application and therefore cannot work for a profile the server manages. On a portal running the AI gateway, profiles are managed centrally and this operation answers 403.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-create/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiCreateProfileInput** | [**AiCreateProfileInput**](AiCreateProfileInput.md) |  | 

### Return type

[**AiProfileMutationResult**](AiProfileMutationResult.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let aiCreateProfileInput = AiCreateProfileInput(name: "name_example", providerType: AiProviderType(), basedOn: AiBuiltinProviderType(), baseUrl: "baseUrl_example", key: "key_example", headers: "TODO", modelId: "modelId_example", reasoning: false, reasoningSupport: AiReasoningSupport(thinks: false, canDisable: false, depths: [AiReasoningDepth()], defaultDepth: nil), capabilities: 123, canUseTool: true, useResponsesApi: false, isCloudProvider: true, useProxy: false) // AiCreateProfileInput | 

// Create a provider profile
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

Deletes an AI provider profile and cleans up every assignment pointing at it: the `Default` slot moves to the first remaining profile and the other slots are left unbound. The ID is required and may be sent in the body or as a query parameter. An unknown ID is not reported - the call answers success without deleting anything. Threads already bound to the profile keep the stored reference, so a round on such a thread falls back to whatever the scope resolves to.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-delete/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **String** | The ID of the profile to delete, as a bare JSON string. | 

### Return type

[**AiSuccessResponse**](AiSuccessResponse.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let body = "body_example" // String | The ID of the profile to delete, as a bare JSON string.

// Delete a provider profile
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

Returns one AI provider profile by its ID, with its secrets stripped: neither the API key nor the custom headers are ever sent back, on any portal. The ID is required and is read from the query, and an unknown one answers 404. The `baseUrl` in the answer is the one that was stored, not the internal gateway address a round actually dials, so it cannot be used to reach the provider directly. Use `GET api/2.0/ai/profiles/list` to enumerate profiles instead of reading them one by one.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-get-by-id/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | The AI provider profile identifier. | 

### Return type

[**AiProfilesGetById200Response**](AiProfilesGetById200Response.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The AI provider profile identifier.

// Get a provider profile
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

Lists the portal's AI provider profiles with their secrets stripped, the same way the single-profile read does. It takes no parameters and is not paginated, because a portal holds few profiles. On a portal running the AI gateway the answer is synthesised from the gateway's own catalogue rather than from stored records. The IDs in the answer are what the assignment operations and every round's `profileId` accept.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-list/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**[AiProfile]**](AiProfile.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// List provider profiles
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

Lists the models a stored profile's provider currently offers, asking the provider itself rather than reading a cached list. `profileId` is required and is read from the query. A failure is reported with the provider's own verdict: an unusable key comes back as 400 and a provider that is unreachable or broken as 502, while a missing profile or a caller without access keeps the status the portal gave it. Use `POST api/2.0/ai/profiles/list-provider-models` to probe an endpoint that has no profile yet.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-list-models/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **profileId** | **String** | The AI provider profile identifier. | 

### Return type

[**[AiModel]**](AiModel.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

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

Lists the models an endpoint offers for credentials supplied in the request, before any profile exists - this is what a provider-setup form calls to fill its model picker. `providerType` and `baseUrl` are both required, and a 400 for either names the offending input in a `field` member so the form can highlight it; a `baseUrl` pointing at a private network address is refused as well. For `providerType: onlyoffice` the answer comes from the portal gateway's catalogue, which carries richer capability data than the provider's own listing and matches what `GET api/2.0/ai/profiles/list` reports; a portal without that gateway falls back to asking the provider. A provider that is unreachable or broken is reported as 502, and one that rejects the key as 400.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-list-provider-models/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiProfilesListProviderModelsRequest** | [**AiProfilesListProviderModelsRequest**](AiProfilesListProviderModelsRequest.md) |  | 

### Return type

[**[AiModel]**](AiModel.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

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

Probes a stored profile's credentials against its provider and reports the outcome in the answer, writing nothing - this is what a Test button calls so that a failure does not commit anything. `profileId` is required and may be sent in the body or as a query parameter. The result is carried in the body rather than in the status, so a failed probe still answers 200 and the caller has to read the payload. To validate credentials that are not stored yet, use `POST api/2.0/ai/profiles/list-provider-models`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-test-connection/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **String** | The ID of the profile to probe, as a bare JSON string. | 

### Return type

[**AiProfilesTestConnection200Response**](AiProfilesTestConnection200Response.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let body = "body_example" // String | The ID of the profile to probe, as a bare JSON string.

// Test a profile's provider
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

Replaces a stored AI provider profile and returns it, re-checking name uniqueness and probing the credentials against the live provider again. The same two inputs are refused as on create - a private-network `baseUrl` and `providerType: external` - and the whole profile is overwritten by the one supplied rather than merged. On a portal running the AI gateway this answers 403, because profiles are managed centrally there. A profile that is bound to an action or an agent keeps those bindings.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-update/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiProfile** | [**AiProfile**](AiProfile.md) |  | 

### Return type

[**AiProfileMutationResult**](AiProfileMutationResult.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let aiProfile = AiProfile(id: "id_example", name: "name_example", providerType: AiProviderType(), basedOn: AiBuiltinProviderType(), baseUrl: "baseUrl_example", key: "key_example", headers: "TODO", modelId: "modelId_example", reasoning: false, reasoningSupport: AiReasoningSupport(thinks: false, canDisable: false, depths: [AiReasoningDepth()], defaultDepth: nil), capabilities: 123, canUseTool: true, useResponsesApi: false, isCloudProvider: true, useProxy: false, createdAt: 123) // AiProfile | 

// Update a provider profile
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

