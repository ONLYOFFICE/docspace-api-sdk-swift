# RoomsPrivacyRoomAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteKeys**](RoomsPrivacyRoomAPI.md#deletekeys) | **DELETE** /api/2.0/privacyroom/keys/{id} | Deletes an encryption key and removes it from the system.
[**getUserKeys**](RoomsPrivacyRoomAPI.md#getuserkeys) | **GET** /api/2.0/privacyroom/keys | Retrieves encryption keys associated with the current user.
[**getUserKeysForRoom**](RoomsPrivacyRoomAPI.md#getuserkeysforroom) | **GET** /api/2.0/privacyroom/{roomId}/access | Retrieves the encryption keys associated with a specific privacy room.
[**replaceKey**](RoomsPrivacyRoomAPI.md#replacekey) | **PUT** /api/2.0/privacyroom/keys | Replaces an existing encryption key with a new one for the user.
[**setKeys**](RoomsPrivacyRoomAPI.md#setkeys) | **POST** /api/2.0/privacyroom/keys | Creates and sets encryption keys for the user.


# **deleteKeys**
```swift
    open class func deleteKeys(id: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Deletes an encryption key and removes it from the system based on the provided key identifier.    Breaking change in DocSpace 4.0: the endpoint used to answer 200 with the caller's remaining  encryption keys and now answers 204 with no body. A client that read that list must call  `GET api/2.0/privacyroom/keys` instead.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-keys/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **UUID** | The unique identifier of the encryption key to be deleted. | 

### Return type

Void (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // UUID | The unique identifier of the encryption key to be deleted.

// Deletes an encryption key and removes it from the system.
RoomsPrivacyRoomAPIApi.deleteKeys(id: id) { (response, error) in
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

# **getUserKeys**
```swift
    open class func getUserKeys(completion: @escaping (_ data: EncryptionKeyArrayWrapper?, _ error: Error?) -> Void)
```

Retrieves encryption keys associated with the current user.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-user-keys/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**EncryptionKeyArrayWrapper**](EncryptionKeyArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Retrieves encryption keys associated with the current user.
RoomsPrivacyRoomAPIApi.getUserKeys() { (response, error) in
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

# **getUserKeysForRoom**
```swift
    open class func getUserKeysForRoom(roomId: Int, completion: @escaping (_ data: EncryptionKeyArrayWrapper?, _ error: Error?) -> Void)
```

Retrieves the encryption keys associated with a specific privacy room.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-user-keys-for-room/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **roomId** | **Int** | The identifier of the privacy room. | 

### Return type

[**EncryptionKeyArrayWrapper**](EncryptionKeyArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let roomId = 987 // Int | The identifier of the privacy room.

// Retrieves the encryption keys associated with a specific privacy room.
RoomsPrivacyRoomAPIApi.getUserKeysForRoom(roomId: roomId) { (response, error) in
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

# **replaceKey**
```swift
    open class func replaceKey(encryptionKeyRequestDto: EncryptionKeyRequestDto? = nil, completion: @escaping (_ data: EncryptionKeyArrayWrapper?, _ error: Error?) -> Void)
```

Replaces an existing encryption key with a new one for the user.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/replace-key/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **encryptionKeyRequestDto** | [**EncryptionKeyRequestDto**](EncryptionKeyRequestDto.md) | The request object containing the public and private key information to replace the existing key. | [optional] 

### Return type

[**EncryptionKeyArrayWrapper**](EncryptionKeyArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let encryptionKeyRequestDto = EncryptionKeyRequestDto(id: 123, publicKey: "publicKey_example", privateKeyEnc: "privateKeyEnc_example") // EncryptionKeyRequestDto | The request object containing the public and private key information to replace the existing key. (optional)

// Replaces an existing encryption key with a new one for the user.
RoomsPrivacyRoomAPIApi.replaceKey(encryptionKeyRequestDto: encryptionKeyRequestDto) { (response, error) in
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

# **setKeys**
```swift
    open class func setKeys(encryptionKeyRequestDto: EncryptionKeyRequestDto? = nil, completion: @escaping (_ data: EncryptionKeyArrayWrapper?, _ error: Error?) -> Void)
```

Creates and sets encryption keys for the user.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-keys/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **encryptionKeyRequestDto** | [**EncryptionKeyRequestDto**](EncryptionKeyRequestDto.md) | The request object containing public and private key information. | [optional] 

### Return type

[**EncryptionKeyArrayWrapper**](EncryptionKeyArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let encryptionKeyRequestDto = EncryptionKeyRequestDto(id: 123, publicKey: "publicKey_example", privateKeyEnc: "privateKeyEnc_example") // EncryptionKeyRequestDto | The request object containing public and private key information. (optional)

// Creates and sets encryption keys for the user.
RoomsPrivacyRoomAPIApi.setKeys(encryptionKeyRequestDto: encryptionKeyRequestDto) { (response, error) in
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

