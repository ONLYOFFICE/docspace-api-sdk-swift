# OAuth20ClientManagementAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**changeActivation**](OAuth20ClientManagementAPI.md#changeactivation) | **PATCH** /api/2.0/oauth2/clients/{clientId}/activation | Change client activation status
[**createClient**](OAuth20ClientManagementAPI.md#createclient) | **POST** /api/2.0/oauth2/clients | Create a new OAuth2 client
[**deleteClient**](OAuth20ClientManagementAPI.md#deleteclient) | **DELETE** /api/2.0/oauth2/clients/{clientId} | Delete an OAuth2 client
[**deleteTenantClients**](OAuth20ClientManagementAPI.md#deletetenantclients) | **DELETE** /api/2.0/oauth2/clients/tenant | Delete all tenant OAuth2 clients
[**deleteUserClients**](OAuth20ClientManagementAPI.md#deleteuserclients) | **DELETE** /api/2.0/oauth2/clients | Delete all user OAuth2 clients
[**regenerateSecret**](OAuth20ClientManagementAPI.md#regeneratesecret) | **PATCH** /api/2.0/oauth2/clients/{clientId}/regenerate | Regenerate client secret
[**revokeUserClient**](OAuth20ClientManagementAPI.md#revokeuserclient) | **DELETE** /api/2.0/oauth2/clients/{clientId}/revoke | Revoke client consent
[**updateClient**](OAuth20ClientManagementAPI.md#updateclient) | **PUT** /api/2.0/oauth2/clients/{clientId} | Update an existing OAuth2 client


# **changeActivation**
```swift
    open class func changeActivation(clientId: String, changeClientActivationRequest: ChangeClientActivationRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Enables or disables an existing client and answers 200 with an empty body. A disabled client can no longer obtain new tokens, but the tokens and consents it already holds stay valid until they expire on their own: disable a client to stop new authorizations, delete it to end the existing ones. An administrator may change any client of the tenant, a plain user only the clients they created. The body carries the single activation flag, and a client the caller may not see is reported as not found rather than as forbidden.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/change-activation/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientId** | **String** | ID of the client to change activation for | 
 **changeClientActivationRequest** | [**ChangeClientActivationRequest**](ChangeClientActivationRequest.md) |  | 

### Return type

Void (empty response body)

### Authorization

[x-signature](../README.md#x-signature)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let clientId = "clientId_example" // String | ID of the client to change activation for
let changeClientActivationRequest = ChangeClientActivationRequest(status: true) // ChangeClientActivationRequest | 

// Change client activation status
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

Registers a new OAuth2 client in the caller's tenant and returns it. The body must carry a name, a description, a logo and at least one redirect URI, allowed origin and scope, and every scope named must already exist in the tenant's scope catalogue. Administrators and users may both register clients; the caller is recorded as the creator, which is what later restricts a plain user to the clients they created. The response is the stored client with its generated client ID and secret, and it is the first place either value can be read. Some deployments cap how many clients one tenant may hold, and reaching that cap is reported as 400 together with the validation failures.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-client/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createClientRequest** | [**CreateClientRequest**](CreateClientRequest.md) |  | 

### Return type

[**ClientResponse**](ClientResponse.md)

### Authorization

[x-signature](../README.md#x-signature)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let createClientRequest = CreateClientRequest(name: "name_example", description: "description_example", logo: "logo_example", scopes: ["scopes_example"], allowPkce: true, websiteUrl: "websiteUrl_example", termsUrl: "termsUrl_example", policyUrl: "policyUrl_example", redirectUris: ["redirectUris_example"], allowedOrigins: ["allowedOrigins_example"], logoutRedirectUri: "logoutRedirectUri_example", isPublic: false) // CreateClientRequest | 

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
    open class func deleteClient(clientId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Deletes one client from the tenant permanently and answers 200 with an empty body. An administrator may delete any client of the tenant, a plain user only the clients they created, and a client the caller may not see is reported as not found rather than as forbidden. The authorizations and consents issued for the client are removed too, but that cleanup is driven by a message and completes on the authorization service after this call has already returned. A delete that removes no row answers 400. The operation cannot be undone.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-client/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientId** | **String** | ID of the client to delete | 

### Return type

Void (empty response body)

### Authorization

[x-signature](../README.md#x-signature)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let clientId = "clientId_example" // String | ID of the client to delete

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

# **deleteTenantClients**
```swift
    open class func deleteTenantClients(completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Deletes every client registered in the current tenant and answers 200 with an empty body. Only an administrator may call it - for a plain user or a guest it is refused with 403 - and it removes the clients of all users of the tenant, not only those of the caller. The authorizations and consents of the deleted clients are cleaned up asynchronously on the authorization service, and the tenant's client cache is dropped as part of the call. Concurrent modification that survives the retries is reported as 400. The operation cannot be undone, and the response does not say how many clients were removed.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-tenant-clients/).

### Parameters
This endpoint does not need any parameter.

### Return type

Void (empty response body)

### Authorization

[x-signature](../README.md#x-signature)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Delete all tenant OAuth2 clients
OAuth20ClientManagementAPIApi.deleteTenantClients() { (response, error) in
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

# **deleteUserClients**
```swift
    open class func deleteUserClients(completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Deletes every client the calling user created in the current tenant and answers 200 with an empty body. The caller's own identity always selects the set, so this never reaches clients created by somebody else, not even for an administrator. The authorizations and consents of the deleted clients are cleaned up asynchronously on the authorization service, and the tenant's client cache is dropped as part of the call. Concurrent modification that survives the retries is reported as 400. The operation cannot be undone, and the response does not say how many clients were removed.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-user-clients/).

### Parameters
This endpoint does not need any parameter.

### Return type

Void (empty response body)

### Authorization

[x-signature](../README.md#x-signature)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Delete all user OAuth2 clients
OAuth20ClientManagementAPIApi.deleteUserClients() { (response, error) in
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

Issues a new secret for the client and returns it. The previous secret stops working as soon as this call succeeds, there is no grace period and no way to recover it, so every deployed copy of the client has to be updated with the value returned here. An administrator may do this for any client of the tenant, a plain user only for the clients they created. Tokens already issued to the client keep working; only future client authentication is affected. The response carries the new secret and nothing else.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/regenerate-secret/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientId** | **String** | ID of the client to regenerate secret for | 

### Return type

[**ClientSecretResponse**](ClientSecretResponse.md)

### Authorization

[x-signature](../README.md#x-signature)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let clientId = "clientId_example" // String | ID of the client to regenerate secret for

// Regenerate client secret
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
    open class func revokeUserClient(clientId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Revokes the calling user's own consent for one client and answers 200 with an empty body. It touches only the caller's grant: other users keep their consents and the client itself stays registered. Guests may call it as well as users and administrators, because it can never reach anyone else's data. The revocation is carried out by the authorization service over gRPC, so a service that reports nothing was revoked produces 400 and a service that cannot be reached produces 503. Once it succeeds the user has to authorize the client again before it can act on their behalf.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/revoke-user-client/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientId** | **String** | ID of the client to revoke consent for | 

### Return type

Void (empty response body)

### Authorization

[x-signature](../README.md#x-signature)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let clientId = "clientId_example" // String | ID of the client to revoke consent for

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
    open class func updateClient(clientId: String, updateClientRequest: UpdateClientRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Updates the mutable settings of an existing client and answers 200 with an empty body. Only the fields carried in the request body change; the client ID, the secret, the tenant and the creator cannot be changed this way. An administrator may update any client of the tenant, a plain user only the clients they created, and a client the caller may not see is reported as not found rather than as forbidden. The write runs under optimistic locking and is retried a few times, so a request that still loses the race is rejected with 400 instead of silently overwriting a concurrent change. Nothing is returned in the body - read the client back to see the stored result.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-client/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientId** | **String** | ID of the client to update | 
 **updateClientRequest** | [**UpdateClientRequest**](UpdateClientRequest.md) |  | 

### Return type

Void (empty response body)

### Authorization

[x-signature](../README.md#x-signature)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let clientId = "clientId_example" // String | ID of the client to update
let updateClientRequest = UpdateClientRequest(name: "name_example", description: "description_example", logo: "logo_example", scopes: ["scopes_example"], allowPkce: true, allowedOrigins: ["allowedOrigins_example"], redirectUris: ["redirectUris_example"], isPublic: false) // UpdateClientRequest | 

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

