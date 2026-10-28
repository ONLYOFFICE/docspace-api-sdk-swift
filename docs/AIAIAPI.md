# AIAIAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**aiApproveToolCall**](AIAIAPI.md#aiapprovetoolcall) | **POST** /api/2.0/ai/ai/approve-tool-call | Approve tool call
[**aiDenyToolCall**](AIAIAPI.md#aidenytoolcall) | **POST** /api/2.0/ai/ai/deny-tool-call | Deny tool call
[**aiRegenerateStream**](AIAIAPI.md#airegeneratestream) | **POST** /api/2.0/ai/ai/regenerate-stream | Regenerate stream
[**aiSend**](AIAIAPI.md#aisend) | **POST** /api/2.0/ai/ai/send | Run an AI action
[**aiSendCustom**](AIAIAPI.md#aisendcustom) | **POST** /api/2.0/ai/ai/send-custom | Send custom
[**aiSendWithStream**](AIAIAPI.md#aisendwithstream) | **POST** /api/2.0/ai/ai/send-with-stream | Send with stream
[**aiSendWithStreamOpenAI**](AIAIAPI.md#aisendwithstreamopenai) | **POST** /api/2.0/ai/ai/send-with-stream-openai | Stream a chat in OpenAI format


# **aiApproveToolCall**
```swift
    open class func aiApproveToolCall(aiApproveToolCallRequest: AiApproveToolCallRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiChatEvent
```

Resumes a chat round that a tool call has paused, and streams the continuation as newline-delimited `ChatEvent` objects. The result supplied in the request is persisted onto the assistant message that issued the call, so the tool is not executed here - the caller runs it and reports the outcome. The round continues against the augmented history and may pause again on a further tool call. Call `POST api/2.0/ai/ai/deny-tool-call` instead to refuse the call and let the model answer without it.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-approve-tool-call/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiApproveToolCallRequest** | [**AiApproveToolCallRequest**](AiApproveToolCallRequest.md) |  | 

### Return type

[**AiChatEvent**](AiChatEvent.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let aiApproveToolCallRequest = AiApproveToolCallRequest(result: 123, allowAlways: false, threadId: "threadId_example", messageId: "messageId_example", idx: 123, message: AiThreadMessageLike(id: "id_example", role: "role_example", content: AiThreadMessageLike_content(), createdAt: "createdAt_example", status: AiThreadMessageLike_status(type: "type_example"), metadata: 123, attachments: [123]), actionArgs: AiActionArgs(tools: [AiMCPItem(name: "name_example", description: "description_example", inputSchema: 123, enabled: true, serverType: "serverType_example", requireApproval: false, annotations: AiToolAnnotations(title: "title_example", readOnlyHint: false, destructiveHint: false, idempotentHint: false, openWorldHint: false))], isReasoning: false, reasoningLevel: AiReasoningLevel(), prompt: AiActionArgs_prompt(mode: "mode_example", text: "text_example")), entityId: "entityId_example", profileId: "profileId_example") // AiApproveToolCallRequest | 

// Approve tool call
do {
    let response = try await AIAIAPIApi.aiApproveToolCall(aiApproveToolCallRequest: aiApproveToolCallRequest)
    dump(response)
} catch {
    print(error)
}
```

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/x-ndjson, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **aiDenyToolCall**
```swift
    open class func aiDenyToolCall(aiToolCallData: AiToolCallData, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiChatEvent
```

Refuses the tool call a chat round is paused on and resumes it immediately, streaming the continuation as newline-delimited `ChatEvent` objects. The literal `User deny tool call` is persisted in place of the tool result, so the model sees an explicit refusal rather than a missing answer and may reply without the tool or ask for something else. Nothing is executed and no result is accepted from the caller. Use `POST api/2.0/ai/ai/approve-tool-call` to supply a result instead.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-deny-tool-call/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiToolCallData** | [**AiToolCallData**](AiToolCallData.md) |  | 

### Return type

[**AiChatEvent**](AiChatEvent.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let aiToolCallData = AiToolCallData(threadId: "threadId_example", messageId: "messageId_example", idx: 123, message: AiThreadMessageLike(id: "id_example", role: "role_example", content: AiThreadMessageLike_content(), createdAt: "createdAt_example", status: AiThreadMessageLike_status(type: "type_example"), metadata: 123, attachments: [123]), actionArgs: AiActionArgs(tools: [AiMCPItem(name: "name_example", description: "description_example", inputSchema: 123, enabled: true, serverType: "serverType_example", requireApproval: false, annotations: AiToolAnnotations(title: "title_example", readOnlyHint: false, destructiveHint: false, idempotentHint: false, openWorldHint: false))], isReasoning: false, reasoningLevel: AiReasoningLevel(), prompt: AiActionArgs_prompt(mode: "mode_example", text: "text_example")), entityId: "entityId_example", profileId: "profileId_example") // AiToolCallData | 

// Deny tool call
do {
    let response = try await AIAIAPIApi.aiDenyToolCall(aiToolCallData: aiToolCallData)
    dump(response)
} catch {
    print(error)
}
```

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/x-ndjson, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **aiRegenerateStream**
```swift
    open class func aiRegenerateStream(aiRegenerateStreamRequest: AiRegenerateStreamRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiChatEvent
```

Re-rolls the last assistant reply of an existing thread: every message after the last user message - the previous reply and any tool-call hops - is dropped, and a fresh reply is streamed as newline-delimited `ChatEvent` objects against the unchanged prompt. The thread has to exist already, `threadId` is required, and no title is generated. The dropped messages are gone for good, so this is a destructive operation on the thread's tail rather than a retry that keeps both answers. Unlike `send-with-stream` the profile is not verified before the stream opens, so an unusable model surfaces as an error frame inside the 200 rather than as a 4xx.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-regenerate-stream/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiRegenerateStreamRequest** | [**AiRegenerateStreamRequest**](AiRegenerateStreamRequest.md) |  | 

### Return type

[**AiChatEvent**](AiChatEvent.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let aiRegenerateStreamRequest = AiRegenerateStreamRequest(threadId: "threadId_example", actionArgs: AiActionArgs(tools: [AiMCPItem(name: "name_example", description: "description_example", inputSchema: 123, enabled: true, serverType: "serverType_example", requireApproval: false, annotations: AiToolAnnotations(title: "title_example", readOnlyHint: false, destructiveHint: false, idempotentHint: false, openWorldHint: false))], isReasoning: false, reasoningLevel: AiReasoningLevel(), prompt: AiActionArgs_prompt(mode: "mode_example", text: "text_example")), entityId: "entityId_example", profileId: "profileId_example") // AiRegenerateStreamRequest | 

// Regenerate stream
do {
    let response = try await AIAIAPIApi.aiRegenerateStream(aiRegenerateStreamRequest: aiRegenerateStreamRequest)
    dump(response)
} catch {
    print(error)
}
```

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/x-ndjson, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **aiSend**
```swift
    open class func aiSend(aiSendRequest: AiSendRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiThreadMessageLike
```

Runs one AI action and returns the whole answer as a single JSON document. The model is the profile bound to `actionType`, falling back to the `Default` assignment slot, so this operation accepts no `profileId` of its own. `actionType` has to be a known action and `userMessage` has to carry text or an attachment, or the call answers 400 before anything runs. Nothing is persisted - no thread is opened, no message is stored and no title is generated - which makes it the one to use for a stand-alone completion rather than for a conversation. `entityId` and `contextEntityId` set the scope of the round, which decides the workspace context and the custom MCP servers it may reach. For a conversation that keeps its history, use `POST api/2.0/ai/ai/send-with-stream` instead.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-send/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiSendRequest** | [**AiSendRequest**](AiSendRequest.md) |  | 

### Return type

[**AiThreadMessageLike**](AiThreadMessageLike.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let aiSendRequest = AiSendRequest(actionType: AiActionType(), userMessage: AiThreadMessageLike(id: "id_example", role: "role_example", content: AiThreadMessageLike_content(), createdAt: "createdAt_example", status: AiThreadMessageLike_status(type: "type_example"), metadata: 123, attachments: [123]), actionArgs: AiActionArgs(tools: [AiMCPItem(name: "name_example", description: "description_example", inputSchema: 123, enabled: true, serverType: "serverType_example", requireApproval: false, annotations: AiToolAnnotations(title: "title_example", readOnlyHint: false, destructiveHint: false, idempotentHint: false, openWorldHint: false))], isReasoning: false, reasoningLevel: AiReasoningLevel(), prompt: AiActionArgs_prompt(mode: "mode_example", text: "text_example")), entityId: "entityId_example") // AiSendRequest | 

// Run an AI action
do {
    let response = try await AIAIAPIApi.aiSend(aiSendRequest: aiSendRequest)
    dump(response)
} catch {
    print(error)
}
```

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **aiSendCustom**
```swift
    open class func aiSendCustom(aiSendCustomRequest: AiSendCustomRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiThreadMessageLike
```

Runs a free-form one-turn call against a system prompt supplied in the request, with no thread, no history and nothing persisted. The model is the explicit `profileId` when it resolves, otherwise the `Default` assignment slot. `systemPrompt` is required and `userMessage` has to carry text or an attachment, or the call answers 400 before anything runs. The shape of the answer depends on the body rather than on the route: with `isStream: true` it arrives as a newline-delimited stream of chat events, and without it as a single JSON document, so a client has to handle both; `isStream` has to be a real boolean when sent, a string is refused. Use `POST api/2.0/ai/ai/send` when the prompt should come from the portal's own action configuration instead of from the caller.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-send-custom/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiSendCustomRequest** | [**AiSendCustomRequest**](AiSendCustomRequest.md) |  | 

### Return type

[**AiThreadMessageLike**](AiThreadMessageLike.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let aiSendCustomRequest = AiSendCustomRequest(isStream: false, systemPrompt: "systemPrompt_example", userMessage: AiThreadMessageLike(id: "id_example", role: "role_example", content: AiThreadMessageLike_content(), createdAt: "createdAt_example", status: AiThreadMessageLike_status(type: "type_example"), metadata: 123, attachments: [123]), actionArgs: AiActionArgs(tools: [AiMCPItem(name: "name_example", description: "description_example", inputSchema: 123, enabled: true, serverType: "serverType_example", requireApproval: false, annotations: AiToolAnnotations(title: "title_example", readOnlyHint: false, destructiveHint: false, idempotentHint: false, openWorldHint: false))], isReasoning: false, reasoningLevel: AiReasoningLevel(), prompt: AiActionArgs_prompt(mode: "mode_example", text: "text_example"))) // AiSendCustomRequest | 

// Send custom
do {
    let response = try await AIAIAPIApi.aiSendCustom(aiSendCustomRequest: aiSendCustomRequest)
    dump(response)
} catch {
    print(error)
}
```

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **aiSendWithStream**
```swift
    open class func aiSendWithStream(aiSendStreamBody: AiSendStreamBody, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiChatEvent
```

Runs one chat round and streams it back as newline-delimited `ChatEvent` objects. Omitting `threadId` opens a new thread, which requires that `entityId` names a room the caller can open and that a profile resolves for it; the user message and the reply are persisted either way, and a new thread also gets a generated title. The model is settled in a fixed order - an agent's assignment in scope overrides everything, then the explicit `profileId`, then the one stored on the thread, then the `Chat` assignment - and the effective profile is checked before the stream opens, so an unknown one fails with 400 rather than as an error buried in a 200. A tool call pauses the round and ends the stream; resume it with `POST api/2.0/ai/ai/approve-tool-call` or `POST api/2.0/ai/ai/deny-tool-call`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-send-with-stream/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiSendStreamBody** | [**AiSendStreamBody**](AiSendStreamBody.md) |  | 

### Return type

[**AiChatEvent**](AiChatEvent.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let aiSendStreamBody = AiSendStreamBody(threadId: "threadId_example", userMessage: AiThreadMessageLike(id: "id_example", role: "role_example", content: AiThreadMessageLike_content(), createdAt: "createdAt_example", status: AiThreadMessageLike_status(type: "type_example"), metadata: 123, attachments: [123]), actionArgs: AiActionArgs(tools: [AiMCPItem(name: "name_example", description: "description_example", inputSchema: 123, enabled: true, serverType: "serverType_example", requireApproval: false, annotations: AiToolAnnotations(title: "title_example", readOnlyHint: false, destructiveHint: false, idempotentHint: false, openWorldHint: false))], isReasoning: false, reasoningLevel: AiReasoningLevel(), prompt: AiActionArgs_prompt(mode: "mode_example", text: "text_example")), entityId: "entityId_example", profileId: "profileId_example") // AiSendStreamBody | 

// Send with stream
do {
    let response = try await AIAIAPIApi.aiSendWithStream(aiSendStreamBody: aiSendStreamBody)
    dump(response)
} catch {
    print(error)
}
```

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/x-ndjson, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **aiSendWithStreamOpenAI**
```swift
    open class func aiSendWithStreamOpenAI(aiSendStreamBody: AiSendStreamBody, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiOpenAIStreamChunk
```

The same chat round as `send-with-stream`, re-encoded as a server-sent-events stream of OpenAI `chat.completion.chunk` objects terminated by a `[DONE]` sentinel. Thread handling, persistence, title generation and the profile pre-flight are identical, and a tool call ends the stream with `finish_reason: tool_calls` instead of a pause event - resume it through the same approve and deny operations. Unlike `send-with-stream` it does not reject an empty user message and does not enforce the per-kind attachment cap, so validate both before calling. Choose this route only for a client that already speaks the OpenAI wire format; `POST api/2.0/ai/ai/send-with-stream` is the native one.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-send-with-stream-open-ai/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiSendStreamBody** | [**AiSendStreamBody**](AiSendStreamBody.md) |  | 

### Return type

[**AiOpenAIStreamChunk**](AiOpenAIStreamChunk.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let aiSendStreamBody = AiSendStreamBody(threadId: "threadId_example", userMessage: AiThreadMessageLike(id: "id_example", role: "role_example", content: AiThreadMessageLike_content(), createdAt: "createdAt_example", status: AiThreadMessageLike_status(type: "type_example"), metadata: 123, attachments: [123]), actionArgs: AiActionArgs(tools: [AiMCPItem(name: "name_example", description: "description_example", inputSchema: 123, enabled: true, serverType: "serverType_example", requireApproval: false, annotations: AiToolAnnotations(title: "title_example", readOnlyHint: false, destructiveHint: false, idempotentHint: false, openWorldHint: false))], isReasoning: false, reasoningLevel: AiReasoningLevel(), prompt: AiActionArgs_prompt(mode: "mode_example", text: "text_example")), entityId: "entityId_example", profileId: "profileId_example") // AiSendStreamBody | 

// Stream a chat in OpenAI format
do {
    let response = try await AIAIAPIApi.aiSendWithStreamOpenAI(aiSendStreamBody: aiSendStreamBody)
    dump(response)
} catch {
    print(error)
}
```

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/event-stream, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

