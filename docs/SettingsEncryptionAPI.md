# SettingsEncryptionAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getStorageEncryptionProgress**](SettingsEncryptionAPI.md#getstorageencryptionprogress) | **GET** /api/2.0/settings/encryption/progress | Get the storage encryption progress
[**getStorageEncryptionSettings**](SettingsEncryptionAPI.md#getstorageencryptionsettings) | **GET** /api/2.0/settings/encryption/settings | Get the storage encryption settings
[**startStorageEncryption**](SettingsEncryptionAPI.md#startstorageencryption) | **POST** /api/2.0/settings/encryption/start | Start the storage encryption process


# **getStorageEncryptionProgress**
```swift
    open class func getStorageEncryptionProgress(completion: @escaping (_ data: DoubleWrapper?, _ error: Error?) -> Void)
```

Returns the storage encryption progress.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-storage-encryption-progress/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**DoubleWrapper**](DoubleWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get the storage encryption progress
SettingsEncryptionAPIApi.getStorageEncryptionProgress() { (response, error) in
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

# **getStorageEncryptionSettings**
```swift
    open class func getStorageEncryptionSettings(completion: @escaping (_ data: EncryptionSettingsWrapper?, _ error: Error?) -> Void)
```

Returns the storage encryption settings.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-storage-encryption-settings/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**EncryptionSettingsWrapper**](EncryptionSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get the storage encryption settings
SettingsEncryptionAPIApi.getStorageEncryptionSettings() { (response, error) in
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

# **startStorageEncryption**
```swift
    open class func startStorageEncryption(storageEncryptionRequestsDto: StorageEncryptionRequestsDto? = nil, completion: @escaping (_ data: BooleanWrapper?, _ error: Error?) -> Void)
```

Starts the storage encryption process.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/start-storage-encryption/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storageEncryptionRequestsDto** | [**StorageEncryptionRequestsDto**](StorageEncryptionRequestsDto.md) |  | [optional] 

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let storageEncryptionRequestsDto = StorageEncryptionRequestsDto(notifyUsers: true) // StorageEncryptionRequestsDto |  (optional)

// Start the storage encryption process
SettingsEncryptionAPIApi.startStorageEncryption(storageEncryptionRequestsDto: storageEncryptionRequestsDto) { (response, error) in
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

