# SettingsWebpluginsAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addWebPluginFromFile**](SettingsWebpluginsAPI.md#addwebpluginfromfile) | **POST** /api/2.0/settings/webplugins | Add a web plugin
[**deleteWebPlugin**](SettingsWebpluginsAPI.md#deletewebplugin) | **DELETE** /api/2.0/settings/webplugins/{name} | Delete a web plugin
[**getWebPlugin**](SettingsWebpluginsAPI.md#getwebplugin) | **GET** /api/2.0/settings/webplugins/{name} | Get a web plugin by name
[**getWebPlugins**](SettingsWebpluginsAPI.md#getwebplugins) | **GET** /api/2.0/settings/webplugins | Get web plugins
[**updateWebPlugin**](SettingsWebpluginsAPI.md#updatewebplugin) | **PUT** /api/2.0/settings/webplugins/{name} | Update a web plugin


# **addWebPluginFromFile**
```swift
    open class func addWebPluginFromFile(system: Bool? = nil, completion: @escaping (_ data: WebPluginWrapper?, _ error: Error?) -> Void)
```

Adds a web plugin from a file to the current portal.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/add-web-plugin-from-file/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **system** | **Bool** | Specifies whether to load the system plugins or not. | [optional] 

### Return type

[**WebPluginWrapper**](WebPluginWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let system = true // Bool | Specifies whether to load the system plugins or not. (optional)

// Add a web plugin
SettingsWebpluginsAPIApi.addWebPluginFromFile(system: system) { (response, error) in
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

# **deleteWebPlugin**
```swift
    open class func deleteWebPlugin(name: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Deletes a web plugin by the name specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-web-plugin/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String** | The web plugin name. | 

### Return type

Void (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let name = "name_example" // String | The web plugin name.

// Delete a web plugin
SettingsWebpluginsAPIApi.deleteWebPlugin(name: name) { (response, error) in
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

# **getWebPlugin**
```swift
    open class func getWebPlugin(name: String, completion: @escaping (_ data: WebPluginWrapper?, _ error: Error?) -> Void)
```

Returns a web plugin by the name specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-web-plugin/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String** | The web plugin name. | 

### Return type

[**WebPluginWrapper**](WebPluginWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let name = "name_example" // String | The web plugin name.

// Get a web plugin by name
SettingsWebpluginsAPIApi.getWebPlugin(name: name) { (response, error) in
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

# **getWebPlugins**
```swift
    open class func getWebPlugins(enabled: Bool? = nil, completion: @escaping (_ data: WebPluginArrayWrapper?, _ error: Error?) -> Void)
```

Returns the portal web plugins.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-web-plugins/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **enabled** | **Bool** | The optional filter for the plugin enabled state. | [optional] 

### Return type

[**WebPluginArrayWrapper**](WebPluginArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let enabled = true // Bool | The optional filter for the plugin enabled state. (optional)

// Get web plugins
SettingsWebpluginsAPIApi.getWebPlugins(enabled: enabled) { (response, error) in
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

# **updateWebPlugin**
```swift
    open class func updateWebPlugin(name: String, webPluginRequests: WebPluginRequests, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Updates a web plugin with the parameters specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-web-plugin/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String** | The web plugin name. | 
 **webPluginRequests** | [**WebPluginRequests**](WebPluginRequests.md) | The configuration settings for the web plugin instance. | 

### Return type

Void (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let name = "name_example" // String | The web plugin name.
let webPluginRequests = WebPluginRequests(enabled: true, settings: "settings_example") // WebPluginRequests | The configuration settings for the web plugin instance.

// Update a web plugin
SettingsWebpluginsAPIApi.updateWebPlugin(name: name, webPluginRequests: webPluginRequests) { (response, error) in
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
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

