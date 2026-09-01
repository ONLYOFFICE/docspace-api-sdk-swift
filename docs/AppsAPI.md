# AppsAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](AppsAPI.md#callget) | **GET** /api/2.0/apps/{id} | Get a single app
[**getAll**](AppsAPI.md#getall) | **GET** /api/2.0/apps | Get all apps
[**getSettings**](AppsAPI.md#getsettings) | **GET** /api/2.0/apps/{id}/settings | Get app settings
[**setEnabled**](AppsAPI.md#setenabled) | **PUT** /api/2.0/apps/{id}/enabled | Enable or disable an app
[**setSettings**](AppsAPI.md#setsettings) | **PUT** /api/2.0/apps/{id}/settings | Save app settings


# **callGet**
```swift
    open class func callGet(id: String, completion: @escaping (_ data: AppWrapper?, _ error: Error?) -> Void)
```

Returns a single application by id with the per-tenant enabled state and settings JSON.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/call-get/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | The application identifier. | 

### Return type

[**AppWrapper**](AppWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The application identifier.

// Get a single app
AppsAPIApi.callGet(id: id) { (response, error) in
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

# **getAll**
```swift
    open class func getAll(completion: @escaping (_ data: AppArrayWrapper?, _ error: Error?) -> Void)
```

Returns the full list of portal applications declared in configuration, merged with per-tenant overrides  (enabled state and JSON settings).

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-all/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**AppArrayWrapper**](AppArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get all apps
AppsAPIApi.getAll() { (response, error) in
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

# **getSettings**
```swift
    open class func getSettings(id: String, completion: @escaping (_ data: ObjectWrapper?, _ error: Error?) -> Void)
```

Returns the JSON settings document saved for the specified application, or null if no overrides exist.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-settings/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | The application identifier. | 

### Return type

[**ObjectWrapper**](ObjectWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The application identifier.

// Get app settings
AppsAPIApi.getSettings(id: id) { (response, error) in
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

# **setEnabled**
```swift
    open class func setEnabled(id: String, setAppEnabledBody: SetAppEnabledBody, completion: @escaping (_ data: AppWrapper?, _ error: Error?) -> Void)
```

Toggles the enabled state of the application for the current tenant. Requires portal administrator permissions.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-enabled/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | The application identifier. | 
 **setAppEnabledBody** | [**SetAppEnabledBody**](SetAppEnabledBody.md) | New enabled state. | 

### Return type

[**AppWrapper**](AppWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The application identifier.
let setAppEnabledBody = SetAppEnabledBody(enabled: false) // SetAppEnabledBody | New enabled state.

// Enable or disable an app
AppsAPIApi.setEnabled(id: id, setAppEnabledBody: setAppEnabledBody) { (response, error) in
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

# **setSettings**
```swift
    open class func setSettings(id: String, setAppSettingsBody: SetAppSettingsBody, completion: @escaping (_ data: AppWrapper?, _ error: Error?) -> Void)
```

Saves an arbitrary JSON settings document for the specified application for the current tenant.  Requires portal administrator permissions.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-settings/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | The application identifier. | 
 **setAppSettingsBody** | [**SetAppSettingsBody**](SetAppSettingsBody.md) | New settings document. | 

### Return type

[**AppWrapper**](AppWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The application identifier.
let setAppSettingsBody = SetAppSettingsBody(settings: SetAppSettingsBody_settings()) // SetAppSettingsBody | New settings document.

// Save app settings
AppsAPIApi.setSettings(id: id, setAppSettingsBody: setAppSettingsBody) { (response, error) in
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

