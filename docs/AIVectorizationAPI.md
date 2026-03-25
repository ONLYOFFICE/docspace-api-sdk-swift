# AIVectorizationAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**startTask**](AIVectorizationAPI.md#starttask) | **POST** /api/2.0/ai/vectorization/tasks | Start a vectorization task


# **startTask**
```swift
    open class func startTask(vectorizationStartRequestBody: VectorizationStartRequestBody, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Submits the specified files for vectorization. Each file is processed asynchronously by the configured embedding provider  and indexed for semantic search in AI chat sessions. Only files accessible to the current user can be vectorized.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/start-task/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vectorizationStartRequestBody** | [**VectorizationStartRequestBody**](VectorizationStartRequestBody.md) | The vectorization parameters including file identifiers. | 

### Return type

Void (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let vectorizationStartRequestBody = VectorizationStartRequestBody(files: [123]) // VectorizationStartRequestBody | The vectorization parameters including file identifiers.

// Start a vectorization task
AIVectorizationAPIApi.startTask(vectorizationStartRequestBody: vectorizationStartRequestBody) { (response, error) in
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

