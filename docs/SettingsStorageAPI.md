# SettingsStorageAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAllBackupStorages**](SettingsStorageAPI.md#getallbackupstorages) | **GET** /api/2.0/settings/storage/backup | Get the backup storages
[**getAllCdnStorages**](SettingsStorageAPI.md#getallcdnstorages) | **GET** /api/2.0/settings/storage/cdn | Get the CDN storages
[**getAllStorages**](SettingsStorageAPI.md#getallstorages) | **GET** /api/2.0/settings/storage | Get storages
[**getAmazonS3Regions**](SettingsStorageAPI.md#getamazons3regions) | **GET** /api/2.0/settings/storage/s3/regions | Get Amazon regions
[**getStorageProgress**](SettingsStorageAPI.md#getstorageprogress) | **GET** /api/2.0/settings/storage/progress | Get the storage progress
[**resetCdnToDefault**](SettingsStorageAPI.md#resetcdntodefault) | **DELETE** /api/2.0/settings/storage/cdn | Reset the CDN storage settings
[**resetStorageToDefault**](SettingsStorageAPI.md#resetstoragetodefault) | **DELETE** /api/2.0/settings/storage | Reset the storage settings
[**updateCdnStorage**](SettingsStorageAPI.md#updatecdnstorage) | **PUT** /api/2.0/settings/storage/cdn | Update the CDN storage
[**updateStorage**](SettingsStorageAPI.md#updatestorage) | **PUT** /api/2.0/settings/storage | Update a storage


# **getAllBackupStorages**
```swift
    open class func getAllBackupStorages(dump: Bool? = nil, completion: @escaping (_ data: StorageArrayWrapper?, _ error: Error?) -> Void)
```

Returns a list of all the backup storages.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-all-backup-storages/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dump** | **Bool** | Indicates whether the operation should perform a dump of backup storage data.  This property is used as a parameter in backup-related API requests to specify  if additional details or data dumping is required during the process. | [optional] 

### Return type

[**StorageArrayWrapper**](StorageArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let dump = true // Bool | Indicates whether the operation should perform a dump of backup storage data.  This property is used as a parameter in backup-related API requests to specify  if additional details or data dumping is required during the process. (optional)

// Get the backup storages
SettingsStorageAPIApi.getAllBackupStorages(dump: dump) { (response, error) in
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

# **getAllCdnStorages**
```swift
    open class func getAllCdnStorages(completion: @escaping (_ data: StorageArrayWrapper?, _ error: Error?) -> Void)
```

Returns a list of all the CDN storages.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-all-cdn-storages/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**StorageArrayWrapper**](StorageArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get the CDN storages
SettingsStorageAPIApi.getAllCdnStorages() { (response, error) in
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

# **getAllStorages**
```swift
    open class func getAllStorages(completion: @escaping (_ data: StorageArrayWrapper?, _ error: Error?) -> Void)
```

Returns a list of all the portal storages.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-all-storages/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**StorageArrayWrapper**](StorageArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get storages
SettingsStorageAPIApi.getAllStorages() { (response, error) in
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

# **getAmazonS3Regions**
```swift
    open class func getAmazonS3Regions(completion: @escaping (_ data: ObjectWrapper?, _ error: Error?) -> Void)
```

Returns a list of all Amazon regions.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-amazon-s3-regions/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**ObjectWrapper**](ObjectWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get Amazon regions
SettingsStorageAPIApi.getAmazonS3Regions() { (response, error) in
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

# **getStorageProgress**
```swift
    open class func getStorageProgress(completion: @escaping (_ data: DoubleWrapper?, _ error: Error?) -> Void)
```

Returns the storage progress.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-storage-progress/).

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


// Get the storage progress
SettingsStorageAPIApi.getStorageProgress() { (response, error) in
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

# **resetCdnToDefault**
```swift
    open class func resetCdnToDefault(completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Resets the CDN storage settings to the default parameters.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/reset-cdn-to-default/).

### Parameters
This endpoint does not need any parameter.

### Return type

Void (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Reset the CDN storage settings
SettingsStorageAPIApi.resetCdnToDefault() { (response, error) in
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
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resetStorageToDefault**
```swift
    open class func resetStorageToDefault(completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Resets the storage settings to the default parameters.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/reset-storage-to-default/).

### Parameters
This endpoint does not need any parameter.

### Return type

Void (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Reset the storage settings
SettingsStorageAPIApi.resetStorageToDefault() { (response, error) in
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
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCdnStorage**
```swift
    open class func updateCdnStorage(storageRequestsDto: StorageRequestsDto? = nil, completion: @escaping (_ data: CdnStorageSettingsWrapper?, _ error: Error?) -> Void)
```

Updates the CDN storage with the parameters specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-cdn-storage/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storageRequestsDto** | [**StorageRequestsDto**](StorageRequestsDto.md) |  | [optional] 

### Return type

[**CdnStorageSettingsWrapper**](CdnStorageSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let storageRequestsDto = StorageRequestsDto(module: "module_example", props: [ItemKeyValuePairStringString(key: "key_example", value: "value_example")]) // StorageRequestsDto |  (optional)

// Update the CDN storage
SettingsStorageAPIApi.updateCdnStorage(storageRequestsDto: storageRequestsDto) { (response, error) in
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

# **updateStorage**
```swift
    open class func updateStorage(storageRequestsDto: StorageRequestsDto? = nil, completion: @escaping (_ data: StorageSettingsWrapper?, _ error: Error?) -> Void)
```

Updates a storage with the parameters specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-storage/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storageRequestsDto** | [**StorageRequestsDto**](StorageRequestsDto.md) |  | [optional] 

### Return type

[**StorageSettingsWrapper**](StorageSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let storageRequestsDto = StorageRequestsDto(module: "module_example", props: [ItemKeyValuePairStringString(key: "key_example", value: "value_example")]) // StorageRequestsDto |  (optional)

// Update a storage
SettingsStorageAPIApi.updateStorage(storageRequestsDto: storageRequestsDto) { (response, error) in
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

