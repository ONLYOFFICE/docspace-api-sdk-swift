# AIAIAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**aiAiApproveToolCall**](AIAIAPI.md#aiaiapprovetoolcall) | **POST** /api/2.0/ai/ai/approve-tool-call | Approve tool call
[**aiAiDenyToolCall**](AIAIAPI.md#aiaidenytoolcall) | **POST** /api/2.0/ai/ai/deny-tool-call | Deny tool call
[**aiAiRegenerateStream**](AIAIAPI.md#aiairegeneratestream) | **POST** /api/2.0/ai/ai/regenerate-stream | Regenerate stream
[**aiAiSend**](AIAIAPI.md#aiaisend) | **POST** /api/2.0/ai/ai/send | Run an AI action
[**aiAiSendCustom**](AIAIAPI.md#aiaisendcustom) | **POST** /api/2.0/ai/ai/send-custom | Send custom
[**aiAiSendWithStream**](AIAIAPI.md#aiaisendwithstream) | **POST** /api/2.0/ai/ai/send-with-stream | Send with stream
[**aiAiSendWithStreamOpenAI**](AIAIAPI.md#aiaisendwithstreamopenai) | **POST** /api/2.0/ai/ai/send-with-stream-openai | Stream a chat in OpenAI format


# **aiAiApproveToolCall**
```swift
    open class func aiAiApproveToolCall(aiAiApproveToolCallRequest: AiAiApproveToolCallRequest, completion: @escaping (_ data: AiChatEvent?, _ error: Error?) -> Void)
```

Resumes a chat round that a tool call has paused, and streams the continuation as newline-delimited `ChatEvent` objects. The result supplied in the request is persisted onto the assistant message that issued the call, so the tool is not executed here - the caller runs it and reports the outcome. The round continues against the augmented history and may pause again on a further tool call. Call `POST api/2.0/ai/ai/deny-tool-call` instead to refuse the call and let the model answer without it.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-ai-approve-tool-call/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiAiApproveToolCallRequest** | [**AiAiApproveToolCallRequest**](AiAiApproveToolCallRequest.md) |  | 

### Return type

[**AiChatEvent**](AiChatEvent.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let aiAiApproveToolCallRequest = aiAiApproveToolCall_request(result: 123, allowAlways: false, threadId: "threadId_example", messageId: "messageId_example", idx: 123, message: AiThreadMessageLike(id: "id_example", role: "role_example", content: AiThreadMessageLike_content(), createdAt: "createdAt_example", status: AiThreadMessageLike_status(type: "type_example"), metadata: 123, attachments: [123]), actionArgs: AiAiActionArgs(tools: [AiTMCPItem(name: "name_example", description: "description_example", inputSchema: 123, enabled: true, serverType: "serverType_example", requireApproval: false)], isReasoning: false, reasoningLevel: AiAiReasoningLevel(), prompt: AiAiActionArgs_prompt(mode: "mode_example", text: "text_example")), entityId: "entityId_example", profileId: "profileId_example") // AiAiApproveToolCallRequest | 

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

Refuses the tool call a chat round is paused on and resumes it immediately, streaming the continuation as newline-delimited `ChatEvent` objects. The literal `User deny tool call` is persisted in place of the tool result, so the model sees an explicit refusal rather than a missing answer and may reply without the tool or ask for something else. Nothing is executed and no result is accepted from the caller. Use `POST api/2.0/ai/ai/approve-tool-call` to supply a result instead.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-ai-deny-tool-call/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiAiToolCallData** | [**AiAiToolCallData**](AiAiToolCallData.md) |  | 

### Return type

[**AiChatEvent**](AiChatEvent.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let aiAiToolCallData = AiAiToolCallData(threadId: "threadId_example", messageId: "messageId_example", idx: 123, message: AiThreadMessageLike(id: "id_example", role: "role_example", content: AiThreadMessageLike_content(), createdAt: "createdAt_example", status: AiThreadMessageLike_status(type: "type_example"), metadata: 123, attachments: [123]), actionArgs: AiAiActionArgs(tools: [AiTMCPItem(name: "name_example", description: "description_example", inputSchema: 123, enabled: true, serverType: "serverType_example", requireApproval: false)], isReasoning: false, reasoningLevel: AiAiReasoningLevel(), prompt: AiAiActionArgs_prompt(mode: "mode_example", text: "text_example")), entityId: "entityId_example", profileId: "profileId_example") // AiAiToolCallData | 

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

Re-rolls the last assistant reply of an existing thread: every message after the last user message - the previous reply and any tool-call hops - is dropped, and a fresh reply is streamed as newline-delimited `ChatEvent` objects against the unchanged prompt. The thread has to exist already, `threadId` is required, and no title is generated. The dropped messages are gone for good, so this is a destructive operation on the thread's tail rather than a retry that keeps both answers. Unlike `send-with-stream` the profile is not verified before the stream opens, so an unusable model surfaces as an error frame inside the 200 rather than as a 4xx.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-ai-regenerate-stream/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiAiRegenerateStreamRequest** | [**AiAiRegenerateStreamRequest**](AiAiRegenerateStreamRequest.md) |  | 

### Return type

[**AiChatEvent**](AiChatEvent.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let aiAiRegenerateStreamRequest = aiAiRegenerateStream_request(threadId: "threadId_example", actionArgs: AiAiActionArgs(tools: [AiTMCPItem(name: "name_example", description: "description_example", inputSchema: 123, enabled: true, serverType: "serverType_example", requireApproval: false)], isReasoning: false, reasoningLevel: AiAiReasoningLevel(), prompt: AiAiActionArgs_prompt(mode: "mode_example", text: "text_example")), entityId: "entityId_example", profileId: "profileId_example") // AiAiRegenerateStreamRequest | 

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

Runs one AI action and returns the whole answer as a single JSON document. The model is the profile bound to `actionType`, falling back to the `Default` assignment slot, so this operation accepts no `profileId` of its own. Nothing is persisted - no thread is opened, no message is stored and no title is generated - which makes it the one to use for a stand-alone completion rather than for a conversation. `entityId` and `contextEntityId` set the scope of the round, which decides the workspace context and the custom MCP servers it may reach. For a conversation that keeps its history, use `POST api/2.0/ai/ai/send-with-stream` instead.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-ai-send/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiAiSendRequest** | [**AiAiSendRequest**](AiAiSendRequest.md) |  | 

### Return type

[**AiThreadMessageLike**](AiThreadMessageLike.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let aiAiSendRequest = aiAiSend_request(actionType: AiActionType(), userMessage: AiThreadMessageLike(id: "id_example", role: "role_example", content: AiThreadMessageLike_content(), createdAt: "createdAt_example", status: AiThreadMessageLike_status(type: "type_example"), metadata: 123, attachments: [123]), actionArgs: AiAiActionArgs(tools: [AiTMCPItem(name: "name_example", description: "description_example", inputSchema: 123, enabled: true, serverType: "serverType_example", requireApproval: false)], isReasoning: false, reasoningLevel: AiAiReasoningLevel(), prompt: AiAiActionArgs_prompt(mode: "mode_example", text: "text_example")), entityId: "entityId_example") // AiAiSendRequest | 

// Run an AI action
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

Runs a free-form one-turn call against a system prompt supplied in the request, with no thread, no history and nothing persisted. The model is the explicit `profileId` when it resolves, otherwise the `Default` assignment slot. The shape of the answer depends on the body rather than on the route: with `isStream` set it arrives as a newline-delimited stream of chat events, and without it as a single JSON document, so a client has to handle both. Use `POST api/2.0/ai/ai/send` when the prompt should come from the portal's own action configuration instead of from the caller.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-ai-send-custom/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiAiSendCustomRequest** | [**AiAiSendCustomRequest**](AiAiSendCustomRequest.md) |  | 

### Return type

[**AiThreadMessageLike**](AiThreadMessageLike.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let aiAiSendCustomRequest = aiAiSendCustom_request(isStream: false, systemPrompt: "systemPrompt_example", userMessage: AiThreadMessageLike(id: "id_example", role: "role_example", content: AiThreadMessageLike_content(), createdAt: "createdAt_example", status: AiThreadMessageLike_status(type: "type_example"), metadata: 123, attachments: [123]), actionArgs: AiAiActionArgs(tools: [AiTMCPItem(name: "name_example", description: "description_example", inputSchema: 123, enabled: true, serverType: "serverType_example", requireApproval: false)], isReasoning: false, reasoningLevel: AiAiReasoningLevel(), prompt: AiAiActionArgs_prompt(mode: "mode_example", text: "text_example"))) // AiAiSendCustomRequest | 

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

Runs one chat round and streams it back as newline-delimited `ChatEvent` objects. Omitting `threadId` opens a new thread, which requires that `entityId` names a room the caller can open and that a profile resolves for it; the user message and the reply are persisted either way, and a new thread also gets a generated title. The model is settled in a fixed order - an agent's assignment in scope overrides everything, then the explicit `profileId`, then the one stored on the thread, then the `Chat` assignment - and the effective profile is checked before the stream opens, so an unknown one fails with 400 rather than as an error buried in a 200. A tool call pauses the round and ends the stream; resume it with `POST api/2.0/ai/ai/approve-tool-call` or `POST api/2.0/ai/ai/deny-tool-call`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-ai-send-with-stream/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiAiSendStreamBody** | [**AiAiSendStreamBody**](AiAiSendStreamBody.md) |  | 

### Return type

[**AiChatEvent**](AiChatEvent.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let aiAiSendStreamBody = AiAiSendStreamBody(threadId: "threadId_example", userMessage: AiThreadMessageLike(id: "id_example", role: "role_example", content: AiThreadMessageLike_content(), createdAt: "createdAt_example", status: AiThreadMessageLike_status(type: "type_example"), metadata: 123, attachments: [123]), actionArgs: AiAiActionArgs(tools: [AiTMCPItem(name: "name_example", description: "description_example", inputSchema: 123, enabled: true, serverType: "serverType_example", requireApproval: false)], isReasoning: false, reasoningLevel: AiAiReasoningLevel(), prompt: AiAiActionArgs_prompt(mode: "mode_example", text: "text_example")), entityId: "entityId_example", profileId: "profileId_example") // AiAiSendStreamBody | 

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

The same chat round as `send-with-stream`, re-encoded as a server-sent-events stream of OpenAI `chat.completion.chunk` objects terminated by a `[DONE]` sentinel. Thread handling, persistence, title generation and the profile pre-flight are identical, and a tool call ends the stream with `finish_reason: tool_calls` instead of a pause event - resume it through the same approve and deny operations. Unlike `send-with-stream` it does not reject an empty user message and does not enforce the per-kind attachment cap, so validate both before calling. Choose this route only for a client that already speaks the OpenAI wire format; `POST api/2.0/ai/ai/send-with-stream` is the native one.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-ai-send-with-stream-open-ai/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiAiSendStreamBody** | [**AiAiSendStreamBody**](AiAiSendStreamBody.md) |  | 

### Return type

[**AiOpenAIStreamChunk**](AiOpenAIStreamChunk.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let aiAiSendStreamBody = AiAiSendStreamBody(threadId: "threadId_example", userMessage: AiThreadMessageLike(id: "id_example", role: "role_example", content: AiThreadMessageLike_content(), createdAt: "createdAt_example", status: AiThreadMessageLike_status(type: "type_example"), metadata: 123, attachments: [123]), actionArgs: AiAiActionArgs(tools: [AiTMCPItem(name: "name_example", description: "description_example", inputSchema: 123, enabled: true, serverType: "serverType_example", requireApproval: false)], isReasoning: false, reasoningLevel: AiAiReasoningLevel(), prompt: AiAiActionArgs_prompt(mode: "mode_example", text: "text_example")), entityId: "entityId_example", profileId: "profileId_example") // AiAiSendStreamBody | 

// Stream a chat in OpenAI format
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

