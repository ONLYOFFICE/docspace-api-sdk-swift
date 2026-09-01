# SettingsLoginSettingsAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getLoginSettings**](SettingsLoginSettingsAPI.md#getloginsettings) | **GET** /api/2.0/settings/security/loginsettings | Get the login settings
[**setDefaultLoginSettings**](SettingsLoginSettingsAPI.md#setdefaultloginsettings) | **DELETE** /api/2.0/settings/security/loginsettings | Reset the login settings
[**updateLoginSettings**](SettingsLoginSettingsAPI.md#updateloginsettings) | **PUT** /api/2.0/settings/security/loginsettings | Update the login settings


# **getLoginSettings**
```swift
    open class func getLoginSettings(completion: @escaping (_ data: LoginSettingsWrapper?, _ error: Error?) -> Void)
```

Returns the portal login settings.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-login-settings/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**LoginSettingsWrapper**](LoginSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get the login settings
SettingsLoginSettingsAPIApi.getLoginSettings() { (response, error) in
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

# **setDefaultLoginSettings**
```swift
    open class func setDefaultLoginSettings(completion: @escaping (_ data: LoginSettingsWrapper?, _ error: Error?) -> Void)
```

Resets the portal login settings to default.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-default-login-settings/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**LoginSettingsWrapper**](LoginSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Reset the login settings
SettingsLoginSettingsAPIApi.setDefaultLoginSettings() { (response, error) in
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

# **updateLoginSettings**
```swift
    open class func updateLoginSettings(loginSettingsRequestDto: LoginSettingsRequestDto? = nil, completion: @escaping (_ data: LoginSettingsWrapper?, _ error: Error?) -> Void)
```

Updates the login settings with the parameters specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-login-settings/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **loginSettingsRequestDto** | [**LoginSettingsRequestDto**](LoginSettingsRequestDto.md) |  | [optional] 

### Return type

[**LoginSettingsWrapper**](LoginSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let loginSettingsRequestDto = LoginSettingsRequestDto(attemptCount: 123, blockTime: 123, checkPeriod: 123) // LoginSettingsRequestDto |  (optional)

// Update the login settings
SettingsLoginSettingsAPIApi.updateLoginSettings(loginSettingsRequestDto: loginSettingsRequestDto) { (response, error) in
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

