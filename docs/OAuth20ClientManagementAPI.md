# OAuth20ClientManagementAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**changeActivation**](OAuth20ClientManagementAPI.md#changeactivation) | **PATCH** /api/2.0/clients/{clientId}/activation | Change the client activation status
[**createClient**](OAuth20ClientManagementAPI.md#createclient) | **POST** /api/2.0/clients | Create a new OAuth2 client
[**deleteClient**](OAuth20ClientManagementAPI.md#deleteclient) | **DELETE** /api/2.0/clients/{clientId} | Delete an OAuth2 client
[**regenerateSecret**](OAuth20ClientManagementAPI.md#regeneratesecret) | **PATCH** /api/2.0/clients/{clientId}/regenerate | Regenerate the client secret
[**revokeUserClient**](OAuth20ClientManagementAPI.md#revokeuserclient) | **DELETE** /api/2.0/clients/{clientId}/revoke | Revoke client consent
[**updateClient**](OAuth20ClientManagementAPI.md#updateclient) | **PUT** /api/2.0/clients/{clientId} | Update an existing OAuth2 client


# **changeActivation**
```swift
    open class func changeActivation(clientId: String, changeClientActivationRequest: ChangeClientActivationRequest, completion: @escaping (_ data: JSONValue?, _ error: Error?) -> Void)
```

Activates or deactivates an OAuth2 client. When deactivated, the client cannot request new access tokens, but existing tokens will remain valid until they expire.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/change-activation/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientId** | **String** | The client identifier. | 
 **changeClientActivationRequest** | [**ChangeClientActivationRequest**](ChangeClientActivationRequest.md) |  | 

### Return type

**JSONValue**

### Authorization

[asc_auth_key](../README.md#asc_auth_key)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let clientId = "clientId_example" // String | The client identifier.
let changeClientActivationRequest = ChangeClientActivationRequest(status: true) // ChangeClientActivationRequest | 

// Change the client activation status
OAuth20ClientManagementAPIApi.changeActivation(clientId: clientId, changeClientActivationRequest: changeClientActivationRequest) { (response, error) in
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

# **createClient**
```swift
    open class func createClient(createClientRequest: CreateClientRequest, completion: @escaping (_ data: ClientResponse?, _ error: Error?) -> Void)
```

Creates a new OAuth2 client with the specified configuration. The client will be created with the provided scopes, redirect URIs, and other settings. Returns the created client details including the generated client ID.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-client/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createClientRequest** | [**CreateClientRequest**](CreateClientRequest.md) |  | 

### Return type

[**ClientResponse**](ClientResponse.md)

### Authorization

[asc_auth_key](../README.md#asc_auth_key)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let createClientRequest = CreateClientRequest(name: "name_example", description: "description_example", logo: "logo_example", scopes: ["scopes_example"], allowPkce: true, isPublic: false, websiteUrl: "websiteUrl_example", termsUrl: "termsUrl_example", policyUrl: "policyUrl_example", redirectUris: ["redirectUris_example"], allowedOrigins: ["allowedOrigins_example"], logoutRedirectUri: "logoutRedirectUri_example") // CreateClientRequest | 

// Create a new OAuth2 client
OAuth20ClientManagementAPIApi.createClient(createClientRequest: createClientRequest) { (response, error) in
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

# **deleteClient**
```swift
    open class func deleteClient(clientId: String, completion: @escaping (_ data: JSONValue?, _ error: Error?) -> Void)
```

Permanently deletes an OAuth2 client and all associated data. All access and refresh tokens issued to this client will be invalidated. This operation cannot be undone.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-client/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientId** | **String** | The client identifier. | 

### Return type

**JSONValue**

### Authorization

[asc_auth_key](../README.md#asc_auth_key)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let clientId = "clientId_example" // String | The client identifier.

// Delete an OAuth2 client
OAuth20ClientManagementAPIApi.deleteClient(clientId: clientId) { (response, error) in
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

# **regenerateSecret**
```swift
    open class func regenerateSecret(clientId: String, completion: @escaping (_ data: ClientSecretResponse?, _ error: Error?) -> Void)
```

Generates a new client secret for the specified OAuth2 client. The old secret will be immediately invalidated. This operation should be used with caution as it requires updating the secret in all client applications.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/regenerate-secret/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientId** | **String** | The client identifier. | 

### Return type

[**ClientSecretResponse**](ClientSecretResponse.md)

### Authorization

[asc_auth_key](../README.md#asc_auth_key)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let clientId = "clientId_example" // String | The client identifier.

// Regenerate the client secret
OAuth20ClientManagementAPIApi.regenerateSecret(clientId: clientId) { (response, error) in
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

# **revokeUserClient**
```swift
    open class func revokeUserClient(clientId: String, completion: @escaping (_ data: JSONValue?, _ error: Error?) -> Void)
```

Revokes all user consents for the specified OAuth2 client. This will invalidate all access tokens and refresh tokens issued to this client for the current user. The user will need to re-authorize the client to access their resources.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/revoke-user-client/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientId** | **String** | The client identifier. | 

### Return type

**JSONValue**

### Authorization

[asc_auth_key](../README.md#asc_auth_key)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let clientId = "clientId_example" // String | The client identifier.

// Revoke client consent
OAuth20ClientManagementAPIApi.revokeUserClient(clientId: clientId) { (response, error) in
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

# **updateClient**
```swift
    open class func updateClient(clientId: String, updateClientRequest: UpdateClientRequest, completion: @escaping (_ data: JSONValue?, _ error: Error?) -> Void)
```

Updates the configuration of an existing OAuth2 client, allowing modifications to the client name, description, redirect URIs, and other settings. The client ID cannot be modified.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-client/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientId** | **String** | The client identifier. | 
 **updateClientRequest** | [**UpdateClientRequest**](UpdateClientRequest.md) |  | 

### Return type

**JSONValue**

### Authorization

[asc_auth_key](../README.md#asc_auth_key)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let clientId = "clientId_example" // String | The client identifier.
let updateClientRequest = UpdateClientRequest(name: "name_example", description: "description_example", logo: "logo_example", allowPkce: true, isPublic: false, allowedOrigins: ["allowedOrigins_example"]) // UpdateClientRequest | 

// Update an existing OAuth2 client
OAuth20ClientManagementAPIApi.updateClient(clientId: clientId, updateClientRequest: updateClientRequest) { (response, error) in
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

