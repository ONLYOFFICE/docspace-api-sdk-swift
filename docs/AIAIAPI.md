# AIAIAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**aiAiApproveToolCall**](AIAIAPI.md#aiaiapprovetoolcall) | **POST** /api/2.0/ai/ai/approve-tool-call | Approve tool call
[**aiAiDenyToolCall**](AIAIAPI.md#aiaidenytoolcall) | **POST** /api/2.0/ai/ai/deny-tool-call | Deny tool call
[**aiAiRegenerateStream**](AIAIAPI.md#aiairegeneratestream) | **POST** /api/2.0/ai/ai/regenerate-stream | Regenerate stream
[**aiAiSend**](AIAIAPI.md#aiaisend) | **POST** /api/2.0/ai/ai/send | Send
[**aiAiSendCustom**](AIAIAPI.md#aiaisendcustom) | **POST** /api/2.0/ai/ai/send-custom | Send custom
[**aiAiSendWithStream**](AIAIAPI.md#aiaisendwithstream) | **POST** /api/2.0/ai/ai/send-with-stream | Send with stream
[**aiAiSendWithStreamOpenAI**](AIAIAPI.md#aiaisendwithstreamopenai) | **POST** /api/2.0/ai/ai/send-with-stream-openai | Send with stream open ai


# **aiAiApproveToolCall**
```swift
    open class func aiAiApproveToolCall(aiAiApproveToolCallRequest: AiAiApproveToolCallRequest, completion: @escaping (_ data: AiChatEvent?, _ error: Error?) -> Void)
```

Resumes a chat round paused on a tool call. The supplied result is persisted onto the assistant message that issued the call and the stream continues with the augmented history.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-ai-approve-tool-call/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiAiApproveToolCallRequest** | [**AiAiApproveToolCallRequest**](AiAiApproveToolCallRequest.md) |  | 

### Return type

[**AiChatEvent**](AiChatEvent.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let aiAiApproveToolCallRequest = aiAiApproveToolCall_request(result: 123, allowAlways: false, threadId: "threadId_example", messageId: "messageId_example", idx: 123, message: AiThreadMessageLike(id: "id_example", role: "role_example", content: AiThreadMessageLike_content(), createdAt: "createdAt_example", status: AiThreadMessageLike_status(type: "type_example"), metadata: 123, attachments: [123]), actionArgs: AiAiActionArgs(tools: [AiTMCPItem(name: "name_example", description: "description_example", inputSchema: 123, enabled: false, serverType: "serverType_example", requireApproval: false)], isReasoning: false, prompt: AiAiActionArgs_prompt(mode: "mode_example", text: "text_example")), entityId: "entityId_example", profileId: "profileId_example") // AiAiApproveToolCallRequest | 

// Approve tool call
AIAIAPIApi.aiAiApproveToolCall(aiAiApproveToolCallRequest: aiAiApproveToolCallRequest) { (response, error) in
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
 - **Accept**: application/x-ndjson, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **aiAiDenyToolCall**
```swift
    open class func aiAiDenyToolCall(aiAiToolCallData: AiAiToolCallData, completion: @escaping (_ data: AiChatEvent?, _ error: Error?) -> Void)
```

Denies the pending tool call and resumes the chat immediately, with `User deny tool call` standing in for the tool result.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-ai-deny-tool-call/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiAiToolCallData** | [**AiAiToolCallData**](AiAiToolCallData.md) |  | 

### Return type

[**AiChatEvent**](AiChatEvent.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let aiAiToolCallData = AiAiToolCallData(threadId: "threadId_example", messageId: "messageId_example", idx: 123, message: AiThreadMessageLike(id: "id_example", role: "role_example", content: AiThreadMessageLike_content(), createdAt: "createdAt_example", status: AiThreadMessageLike_status(type: "type_example"), metadata: 123, attachments: [123]), actionArgs: AiAiActionArgs(tools: [AiTMCPItem(name: "name_example", description: "description_example", inputSchema: 123, enabled: false, serverType: "serverType_example", requireApproval: false)], isReasoning: false, prompt: AiAiActionArgs_prompt(mode: "mode_example", text: "text_example")), entityId: "entityId_example", profileId: "profileId_example") // AiAiToolCallData | 

// Deny tool call
AIAIAPIApi.aiAiDenyToolCall(aiAiToolCallData: aiAiToolCallData) { (response, error) in
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
 - **Accept**: application/x-ndjson, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **aiAiRegenerateStream**
```swift
    open class func aiAiRegenerateStream(aiAiRegenerateStreamRequest: AiAiRegenerateStreamRequest, completion: @escaping (_ data: AiChatEvent?, _ error: Error?) -> Void)
```

Re-rolls the last assistant reply in an existing thread: every message after the last user message (the previous reply plus any tool-call hops) is dropped and a fresh reply is streamed against the unchanged prompt. The thread must already exist and no title is generated.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-ai-regenerate-stream/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiAiRegenerateStreamRequest** | [**AiAiRegenerateStreamRequest**](AiAiRegenerateStreamRequest.md) |  | 

### Return type

[**AiChatEvent**](AiChatEvent.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let aiAiRegenerateStreamRequest = aiAiRegenerateStream_request(threadId: "threadId_example", actionArgs: AiAiActionArgs(tools: [AiTMCPItem(name: "name_example", description: "description_example", inputSchema: 123, enabled: false, serverType: "serverType_example", requireApproval: false)], isReasoning: false, prompt: AiAiActionArgs_prompt(mode: "mode_example", text: "text_example")), entityId: "entityId_example", profileId: "profileId_example") // AiAiRegenerateStreamRequest | 

// Regenerate stream
AIAIAPIApi.aiAiRegenerateStream(aiAiRegenerateStreamRequest: aiAiRegenerateStreamRequest) { (response, error) in
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
 - **Accept**: application/x-ndjson, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **aiAiSend**
```swift
    open class func aiAiSend(aiAiSendRequest: AiAiSendRequest, completion: @escaping (_ data: AiThreadMessageLike?, _ error: Error?) -> Void)
```

Runs one AI action: the profile bound to `actionType` (falling back to the `Default` slot) is dispatched against a single-message history. Nothing is persisted - no thread, no title generation, no storage writes.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-ai-send/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiAiSendRequest** | [**AiAiSendRequest**](AiAiSendRequest.md) |  | 

### Return type

[**AiThreadMessageLike**](AiThreadMessageLike.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let aiAiSendRequest = aiAiSend_request(actionType: AiActionType(), userMessage: AiThreadMessageLike(id: "id_example", role: "role_example", content: AiThreadMessageLike_content(), createdAt: "createdAt_example", status: AiThreadMessageLike_status(type: "type_example"), metadata: 123, attachments: [123]), actionArgs: AiAiActionArgs(tools: [AiTMCPItem(name: "name_example", description: "description_example", inputSchema: 123, enabled: false, serverType: "serverType_example", requireApproval: false)], isReasoning: false, prompt: AiAiActionArgs_prompt(mode: "mode_example", text: "text_example")), entityId: "entityId_example") // AiAiSendRequest | 

// Send
AIAIAPIApi.aiAiSend(aiAiSendRequest: aiAiSendRequest) { (response, error) in
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

# **aiAiSendCustom**
```swift
    open class func aiAiSendCustom(aiAiSendCustomRequest: AiAiSendCustomRequest, completion: @escaping (_ data: AiThreadMessageLike?, _ error: Error?) -> Void)
```

Runs a free-form one-turn call against a caller-supplied system prompt. No thread, no history and no persistence. The profile is the explicit `profileId` when it resolves, otherwise the `Default` assignment slot.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-ai-send-custom/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiAiSendCustomRequest** | [**AiAiSendCustomRequest**](AiAiSendCustomRequest.md) |  | 

### Return type

[**AiThreadMessageLike**](AiThreadMessageLike.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let aiAiSendCustomRequest = aiAiSendCustom_request(isStream: false, systemPrompt: "systemPrompt_example", userMessage: AiThreadMessageLike(id: "id_example", role: "role_example", content: AiThreadMessageLike_content(), createdAt: "createdAt_example", status: AiThreadMessageLike_status(type: "type_example"), metadata: 123, attachments: [123]), actionArgs: AiAiActionArgs(tools: [AiTMCPItem(name: "name_example", description: "description_example", inputSchema: 123, enabled: false, serverType: "serverType_example", requireApproval: false)], isReasoning: false, prompt: AiAiActionArgs_prompt(mode: "mode_example", text: "text_example"))) // AiAiSendCustomRequest | 

// Send custom
AIAIAPIApi.aiAiSendCustom(aiAiSendCustomRequest: aiAiSendCustomRequest) { (response, error) in
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

# **aiAiSendWithStream**
```swift
    open class func aiAiSendWithStream(aiAiSendStreamBody: AiAiSendStreamBody, completion: @escaping (_ data: AiChatEvent?, _ error: Error?) -> Void)
```

Starts a chat round and streams it back as newline-delimited `ChatEvent` objects. The thread is opened or created, the user message and the reply are persisted, a new thread gets a generated title, and a tool call pauses the round until it is approved or denied.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-ai-send-with-stream/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiAiSendStreamBody** | [**AiAiSendStreamBody**](AiAiSendStreamBody.md) |  | 

### Return type

[**AiChatEvent**](AiChatEvent.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let aiAiSendStreamBody = AiAiSendStreamBody(threadId: "threadId_example", userMessage: AiThreadMessageLike(id: "id_example", role: "role_example", content: AiThreadMessageLike_content(), createdAt: "createdAt_example", status: AiThreadMessageLike_status(type: "type_example"), metadata: 123, attachments: [123]), actionArgs: AiAiActionArgs(tools: [AiTMCPItem(name: "name_example", description: "description_example", inputSchema: 123, enabled: false, serverType: "serverType_example", requireApproval: false)], isReasoning: false, prompt: AiAiActionArgs_prompt(mode: "mode_example", text: "text_example")), entityId: "entityId_example", profileId: "profileId_example") // AiAiSendStreamBody | 

// Send with stream
AIAIAPIApi.aiAiSendWithStream(aiAiSendStreamBody: aiAiSendStreamBody) { (response, error) in
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
 - **Accept**: application/x-ndjson, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **aiAiSendWithStreamOpenAI**
```swift
    open class func aiAiSendWithStreamOpenAI(aiAiSendStreamBody: AiAiSendStreamBody, completion: @escaping (_ data: AiOpenAIStreamChunk?, _ error: Error?) -> Void)
```

The same chat round as `send-with-stream`, re-encoded as an OpenAI Chat Completions stream of `chat.completion.chunk` objects. Storage, title generation and tool-call pauses are identical - only the wire shape differs; a tool call ends the stream with `finish_reason: tool_calls`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-ai-send-with-stream-open-ai/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiAiSendStreamBody** | [**AiAiSendStreamBody**](AiAiSendStreamBody.md) |  | 

### Return type

[**AiOpenAIStreamChunk**](AiOpenAIStreamChunk.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let aiAiSendStreamBody = AiAiSendStreamBody(threadId: "threadId_example", userMessage: AiThreadMessageLike(id: "id_example", role: "role_example", content: AiThreadMessageLike_content(), createdAt: "createdAt_example", status: AiThreadMessageLike_status(type: "type_example"), metadata: 123, attachments: [123]), actionArgs: AiAiActionArgs(tools: [AiTMCPItem(name: "name_example", description: "description_example", inputSchema: 123, enabled: false, serverType: "serverType_example", requireApproval: false)], isReasoning: false, prompt: AiAiActionArgs_prompt(mode: "mode_example", text: "text_example")), entityId: "entityId_example", profileId: "profileId_example") // AiAiSendStreamBody | 

// Send with stream open ai
AIAIAPIApi.aiAiSendWithStreamOpenAI(aiAiSendStreamBody: aiAiSendStreamBody) { (response, error) in
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
 - **Accept**: text/event-stream, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

