# AIOpenAIPassthroughAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**aiOpenaiChatCompletions**](AIOpenAIPassthroughAPI.md#aiopenaichatcompletions) | **POST** /api/2.0/ai/openai/{profileId}/v1/chat/completions | OpenAI-compatible chat completions proxied to the profile's provider
[**aiOpenaiImagesGenerations**](AIOpenAIPassthroughAPI.md#aiopenaiimagesgenerations) | **POST** /api/2.0/ai/openai/{profileId}/v1/images/generations | OpenAI-compatible image generation proxied to the profile's provider


# **aiOpenaiChatCompletions**
```swift
    open class func aiOpenaiChatCompletions(profileId: String, requestBody: [String: JSONValue], completion: @escaping (_ data: AiSuccessResponse?, _ error: Error?) -> Void)
```

OpenAI-compatible chat completions for the document editor's AI plugin. The profile is resolved server-side, its credentials are attached, and the body is forwarded to the provider verbatim - the payload is owned by the plugin's SDK on one end and the provider on the other. A client disconnect cancels the provider call.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-openai-chat-completions/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **profileId** | **String** | The AI provider profile identifier. | 
 **requestBody** | [**[String: JSONValue]**](JSONValue.md) |  | 

### Return type

[**AiSuccessResponse**](AiSuccessResponse.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let profileId = "profileId_example" // String | The AI provider profile identifier.
let requestBody = "TODO" // [String: JSONValue] | 

// OpenAI-compatible chat completions proxied to the profile's provider
AIOpenAIPassthroughAPIApi.aiOpenaiChatCompletions(profileId: profileId, requestBody: requestBody) { (response, error) in
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

# **aiOpenaiImagesGenerations**
```swift
    open class func aiOpenaiImagesGenerations(profileId: String, requestBody: [String: JSONValue], completion: @escaping (_ data: AiSuccessResponse?, _ error: Error?) -> Void)
```

OpenAI-compatible image generation for the document editor's AI plugin. As with the chat-completions passthrough, the profile's credentials are attached server-side and the body reaches the provider unchanged.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-openai-images-generations/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **profileId** | **String** | The AI provider profile identifier. | 
 **requestBody** | [**[String: JSONValue]**](JSONValue.md) |  | 

### Return type

[**AiSuccessResponse**](AiSuccessResponse.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let profileId = "profileId_example" // String | The AI provider profile identifier.
let requestBody = "TODO" // [String: JSONValue] | 

// OpenAI-compatible image generation proxied to the profile's provider
AIOpenAIPassthroughAPIApi.aiOpenaiImagesGenerations(profileId: profileId, requestBody: requestBody) { (response, error) in
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

