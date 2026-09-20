# ApiKeysAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createApiKey**](ApiKeysAPI.md#createapikey) | **POST** /api/2.0/keys | Create a user API key
[**deleteApiKey**](ApiKeysAPI.md#deleteapikey) | **DELETE** /api/2.0/keys/{keyId} | Delete an API key
[**getAllPermissions**](ApiKeysAPI.md#getallpermissions) | **GET** /api/2.0/keys/permissions | Get API key permissions
[**getApiKey**](ApiKeysAPI.md#getapikey) | **GET** /api/2.0/keys/@self | Get the current API key
[**getApiKeys**](ApiKeysAPI.md#getapikeys) | **GET** /api/2.0/keys | Get the API keys
[**updateApiKey**](ApiKeysAPI.md#updateapikey) | **PUT** /api/2.0/keys/{keyId} | Update an API key


# **createApiKey**
```swift
    open class func createApiKey(createApiKeyRequestDto: CreateApiKeyRequestDto? = nil, completion: @escaping (_ data: ApiKeyResponseWrapper?, _ error: Error?) -> Void)
```

Creates an API key that authenticates requests as the calling account, and is the only operation that ever  returns the secret.  Any portal member except a guest may create one; when the portal limits developer tools to administrators,  only a DocSpace administrator may call it.  The call is not idempotent - every call issues a new key - and it is throttled, so a client that retries on a  timeout can end up with several keys.  The answer carries the full secret in `key`: it is shown here and never again, later reads expose only the  last four characters in `keyPostfix`, so store it now.  Pass the scopes the key may use in `permissions`, taking the values from  `GET api/2.0/keys/permissions`; pass `*` or omit the field to record a key without scope restrictions, and set  `expiresInDays` to make it expire, otherwise it stays valid until it is deleted.  An empty `permissions` array and an unknown scope are both rejected with 400.  Send the key in the `Authorization` header as `Bearer sk-...` to use it.

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

Deletes the API key with the ID given in the route, so that it stops authenticating requests immediately.  The caller may delete a key they created themselves, and a DocSpace administrator may delete any key of the  portal.  The removal is permanent and cannot be undone: the secret was only ever readable at creation time, so a  deleted key cannot be restored and a new one has to be issued through `POST api/2.0/keys`.  To stop a key temporarily instead, set `isActive` to false through `PUT api/2.0/keys/{keyId}`.  The answer is a plain boolean reporting whether the key was removed.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-api-key/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keyId** | **UUID** | The ID of the key to delete, taken from the route. Read it from the `id` of an entry of  `GET api/2.0/keys` - it is not the secret and not the `keyPostfix`. | 

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let keyId = 987 // UUID | The ID of the key to delete, taken from the route. Read it from the `id` of an entry of  `GET api/2.0/keys` - it is not the secret and not the `keyPostfix`.

// Delete an API key
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

Returns every scope value the portal accepts in the `permissions` array of an API key.  Read it before `POST api/2.0/keys` or `PUT api/2.0/keys/{keyId}`, because any other value is rejected with  400.  Any portal member except a guest may call it, and the call is read-only.  The answer is a flat list sorted alphabetically, holding the per-area scopes such as `accounts:read`,  `files:write` and `rooms:write`, the portal-wide `*:read` and `*:write`, and `*` which stands for a key  without scope restrictions.  The list is fixed for the portal and identical for every caller, so it can be cached by the client.

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

Returns the API key that authenticated this very request, letting the holder of a key find out what it is  allowed to do without knowing its ID.  The key is identified by the `Authorization` header of the call itself, so the request has to be sent as  `Bearer sk-...`; a session authenticated in any other way has no key to report and this operation is not  usable for it.  The call is read-only and returns one entry, with the same fields as `GET api/2.0/keys` and without the  secret - read `permissions` for the granted scopes, `expiresAt` for the expiry and `isActive` for the state.  To look at a key other than the one in use, call `GET api/2.0/keys` instead.

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


// Get the current API key
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

Returns the API keys the caller is allowed to see, which is not the same set for everybody: a DocSpace  administrator gets every key of the portal, while any other member gets only the keys they created  themselves.  Any portal member except a guest may call it, and the call is read-only.  The secrets are not returned - each entry identifies its key by `id` and by the last four characters in  `keyPostfix`, and a secret can only be read once, at the moment `POST api/2.0/keys` creates it.  Expired and deactivated keys stay in the list, so check `expiresAt` against the current time and read  `isActive` before treating an entry as usable.  An empty list means the caller has created no keys, not that the portal has none.

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


// Get the API keys
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

Renames an API key, replaces the scopes it may use, or activates and deactivates it, without changing the  secret.  The caller may update a key they created themselves, and a DocSpace administrator may update any key of the  portal.  Take the values for `permissions` from `GET api/2.0/keys/permissions`; an unknown scope or an empty array is  rejected with 400, and the fields that are left out keep their current values.  The answer is a plain boolean: true when the key was changed, and false when it was not - which is also what  an already expired key returns, because such a key is left untouched instead of being reported as an error.  Deactivating a key through `isActive` stops it from authenticating while keeping it in the list, so use it  when the key may be needed again and `DELETE api/2.0/keys/{keyId}` when it may not.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-api-key/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keyId** | **UUID** | The ID of the key to update, taken from the route. Read it from the `id` of an entry of  `GET api/2.0/keys` - it is not the secret and not the `keyPostfix`. | 
 **updateApiKeyRequest** | [**UpdateApiKeyRequest**](UpdateApiKeyRequest.md) | The fields to change. Every field is optional and the ones that are left out keep their current values, so an  empty object changes nothing. | 

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let keyId = 987 // UUID | The ID of the key to update, taken from the route. Read it from the `id` of an entry of  `GET api/2.0/keys` - it is not the secret and not the `keyPostfix`.
let updateApiKeyRequest = UpdateApiKeyRequest(name: "name_example", permissions: ["permissions_example"], isActive: true) // UpdateApiKeyRequest | The fields to change. Every field is optional and the ones that are left out keep their current values, so an  empty object changes nothing.

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

