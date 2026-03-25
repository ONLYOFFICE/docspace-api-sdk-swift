# FilesThirdPartyIntegrationAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteThirdParty**](FilesThirdPartyIntegrationAPI.md#deletethirdparty) | **DELETE** /api/2.0/files/thirdparty/{providerId} | Remove a third-party account
[**getAllProviders**](FilesThirdPartyIntegrationAPI.md#getallproviders) | **GET** /api/2.0/files/thirdparty/providers | Get all providers
[**getBackupThirdPartyAccount**](FilesThirdPartyIntegrationAPI.md#getbackupthirdpartyaccount) | **GET** /api/2.0/files/thirdparty/backup | Get a third-party account backup
[**getCapabilities**](FilesThirdPartyIntegrationAPI.md#getcapabilities) | **GET** /api/2.0/files/thirdparty/capabilities | Get providers
[**getCommonThirdPartyFolders**](FilesThirdPartyIntegrationAPI.md#getcommonthirdpartyfolders) | **GET** /api/2.0/files/thirdparty/common | Get the common third-party services
[**getThirdPartyAccounts**](FilesThirdPartyIntegrationAPI.md#getthirdpartyaccounts) | **GET** /api/2.0/files/thirdparty | Get the third-party accounts
[**saveThirdParty**](FilesThirdPartyIntegrationAPI.md#savethirdparty) | **POST** /api/2.0/files/thirdparty | Save a third-party account
[**saveThirdPartyBackup**](FilesThirdPartyIntegrationAPI.md#savethirdpartybackup) | **POST** /api/2.0/files/thirdparty/backup | Save a third-party account backup


# **deleteThirdParty**
```swift
    open class func deleteThirdParty(providerId: Int, completion: @escaping (_ data: StringWrapper?, _ error: Error?) -> Void)
```

Removes the third-party storage service account with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-third-party/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **providerId** | **Int** | The provider ID. | 

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let providerId = 987 // Int | The provider ID.

// Remove a third-party account
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
    open class func getAllProviders(excludewebdav: Bool? = nil, completion: @escaping (_ data: ProviderArrayWrapper?, _ error: Error?) -> Void)
```

Returns a list of all providers.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-all-providers/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **excludewebdav** | **Bool** | Specifies whether WebDAV resources should be excluded from the result.. | [optional] 

### Return type

[**ProviderArrayWrapper**](ProviderArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let excludewebdav = false // Bool | Specifies whether WebDAV resources should be excluded from the result.. (optional)

// Get all providers
FilesThirdPartyIntegrationAPIApi.getAllProviders(excludewebdav: excludewebdav) { (response, error) in
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

Returns a backup of the connected third-party account.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-backup-third-party-account/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**FolderStringWrapper**](FolderStringWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get a third-party account backup
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

Returns the list of the available providers.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-capabilities/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**ArrayArrayWrapper**](ArrayArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get providers
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

Returns a list of the third-party services connected to the Common section.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-common-third-party-folders/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**FolderStringArrayWrapper**](FolderStringArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get the common third-party services
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

Returns a list of all the connected third-party accounts.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-third-party-accounts/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**ThirdPartyParamsArrayWrapper**](ThirdPartyParamsArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get the third-party accounts
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

Saves the third-party storage service account. For WebDav, Yandex, kDrive and SharePoint, the login and password are used for authentication. For other providers, the authentication is performed using a token received via OAuth 2.0.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/save-third-party/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **thirdPartyRequestDto** | [**ThirdPartyRequestDto**](ThirdPartyRequestDto.md) |  | [optional] 

### Return type

[**FolderStringWrapper**](FolderStringWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let thirdPartyRequestDto = ThirdPartyRequestDto(url: "url_example", login: "login_example", password: "password_example", token: "token_example", customerTitle: "customerTitle_example", providerKey: "providerKey_example", providerId: 123) // ThirdPartyRequestDto |  (optional)

// Save a third-party account
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

Saves a backup of the connected third-party account.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/save-third-party-backup/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **thirdPartyBackupRequestDto** | [**ThirdPartyBackupRequestDto**](ThirdPartyBackupRequestDto.md) |  | [optional] 

### Return type

[**FolderStringWrapper**](FolderStringWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let thirdPartyBackupRequestDto = ThirdPartyBackupRequestDto(url: "url_example", login: "login_example", password: "password_example", token: "token_example", customerTitle: "customerTitle_example", providerKey: "providerKey_example") // ThirdPartyBackupRequestDto |  (optional)

// Save a third-party account backup
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

