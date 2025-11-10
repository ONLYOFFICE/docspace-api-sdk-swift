# FilesThirdPartyIntegrationAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteThirdParty**](FilesThirdPartyIntegrationAPI.md#deletethirdparty) | **DELETE** /api/2.0/files/thirdparty/{providerId} | 
[**getAllProviders**](FilesThirdPartyIntegrationAPI.md#getallproviders) | **GET** /api/2.0/files/thirdparty/providers | 
[**getBackupThirdPartyAccount**](FilesThirdPartyIntegrationAPI.md#getbackupthirdpartyaccount) | **GET** /api/2.0/files/thirdparty/backup | 
[**getCapabilities**](FilesThirdPartyIntegrationAPI.md#getcapabilities) | **GET** /api/2.0/files/thirdparty/capabilities | 
[**getCommonThirdPartyFolders**](FilesThirdPartyIntegrationAPI.md#getcommonthirdpartyfolders) | **GET** /api/2.0/files/thirdparty/common | 
[**getThirdPartyAccounts**](FilesThirdPartyIntegrationAPI.md#getthirdpartyaccounts) | **GET** /api/2.0/files/thirdparty | 
[**saveThirdParty**](FilesThirdPartyIntegrationAPI.md#savethirdparty) | **POST** /api/2.0/files/thirdparty | 
[**saveThirdPartyBackup**](FilesThirdPartyIntegrationAPI.md#savethirdpartybackup) | **POST** /api/2.0/files/thirdparty/backup | 


# **deleteThirdParty**
```swift
    open class func deleteThirdParty(providerId: Int, completion: @escaping (_ data: StringWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-third-party/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **providerId** | **Int** | The provider ID. | 

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let providerId = 987 // Int | The provider ID.

FilesThirdPartyIntegrationAPIApi.deleteThirdParty(providerId: providerId) { (response, error) in
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

# **getAllProviders**
```swift
    open class func getAllProviders(completion: @escaping (_ data: ProviderArrayWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-all-providers/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**ProviderArrayWrapper**](ProviderArrayWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


FilesThirdPartyIntegrationAPIApi.getAllProviders() { (response, error) in
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

# **getBackupThirdPartyAccount**
```swift
    open class func getBackupThirdPartyAccount(completion: @escaping (_ data: FolderStringWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-backup-third-party-account/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**FolderStringWrapper**](FolderStringWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


FilesThirdPartyIntegrationAPIApi.getBackupThirdPartyAccount() { (response, error) in
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

# **getCapabilities**
```swift
    open class func getCapabilities(completion: @escaping (_ data: ArrayArrayWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-capabilities/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**ArrayArrayWrapper**](ArrayArrayWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


FilesThirdPartyIntegrationAPIApi.getCapabilities() { (response, error) in
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

# **getCommonThirdPartyFolders**
```swift
    open class func getCommonThirdPartyFolders(completion: @escaping (_ data: FolderStringArrayWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-common-third-party-folders/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**FolderStringArrayWrapper**](FolderStringArrayWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


FilesThirdPartyIntegrationAPIApi.getCommonThirdPartyFolders() { (response, error) in
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

# **getThirdPartyAccounts**
```swift
    open class func getThirdPartyAccounts(completion: @escaping (_ data: ThirdPartyParamsArrayWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-third-party-accounts/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**ThirdPartyParamsArrayWrapper**](ThirdPartyParamsArrayWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


FilesThirdPartyIntegrationAPIApi.getThirdPartyAccounts() { (response, error) in
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

# **saveThirdParty**
```swift
    open class func saveThirdParty(thirdPartyRequestDto: ThirdPartyRequestDto? = nil, completion: @escaping (_ data: FolderStringWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/save-third-party/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **thirdPartyRequestDto** | [**ThirdPartyRequestDto**](ThirdPartyRequestDto.md) |  | [optional] 

### Return type

[**FolderStringWrapper**](FolderStringWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let thirdPartyRequestDto = ThirdPartyRequestDto(url: "url_example", login: "login_example", password: "password_example", token: "token_example", customerTitle: "customerTitle_example", providerKey: "providerKey_example", providerId: 123) // ThirdPartyRequestDto |  (optional)

FilesThirdPartyIntegrationAPIApi.saveThirdParty(thirdPartyRequestDto: thirdPartyRequestDto) { (response, error) in
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

# **saveThirdPartyBackup**
```swift
    open class func saveThirdPartyBackup(thirdPartyBackupRequestDto: ThirdPartyBackupRequestDto? = nil, completion: @escaping (_ data: FolderStringWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/save-third-party-backup/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **thirdPartyBackupRequestDto** | [**ThirdPartyBackupRequestDto**](ThirdPartyBackupRequestDto.md) |  | [optional] 

### Return type

[**FolderStringWrapper**](FolderStringWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let thirdPartyBackupRequestDto = ThirdPartyBackupRequestDto(url: "url_example", login: "login_example", password: "password_example", token: "token_example", customerTitle: "customerTitle_example", providerKey: "providerKey_example") // ThirdPartyBackupRequestDto |  (optional)

FilesThirdPartyIntegrationAPIApi.saveThirdPartyBackup(thirdPartyBackupRequestDto: thirdPartyBackupRequestDto) { (response, error) in
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

