# AISettingsAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**aiSettingsGet**](AISettingsAPI.md#aisettingsget) | **GET** /api/2.0/ai/config | Get AI settings
[**aiSettingsGetUser**](AISettingsAPI.md#aisettingsgetuser) | **GET** /api/2.0/ai/config/user | Get user AI settings
[**aiSettingsGetVectorization**](AISettingsAPI.md#aisettingsgetvectorization) | **GET** /api/2.0/ai/config/vectorization | Get vectorization settings
[**aiSettingsSetUser**](AISettingsAPI.md#aisettingssetuser) | **PUT** /api/2.0/ai/config/user | Update user AI settings
[**aiSettingsSetVectorization**](AISettingsAPI.md#aisettingssetvectorization) | **PUT** /api/2.0/ai/config/vectorization | Update vectorization settings


# **aiSettingsGet**
```swift
    open class func aiSettingsGet(completion: @escaping (_ data: AiAiSettingsWrapper?, _ error: Error?) -> Void)
```

Reports the portal's combined AI configuration and readiness.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-settings-get/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**AiAiSettingsWrapper**](AiAiSettingsWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get AI settings
AISettingsAPIApi.aiSettingsGet() { (response, error) in
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

# **aiSettingsGetUser**
```swift
    open class func aiSettingsGetUser(completion: @escaping (_ data: AiAiUserSettingsWrapper?, _ error: Error?) -> Void)
```

Returns the current user's AI settings.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-settings-get-user/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**AiAiUserSettingsWrapper**](AiAiUserSettingsWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get user AI settings
AISettingsAPIApi.aiSettingsGetUser() { (response, error) in
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

# **aiSettingsGetVectorization**
```swift
    open class func aiSettingsGetVectorization(completion: @escaping (_ data: AiVectorizationSettingsWrapper?, _ error: Error?) -> Void)
```

Returns the portal's vectorization settings.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-settings-get-vectorization/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**AiVectorizationSettingsWrapper**](AiVectorizationSettingsWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get vectorization settings
AISettingsAPIApi.aiSettingsGetVectorization() { (response, error) in
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

# **aiSettingsSetUser**
```swift
    open class func aiSettingsSetUser(requestBody: [String: JSONValue], completion: @escaping (_ data: AiAiUserSettingsWrapper?, _ error: Error?) -> Void)
```

Updates the current user's AI settings.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-settings-set-user/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**[String: JSONValue]**](JSONValue.md) |  | 

### Return type

[**AiAiUserSettingsWrapper**](AiAiUserSettingsWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let requestBody = "TODO" // [String: JSONValue] | 

// Update user AI settings
AISettingsAPIApi.aiSettingsSetUser(requestBody: requestBody) { (response, error) in
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

# **aiSettingsSetVectorization**
```swift
    open class func aiSettingsSetVectorization(requestBody: [String: JSONValue?], completion: @escaping (_ data: AiVectorizationSettingsWrapper?, _ error: Error?) -> Void)
```

Updates the portal's vectorization settings.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-settings-set-vectorization/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**[String: JSONValue?]**](JSONValue.md) |  | 

### Return type

[**AiVectorizationSettingsWrapper**](AiVectorizationSettingsWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let requestBody = "TODO" // [String: JSONValue?] | 

// Update vectorization settings
AISettingsAPIApi.aiSettingsSetVectorization(requestBody: requestBody) { (response, error) in
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

