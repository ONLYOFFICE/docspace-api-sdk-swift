# AIOpenAIPassthroughAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**aiOpenaiChatCompletions**](AIOpenAIPassthroughAPI.md#aiopenaichatcompletions) | **POST** /api/2.0/ai/openai/{profileId}/v1/chat/completions | OpenAI chat completions passthrough
[**aiOpenaiImagesGenerations**](AIOpenAIPassthroughAPI.md#aiopenaiimagesgenerations) | **POST** /api/2.0/ai/openai/{profileId}/v1/images/generations | OpenAI image generation passthrough


# **aiOpenaiChatCompletions**
```swift
    open class func aiOpenaiChatCompletions(profileId: String, requestBody: [String: JSONValue?], completion: @escaping (_ data: [String: JSONValue?]?, _ error: Error?) -> Void)
```

OpenAI-compatible chat completions for the document editor's AI plugin. The profile is resolved server-side, its credentials are attached, and the body is forwarded to the provider verbatim - the payload is owned by the plugin's SDK on one end and the provider on the other. A client disconnect cancels the provider call.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-openai-chat-completions/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **profileId** | **String** | The AI provider profile identifier. | 
 **requestBody** | [**[String: JSONValue?]**](JSONValue.md) | An OpenAI Chat Completions request, forwarded to the provider byte for byte. The shape is the provider's, not this API's, so consult the provider's own reference; the model and the credentials come from the profile in the path and must not be sent here. | 

### Return type

**[String: JSONValue?]**

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let profileId = "profileId_example" // String | The AI provider profile identifier.
let requestBody = "TODO" // [String: JSONValue?] | An OpenAI Chat Completions request, forwarded to the provider byte for byte. The shape is the provider's, not this API's, so consult the provider's own reference; the model and the credentials come from the profile in the path and must not be sent here.

// OpenAI chat completions passthrough
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
    open class func aiOpenaiImagesGenerations(profileId: String, requestBody: [String: JSONValue?], completion: @escaping (_ data: [String: JSONValue?]?, _ error: Error?) -> Void)
```

OpenAI-compatible image generation for the document editor's AI plugin, working exactly as the chat-completions passthrough does: the profile named by `profileId` is resolved server-side, its credentials are attached, and the body reaches the provider unchanged. The provider's status and body are relayed verbatim, so its 429 and its own error envelope surface as they stand. A body larger than this route accepts is refused before it is forwarded. A client disconnect aborts the provider call.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-openai-images-generations/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **profileId** | **String** | The AI provider profile identifier. | 
 **requestBody** | [**[String: JSONValue?]**](JSONValue.md) | An OpenAI image-generation request, forwarded to the provider byte for byte. The shape is the provider's, not this API's, and the credentials come from the profile in the path. | 

### Return type

**[String: JSONValue?]**

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let profileId = "profileId_example" // String | The AI provider profile identifier.
let requestBody = "TODO" // [String: JSONValue?] | An OpenAI image-generation request, forwarded to the provider byte for byte. The shape is the provider's, not this API's, and the credentials come from the profile in the path.

// OpenAI image generation passthrough
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

