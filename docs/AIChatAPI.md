# AIChatAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**continueChat**](AIChatAPI.md#continuechat) | **POST** /api/2.0/ai/chats/{chatId}/messages | Send a message to an existing AI chat
[**deleteChat**](AIChatAPI.md#deletechat) | **DELETE** /api/2.0/ai/chats/{chatId} | Delete an AI chat
[**exportChat**](AIChatAPI.md#exportchat) | **POST** /api/2.0/ai/chats/{chatId}/messages/export | Export AI chat messages to a file
[**getChat**](AIChatAPI.md#getchat) | **GET** /api/2.0/ai/chats/{chatId} | Get an AI chat by ID
[**getChatModels**](AIChatAPI.md#getchatmodels) | **GET** /api/2.0/ai/chats/models | Get available AI models
[**getChats**](AIChatAPI.md#getchats) | **GET** /api/2.0/ai/rooms/{roomId}/chats | Get AI chats in a room
[**getMessages**](AIChatAPI.md#getmessages) | **GET** /api/2.0/ai/chats/{chatId}/messages | Get messages of an AI chat
[**getUserChatsSettings**](AIChatAPI.md#getuserchatssettings) | **GET** /api/2.0/ai/rooms/{roomId}/chats/config | Get user chat settings for a room
[**providePermission**](AIChatAPI.md#providepermission) | **POST** /api/2.0/ai/chats/tool-permissions/{callId}/decision | Submit a tool execution permission decision
[**renameChat**](AIChatAPI.md#renamechat) | **PUT** /api/2.0/ai/chats/{chatId} | Rename an AI chat
[**setUserChatsSettings**](AIChatAPI.md#setuserchatssettings) | **PUT** /api/2.0/ai/rooms/{roomId}/chats/config | Update user chat settings for a room
[**startNewChat**](AIChatAPI.md#startnewchat) | **POST** /api/2.0/ai/rooms/{roomId}/chats | Start a new AI chat


# **continueChat**
```swift
    open class func continueChat(chatId: UUID, continueChatBody: ContinueChatBody, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Appends a new user message to an existing chat session and streams the AI assistant's response.  The full conversation history of the chat is sent to the AI provider to maintain context.  The response is delivered as a Server-Sent Events (SSE) stream with periodic keep-alive pings.  File references can optionally be attached to provide additional context.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/continue-chat/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chatId** | **UUID** | The unique identifier of the existing AI chat session to continue. | 
 **continueChatBody** | [**ContinueChatBody**](ContinueChatBody.md) | The message and optional file attachments. | 

### Return type

Void (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let chatId = 987 // UUID | The unique identifier of the existing AI chat session to continue.
let continueChatBody = ContinueChatBody(message: "message_example", contextFolderId: 123, files: [ContinueChatBody_files_inner()]) // ContinueChatBody | The message and optional file attachments.

// Send a message to an existing AI chat
AIChatAPIApi.continueChat(chatId: chatId, continueChatBody: continueChatBody) { (response, error) in
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

# **deleteChat**
```swift
    open class func deleteChat(chatId: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Permanently deletes an AI chat session along with all of its messages.  Only the chat owner can delete their own chat sessions. This action cannot be undone.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-chat/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chatId** | **UUID** | The unique identifier of the AI chat session to delete. | 

### Return type

Void (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let chatId = 987 // UUID | The unique identifier of the AI chat session to delete.

// Delete an AI chat
AIChatAPIApi.deleteChat(chatId: chatId) { (response, error) in
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
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **exportChat**
```swift
    open class func exportChat(chatId: UUID, exportChatRequestBody: ExportChatRequestBody, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Exports the entire message history of an AI chat session and saves it as a document in the specified folder.  The exported file is created with the provided title. Only the chat owner can export their own chat sessions.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/export-chat/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chatId** | **UUID** | The unique identifier of the AI chat session to export. | 
 **exportChatRequestBody** | [**ExportChatRequestBody**](ExportChatRequestBody.md) | The export parameters including destination folder and file title. | 

### Return type

Void (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let chatId = 987 // UUID | The unique identifier of the AI chat session to export.
let exportChatRequestBody = ExportChatRequestBody(folderId: ExportChatRequestBody_folderId(), title: "title_example") // ExportChatRequestBody | The export parameters including destination folder and file title.

// Export AI chat messages to a file
AIChatAPIApi.exportChat(chatId: chatId, exportChatRequestBody: exportChatRequestBody) { (response, error) in
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

# **getChat**
```swift
    open class func getChat(chatId: UUID, completion: @escaping (_ data: ChatWrapper?, _ error: Error?) -> Void)
```

Retrieves the metadata of a single AI chat session, including its title, creation date, and the user who created it.  Only the chat owner can access their own chat sessions.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-chat/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chatId** | **UUID** | The unique identifier of the AI chat session to retrieve. | 

### Return type

[**ChatWrapper**](ChatWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let chatId = 987 // UUID | The unique identifier of the AI chat session to retrieve.

// Get an AI chat by ID
AIChatAPIApi.getChat(chatId: chatId) { (response, error) in
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

# **getChatModels**
```swift
    open class func getChatModels(provider: Int? = nil, completion: @escaping (_ data: ModelArrayWrapper?, _ error: Error?) -> Void)
```

Returns the list of AI models available for chat conversations.  Optionally filters the results to models from a specific provider when the provider query parameter is specified.  Each model entry includes the provider ID, provider display name, and the model identifier.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-chat-models/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **provider** | **Int** | The optional AI provider identifier to filter models by. When set to 0, models from all providers are returned. | [optional] 

### Return type

[**ModelArrayWrapper**](ModelArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let provider = 987 // Int | The optional AI provider identifier to filter models by. When set to 0, models from all providers are returned. (optional)

// Get available AI models
AIChatAPIApi.getChatModels(provider: provider) { (response, error) in
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

# **getChats**
```swift
    open class func getChats(roomId: Int, startIndex: Int? = nil, count: Int? = nil, completion: @escaping (_ data: ChatArrayWrapper?, _ error: Error?) -> Void)
```

Returns a paginated list of AI chat sessions that belong to the current user within the specified room.  Supports pagination via the startIndex and count query parameters. The total number of chats is included in the response metadata.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-chats/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **roomId** | **Int** | The identifier of the room whose AI chat sessions are to be listed. | 
 **startIndex** | **Int** | The number of items to skip before returning results (zero-based offset). Defaults to 0. | [optional] 
 **count** | **Int** | The maximum number of items to return per page. Defaults to 100. | [optional] 

### Return type

[**ChatArrayWrapper**](ChatArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let roomId = 987 // Int | The identifier of the room whose AI chat sessions are to be listed.
let startIndex = 987 // Int | The number of items to skip before returning results (zero-based offset). Defaults to 0. (optional)
let count = 987 // Int | The maximum number of items to return per page. Defaults to 100. (optional)

// Get AI chats in a room
AIChatAPIApi.getChats(roomId: roomId, startIndex: startIndex, count: count) { (response, error) in
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

# **getMessages**
```swift
    open class func getMessages(chatId: UUID, startIndex: Int? = nil, count: Int? = nil, completion: @escaping (_ data: MessageArrayWrapper?, _ error: Error?) -> Void)
```

Returns a paginated list of messages from an AI chat session owned by the current user.  Each message includes its role (user or assistant), content blocks (text, tool calls, attachments), and timestamp.  Supports pagination via the startIndex and count query parameters. The total number of messages is included in the response metadata.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-messages/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chatId** | **UUID** | The unique identifier of the AI chat session whose messages are to be listed. | 
 **startIndex** | **Int** | The number of items to skip before returning results (zero-based offset). Defaults to 0. | [optional] 
 **count** | **Int** | The maximum number of items to return per page. Defaults to 100. | [optional] 

### Return type

[**MessageArrayWrapper**](MessageArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let chatId = 987 // UUID | The unique identifier of the AI chat session whose messages are to be listed.
let startIndex = 987 // Int | The number of items to skip before returning results (zero-based offset). Defaults to 0. (optional)
let count = 987 // Int | The maximum number of items to return per page. Defaults to 100. (optional)

// Get messages of an AI chat
AIChatAPIApi.getMessages(chatId: chatId, startIndex: startIndex, count: count) { (response, error) in
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

# **getUserChatsSettings**
```swift
    open class func getUserChatsSettings(roomId: Int, completion: @escaping (_ data: UserChatSettingsWrapper?, _ error: Error?) -> Void)
```

Retrieves the current user's personal AI chat preferences for the specified room,  including whether web search is enabled for AI-assisted responses.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-user-chats-settings/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **roomId** | **Int** | The identifier of the room whose chat settings are to be retrieved. | 

### Return type

[**UserChatSettingsWrapper**](UserChatSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let roomId = 987 // Int | The identifier of the room whose chat settings are to be retrieved.

// Get user chat settings for a room
AIChatAPIApi.getUserChatsSettings(roomId: roomId) { (response, error) in
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

# **providePermission**
```swift
    open class func providePermission(callId: String, toolDecisionRequestBody: ToolDecisionRequestBody, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Provides the user's approval or denial decision for a pending MCP (Model Context Protocol) tool execution request.  When an AI assistant attempts to invoke an external tool that requires explicit user consent,  the client receives a permission prompt via the SSE stream. This endpoint is used to submit the user's decision  so that the AI chat session can proceed accordingly.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/provide-permission/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **callId** | **String** | The unique identifier of the pending tool execution call awaiting a permission decision. | 
 **toolDecisionRequestBody** | [**ToolDecisionRequestBody**](ToolDecisionRequestBody.md) | The permission decision parameters. | 

### Return type

Void (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let callId = "callId_example" // String | The unique identifier of the pending tool execution call awaiting a permission decision.
let toolDecisionRequestBody = ToolDecisionRequestBody(decision: ToolExecutionDecision()) // ToolDecisionRequestBody | The permission decision parameters.

// Submit a tool execution permission decision
AIChatAPIApi.providePermission(callId: callId, toolDecisionRequestBody: toolDecisionRequestBody) { (response, error) in
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

# **renameChat**
```swift
    open class func renameChat(chatId: UUID, renameChatBody: RenameChatBody, completion: @escaping (_ data: ChatWrapper?, _ error: Error?) -> Void)
```

Updates the display title of an existing AI chat session owned by the current user.  The new name must not exceed 255 characters.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/rename-chat/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chatId** | **UUID** | The unique identifier of the AI chat session to rename. | 
 **renameChatBody** | [**RenameChatBody**](RenameChatBody.md) | The new chat name. | 

### Return type

[**ChatWrapper**](ChatWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let chatId = 987 // UUID | The unique identifier of the AI chat session to rename.
let renameChatBody = RenameChatBody(name: "name_example") // RenameChatBody | The new chat name.

// Rename an AI chat
AIChatAPIApi.renameChat(chatId: chatId, renameChatBody: renameChatBody) { (response, error) in
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

# **setUserChatsSettings**
```swift
    open class func setUserChatsSettings(roomId: Int, setUserChatSettingsRequestBody: SetUserChatSettingsRequestBody, completion: @escaping (_ data: UserChatSettingsWrapper?, _ error: Error?) -> Void)
```

Saves the current user's personal AI chat preferences for the specified room.  Currently supports toggling the web search capability, which allows the AI assistant to search the internet when generating responses.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-user-chats-settings/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **roomId** | **Int** | The identifier of the room whose chat settings are to be updated. | 
 **setUserChatSettingsRequestBody** | [**SetUserChatSettingsRequestBody**](SetUserChatSettingsRequestBody.md) | The chat settings to apply. | 

### Return type

[**UserChatSettingsWrapper**](UserChatSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let roomId = 987 // Int | The identifier of the room whose chat settings are to be updated.
let setUserChatSettingsRequestBody = SetUserChatSettingsRequestBody(webSearchEnabled: true, reasoningEffort: ChatReasoningEffort()) // SetUserChatSettingsRequestBody | The chat settings to apply.

// Update user chat settings for a room
AIChatAPIApi.setUserChatsSettings(roomId: roomId, setUserChatSettingsRequestBody: setUserChatSettingsRequestBody) { (response, error) in
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

# **startNewChat**
```swift
    open class func startNewChat(roomId: Int, startNewChatBody: StartNewChatBody, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Creates a new AI chat session within the specified room and sends the initial message to the configured AI provider.  The response is delivered as a Server-Sent Events (SSE) stream containing completion chunks (text deltas, tool calls, tool results, and message lifecycle events)  with periodic keep-alive pings every 5 seconds. File references can be included as context for the AI model.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/start-new-chat/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **roomId** | **Int** | The identifier of the room in which to create the new AI chat session. | 
 **startNewChatBody** | [**StartNewChatBody**](StartNewChatBody.md) | The initial message and optional file attachments. | 

### Return type

Void (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let roomId = 987 // Int | The identifier of the room in which to create the new AI chat session.
let startNewChatBody = StartNewChatBody(message: "message_example", contextFolderId: 123, files: [ContinueChatBody_files_inner()]) // StartNewChatBody | The initial message and optional file attachments.

// Start a new AI chat
AIChatAPIApi.startNewChat(roomId: roomId, startNewChatBody: startNewChatBody) { (response, error) in
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

