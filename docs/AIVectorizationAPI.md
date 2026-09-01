# AIVectorizationAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**aiVectorizationStartTask**](AIVectorizationAPI.md#aivectorizationstarttask) | **POST** /api/2.0/ai/vectorization/tasks | Start a vectorization task


# **aiVectorizationStartTask**
```swift
    open class func aiVectorizationStartTask(requestBody: [String: JSONValue], completion: @escaping (_ data: AiSuccessResponse?, _ error: Error?) -> Void)
```

Starts a vectorization task over the supplied portal files. The indexing itself runs asynchronously on the .NET side.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-vectorization-start-task/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**[String: JSONValue]**](JSONValue.md) |  | 

### Return type

[**AiSuccessResponse**](AiSuccessResponse.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let requestBody = "TODO" // [String: JSONValue] | 

// Start a vectorization task
AIVectorizationAPIApi.aiVectorizationStartTask(requestBody: requestBody) { (response, error) in
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

