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

Reports the portal's AI configuration and whether AI is usable at all, which is the first call a client makes before offering any AI feature. It takes no parameters and is proxied unchanged to the DocSpace AI service, so the answer is that service's settings payload. Among other things it says whether the portal runs on the central AI gateway, which decides whether provider profiles can be edited here at all. This is a read-only operation.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-settings-get/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**AiAiSettingsWrapper**](AiAiSettingsWrapper.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

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

Returns the AI settings of the calling user, as opposed to the portal-wide ones. It takes no parameters - the user is the authenticated caller, and there is no way to read somebody else's settings - and is proxied unchanged to the DocSpace AI service. Use `GET api/2.0/ai/config` for the portal-wide configuration. This is a read-only operation.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-settings-get-user/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**AiAiUserSettingsWrapper**](AiAiUserSettingsWrapper.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

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

Returns the portal's vectorization settings - the embedding provider and the options used when portal content is indexed for retrieval. It takes no parameters and is proxied unchanged to the DocSpace AI service. Vectorization is a portal-wide setting, so there is no room-scoped form of it. Change it with `PUT api/2.0/ai/config/vectorization`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-settings-get-vectorization/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**AiVectorizationSettingsWrapper**](AiVectorizationSettingsWrapper.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

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
    open class func aiSettingsSetUser(requestBody: [String: JSONValue?], completion: @escaping (_ data: AiAiUserSettingsWrapper?, _ error: Error?) -> Void)
```

Replaces the AI settings of the calling user and returns the stored result. The body is proxied unchanged to the DocSpace AI service, which validates it, so a rejected value comes back with that service's verdict. Only the caller's own settings can be written. Portal-wide configuration is not touched by this operation.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-settings-set-user/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**[String: JSONValue?]**](JSONValue.md) | The user's AI settings, proxied unchanged to the DocSpace AI service, which owns and validates the shape. Read the current one with `GET api/2.0/ai/config/user` and send it back changed. | 

### Return type

[**AiAiUserSettingsWrapper**](AiAiUserSettingsWrapper.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let requestBody = "TODO" // [String: JSONValue?] | The user's AI settings, proxied unchanged to the DocSpace AI service, which owns and validates the shape. Read the current one with `GET api/2.0/ai/config/user` and send it back changed.

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

Replaces the portal's vectorization settings and returns the stored result. The body is proxied unchanged to the DocSpace AI service, which validates it, so a rejected value is reported with that service's own verdict rather than being checked here. Changing the embedding provider does not re-index anything already indexed - start that separately with `POST api/2.0/ai/vectorization/tasks`. This is a portal-wide setting and requires the permissions the AI service demands for it.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-settings-set-vectorization/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**[String: JSONValue?]**](JSONValue.md) | The portal's vectorization settings, proxied unchanged to the DocSpace AI service, which owns and validates the shape. Read the current one with `GET api/2.0/ai/config/vectorization` and send it back changed. | 

### Return type

[**AiVectorizationSettingsWrapper**](AiVectorizationSettingsWrapper.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let requestBody = "TODO" // [String: JSONValue?] | The portal's vectorization settings, proxied unchanged to the DocSpace AI service, which owns and validates the shape. Read the current one with `GET api/2.0/ai/config/vectorization` and send it back changed.

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

