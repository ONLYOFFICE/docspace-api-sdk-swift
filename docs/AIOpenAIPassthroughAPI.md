# AIOpenAIPassthroughAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**aiOpenaiChatCompletions**](AIOpenAIPassthroughAPI.md#aiopenaichatcompletions) | **POST** /api/2.0/ai/openai/{profileId}/v1/chat/completions | OpenAI chat completions passthrough
[**aiOpenaiImagesGenerations**](AIOpenAIPassthroughAPI.md#aiopenaiimagesgenerations) | **POST** /api/2.0/ai/openai/{profileId}/v1/images/generations | OpenAI image generation passthrough


# **aiOpenaiChatCompletions**
```swift
    open class func aiOpenaiChatCompletions(profileId: String, aiOpenaiChatCompletionsRequest: [String: JSONValue?], apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> [String: JSONValue?]
```

OpenAI-compatible chat completions for the document editor's AI plugin. The profile is resolved server-side, its credentials are attached, and the body is forwarded to the provider as sent - the payload is owned by the plugin's SDK on one end and the provider on the other - except that a JSON body which names no `model` gets the profile's model filled in; a `model` the body carries wins. The provider's 4xx answers are relayed with their status and body, so a 429 and the provider's own error envelope surface as they stand; a 5xx from the provider or from the hop in front of it is not relayed - its detail stays in the server log and the call answers a fixed 502 envelope. A client disconnect cancels the provider call.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-openai-chat-completions/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **profileId** | **String** | The AI provider profile identifier. | 
 **aiOpenaiChatCompletionsRequest** | [**[String: JSONValue?]**](JSONValue.md) | An OpenAI Chat Completions request, forwarded to the provider as sent. The shape is the provider's, not this API's, so consult the provider's own reference. The credentials come from the profile in the path and must not be sent here; the profile's model is used when the body names none, and a `model` in the body takes precedence. | 

### Return type

**[String: JSONValue?]**

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let profileId = "profileId_example" // String | The AI provider profile identifier.
let aiOpenaiChatCompletionsRequest = "TODO" // [String: JSONValue?] | An OpenAI Chat Completions request, forwarded to the provider as sent. The shape is the provider's, not this API's, so consult the provider's own reference. The credentials come from the profile in the path and must not be sent here; the profile's model is used when the body names none, and a `model` in the body takes precedence.

// OpenAI chat completions passthrough
do {
    let response = try await AIOpenAIPassthroughAPIApi.aiOpenaiChatCompletions(profileId: profileId, aiOpenaiChatCompletionsRequest: aiOpenaiChatCompletionsRequest)
    dump(response)
} catch {
    print(error)
}
```

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **aiOpenaiImagesGenerations**
```swift
    open class func aiOpenaiImagesGenerations(profileId: String, aiOpenaiImagesGenerationsRequest: [String: JSONValue?], apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> [String: JSONValue]
```

OpenAI-compatible image generation for the document editor's AI plugin, working as the chat-completions passthrough does: the profile named by `profileId` is resolved server-side, its credentials are attached, and the body reaches the provider as sent. The documented OpenAI fields are checked first - `prompt` has to be a non-empty string, `n` a positive integer, `model`, `size`, `quality`, `style` and `response_format` strings when present - and a body failing that answers 400 instead of whatever the provider would have made of it; fields outside that set are passed on untouched. The provider's 4xx status and body are relayed, so its 429 and its own error envelope surface as they stand; a 5xx is replaced by a fixed 502 envelope with the detail kept in the server log. A body larger than this route accepts is refused before it is forwarded. A client disconnect aborts the provider call.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-openai-images-generations/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **profileId** | **String** | The AI provider profile identifier. | 
 **aiOpenaiImagesGenerationsRequest** | [**[String: JSONValue?]**](JSONValue.md) | An OpenAI image-generation request, forwarded to the provider as sent once its documented fields pass a type check. The shape is the provider's, not this API's, and the credentials come from the profile in the path. | 

### Return type

**[String: JSONValue]**

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let profileId = "profileId_example" // String | The AI provider profile identifier.
let aiOpenaiImagesGenerationsRequest = "TODO" // [String: JSONValue?] | An OpenAI image-generation request, forwarded to the provider as sent once its documented fields pass a type check. The shape is the provider's, not this API's, and the credentials come from the profile in the path.

// OpenAI image generation passthrough
do {
    let response = try await AIOpenAIPassthroughAPIApi.aiOpenaiImagesGenerations(profileId: profileId, aiOpenaiImagesGenerationsRequest: aiOpenaiImagesGenerationsRequest)
    dump(response)
} catch {
    print(error)
}
```

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

