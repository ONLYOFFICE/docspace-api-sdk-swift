# SettingsGreetingSettingsAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getGreetingSettings**](SettingsGreetingSettingsAPI.md#getgreetingsettings) | **GET** /api/2.0/settings/greetingsettings | Get greeting settings
[**getIsDefaultGreetingSettings**](SettingsGreetingSettingsAPI.md#getisdefaultgreetingsettings) | **GET** /api/2.0/settings/greetingsettings/isdefault | Check the default greeting settings
[**restoreGreetingSettings**](SettingsGreetingSettingsAPI.md#restoregreetingsettings) | **POST** /api/2.0/settings/greetingsettings/restore | Restore the greeting settings
[**saveGreetingSettings**](SettingsGreetingSettingsAPI.md#savegreetingsettings) | **POST** /api/2.0/settings/greetingsettings | Save the greeting settings


# **getGreetingSettings**
```swift
    open class func getGreetingSettings(completion: @escaping (_ data: ObjectWrapper?, _ error: Error?) -> Void)
```

Returns the greeting settings for the current portal.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-greeting-settings/).

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


// Get greeting settings
SettingsGreetingSettingsAPIApi.getGreetingSettings() { (response, error) in
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

# **getIsDefaultGreetingSettings**
```swift
    open class func getIsDefaultGreetingSettings(completion: @escaping (_ data: BooleanWrapper?, _ error: Error?) -> Void)
```

Checks if the greeting settings of the current portal are set to default or not.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-is-default-greeting-settings/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Check the default greeting settings
SettingsGreetingSettingsAPIApi.getIsDefaultGreetingSettings() { (response, error) in
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

# **restoreGreetingSettings**
```swift
    open class func restoreGreetingSettings(completion: @escaping (_ data: StringWrapper?, _ error: Error?) -> Void)
```

Restores the current portal greeting settings.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/restore-greeting-settings/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Restore the greeting settings
SettingsGreetingSettingsAPIApi.restoreGreetingSettings() { (response, error) in
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

# **saveGreetingSettings**
```swift
    open class func saveGreetingSettings(greetingSettingsRequestsDto: GreetingSettingsRequestsDto? = nil, completion: @escaping (_ data: StringWrapper?, _ error: Error?) -> Void)
```

Saves the greeting settings specified in the request to the current portal.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/save-greeting-settings/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **greetingSettingsRequestsDto** | [**GreetingSettingsRequestsDto**](GreetingSettingsRequestsDto.md) |  | [optional] 

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let greetingSettingsRequestsDto = GreetingSettingsRequestsDto(title: "title_example") // GreetingSettingsRequestsDto |  (optional)

// Save the greeting settings
SettingsGreetingSettingsAPIApi.saveGreetingSettings(greetingSettingsRequestsDto: greetingSettingsRequestsDto) { (response, error) in
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

