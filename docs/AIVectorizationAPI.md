# AIVectorizationAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**aiVectorizationStartTask**](AIVectorizationAPI.md#aivectorizationstarttask) | **POST** /api/2.0/ai/vectorization/tasks | Start a vectorization task


# **aiVectorizationStartTask**
```swift
    open class func aiVectorizationStartTask(aiVectorizationStartTaskRequest: AiVectorizationStartTaskRequest, completion: @escaping (_ data: AiVectorizationStartTask200Response?, _ error: Error?) -> Void)
```

Queues the indexing of the portal files named in the body so their contents can be retrieved during a chat round. The body is proxied unchanged to the DocSpace AI service, which validates it and owns the job. Indexing is asynchronous and fire-and-forget: the answer acknowledges the request without carrying a job handle, so there is nothing to poll and progress is not reported here. The embedding provider used is the one in `GET api/2.0/ai/config/vectorization`, and changing that setting does not re-index anything already indexed - queue it again for that.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-vectorization-start-task/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiVectorizationStartTaskRequest** | [**AiVectorizationStartTaskRequest**](AiVectorizationStartTaskRequest.md) | The files to index, proxied unchanged to the DocSpace AI service, which owns and validates the shape. | 

### Return type

[**AiVectorizationStartTask200Response**](AiVectorizationStartTask200Response.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let aiVectorizationStartTaskRequest = aiVectorizationStartTask_request(files: [123]) // AiVectorizationStartTaskRequest | The files to index, proxied unchanged to the DocSpace AI service, which owns and validates the shape.

// Start a vectorization task
AIVectorizationAPIApi.aiVectorizationStartTask(aiVectorizationStartTaskRequest: aiVectorizationStartTaskRequest) { (response, error) in
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

