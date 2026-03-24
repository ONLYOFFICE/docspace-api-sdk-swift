# ApiKeysAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createApiKey**](ApiKeysAPI.md#createapikey) | **POST** /api/2.0/keys | Create a user API key
[**deleteApiKey**](ApiKeysAPI.md#deleteapikey) | **DELETE** /api/2.0/keys/{keyId} | Delete a user API key
[**getAllPermissions**](ApiKeysAPI.md#getallpermissions) | **GET** /api/2.0/keys/permissions | Get API key permissions
[**getApiKey**](ApiKeysAPI.md#getapikey) | **GET** /api/2.0/keys/@self | Get current user&#39;s API key
[**getApiKeys**](ApiKeysAPI.md#getapikeys) | **GET** /api/2.0/keys | Get current user&#39;s API keys
[**updateApiKey**](ApiKeysAPI.md#updateapikey) | **PUT** /api/2.0/keys/{keyId} | Update an API key


# **createApiKey**
```swift
    open class func createApiKey(createApiKeyRequestDto: CreateApiKeyRequestDto? = nil, completion: @escaping (_ data: ApiKeyResponseWrapper?, _ error: Error?) -> Void)
```

Creates a user API key with the parameters specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-api-key/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createApiKeyRequestDto** | [**CreateApiKeyRequestDto**](CreateApiKeyRequestDto.md) |  | [optional] 

### Return type

[**ApiKeyResponseWrapper**](ApiKeyResponseWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let createApiKeyRequestDto = CreateApiKeyRequestDto(name: "name_example", permissions: ["permissions_example"], expiresInDays: 123) // CreateApiKeyRequestDto |  (optional)

// Create a user API key
ApiKeysAPIApi.createApiKey(createApiKeyRequestDto: createApiKeyRequestDto) { (response, error) in
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

# **deleteApiKey**
```swift
    open class func deleteApiKey(keyId: UUID, completion: @escaping (_ data: BooleanWrapper?, _ error: Error?) -> Void)
```

Deletes a user API key by its ID.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-api-key/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keyId** | **UUID** | The API key ID. | 

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let keyId = 987 // UUID | The API key ID.

// Delete a user API key
ApiKeysAPIApi.deleteApiKey(keyId: keyId) { (response, error) in
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

# **getAllPermissions**
```swift
    open class func getAllPermissions(completion: @escaping (_ data: STRINGArrayWrapper?, _ error: Error?) -> Void)
```

Returns a list of all available permissions for the API key.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-all-permissions/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**STRINGArrayWrapper**](STRINGArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get API key permissions
ApiKeysAPIApi.getAllPermissions() { (response, error) in
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

# **getApiKey**
```swift
    open class func getApiKey(completion: @escaping (_ data: ApiKeyResponseWrapper?, _ error: Error?) -> Void)
```

Returns information about the current user's API key.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-api-key/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApiKeyResponseWrapper**](ApiKeyResponseWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get current user's API key
ApiKeysAPIApi.getApiKey() { (response, error) in
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

# **getApiKeys**
```swift
    open class func getApiKeys(completion: @escaping (_ data: ApiKeyResponseArrayWrapper?, _ error: Error?) -> Void)
```

Returns a list of all API keys for the current user.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-api-keys/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApiKeyResponseArrayWrapper**](ApiKeyResponseArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get current user's API keys
ApiKeysAPIApi.getApiKeys() { (response, error) in
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

# **updateApiKey**
```swift
    open class func updateApiKey(keyId: UUID, updateApiKeyRequest: UpdateApiKeyRequest, completion: @escaping (_ data: BooleanWrapper?, _ error: Error?) -> Void)
```

Updates an existing API key changing its name, permissions, and status.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-api-key/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keyId** | **UUID** | The unique identifier of the API key to update. | 
 **updateApiKeyRequest** | [**UpdateApiKeyRequest**](UpdateApiKeyRequest.md) | The request parameters for updating an existing API key. | 

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let keyId = 987 // UUID | The unique identifier of the API key to update.
let updateApiKeyRequest = UpdateApiKeyRequest(name: "name_example", permissions: ["permissions_example"], isActive: true) // UpdateApiKeyRequest | The request parameters for updating an existing API key.

// Update an API key
ApiKeysAPIApi.updateApiKey(keyId: keyId, updateApiKeyRequest: updateApiKeyRequest) { (response, error) in
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

