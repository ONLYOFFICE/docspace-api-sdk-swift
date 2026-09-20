# AIThreadsAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**aiThreadsAppendUserMessage**](AIThreadsAPI.md#aithreadsappendusermessage) | **POST** /api/2.0/ai/threads/append-user-message | Append user message
[**aiThreadsClearMessages**](AIThreadsAPI.md#aithreadsclearmessages) | **DELETE** /api/2.0/ai/threads/clear-messages | Clear messages
[**aiThreadsCreate**](AIThreadsAPI.md#aithreadscreate) | **POST** /api/2.0/ai/threads/create | Create a chat thread
[**aiThreadsDelete**](AIThreadsAPI.md#aithreadsdelete) | **DELETE** /api/2.0/ai/threads/delete | Delete a chat thread
[**aiThreadsDeleteMessage**](AIThreadsAPI.md#aithreadsdeletemessage) | **DELETE** /api/2.0/ai/threads/delete-message | Delete message
[**aiThreadsGetById**](AIThreadsAPI.md#aithreadsgetbyid) | **GET** /api/2.0/ai/threads/get-by-id | Get a chat thread
[**aiThreadsGetMessageById**](AIThreadsAPI.md#aithreadsgetmessagebyid) | **GET** /api/2.0/ai/threads/get-message-by-id | Get one chat message
[**aiThreadsList**](AIThreadsAPI.md#aithreadslist) | **GET** /api/2.0/ai/threads/list | List chat threads
[**aiThreadsOpenOrCreate**](AIThreadsAPI.md#aithreadsopenorcreate) | **POST** /api/2.0/ai/threads/open-or-create | Open or create
[**aiThreadsReadMessages**](AIThreadsAPI.md#aithreadsreadmessages) | **GET** /api/2.0/ai/threads/read-messages | Read messages
[**aiThreadsRegenerateTitle**](AIThreadsAPI.md#aithreadsregeneratetitle) | **POST** /api/2.0/ai/threads/regenerate-title | Regenerate title
[**aiThreadsRename**](AIThreadsAPI.md#aithreadsrename) | **PUT** /api/2.0/ai/threads/rename | Rename a chat thread
[**aiThreadsTouch**](AIThreadsAPI.md#aithreadstouch) | **POST** /api/2.0/ai/threads/touch | Bump a thread's activity
[**aiThreadsUpdateMessage**](AIThreadsAPI.md#aithreadsupdatemessage) | **PUT** /api/2.0/ai/threads/update-message | Update message


# **aiThreadsAppendUserMessage**
```swift
    open class func aiThreadsAppendUserMessage(aiThreadsAppendUserMessageRequest: AiThreadsAppendUserMessageRequest, completion: @escaping (_ data: AiThreadsAppendUserMessage200Response?, _ error: Error?) -> Void)
```

Stores a user message in a thread and bumps its last-edit date so the thread resurfaces at the top of the list. The per-kind attachment cap of the composer is enforced here as well, so a direct API call cannot exceed what the UI allows. Passing `profileId` rebinds the thread to another model, which is how a mid-conversation model switch is recorded. The answer carries the new message's ID; the message is stored as sent and no reply is generated - run a round with `POST api/2.0/ai/ai/send-with-stream` for that.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-append-user-message/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiThreadsAppendUserMessageRequest** | [**AiThreadsAppendUserMessageRequest**](AiThreadsAppendUserMessageRequest.md) |  | 

### Return type

[**AiThreadsAppendUserMessage200Response**](AiThreadsAppendUserMessage200Response.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let aiThreadsAppendUserMessageRequest = aiThreadsAppendUserMessage_request(threadId: "threadId_example", message: AiThreadMessageLike(id: "id_example", role: "role_example", content: AiThreadMessageLike_content(), createdAt: "createdAt_example", status: AiThreadMessageLike_status(type: "type_example"), metadata: 123, attachments: [123]), profileId: "profileId_example") // AiThreadsAppendUserMessageRequest | 

// Append user message
AIThreadsAPIApi.aiThreadsAppendUserMessage(aiThreadsAppendUserMessageRequest: aiThreadsAppendUserMessageRequest) { (response, error) in
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

# **aiThreadsClearMessages**
```swift
    open class func aiThreadsClearMessages(body: String, completion: @escaping (_ data: AiSuccessResponse?, _ error: Error?) -> Void)
```

Removes every message of a thread while keeping the thread, its title and its model binding, and bumps its last-edit date. The messages are gone for good. Unlike `delete` this does not verify that the thread exists, so clearing an unknown `threadId` reports success rather than 404. The answer only confirms the write.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-clear-messages/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **String** | The ID of the thread to empty, as a bare JSON string. | 

### Return type

[**AiSuccessResponse**](AiSuccessResponse.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let body = "body_example" // String | The ID of the thread to empty, as a bare JSON string.

// Clear messages
AIThreadsAPIApi.aiThreadsClearMessages(body: body) { (response, error) in
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

# **aiThreadsCreate**
```swift
    open class func aiThreadsCreate(aiThreadsCreateRequest: AiThreadsCreateRequest, completion: @escaping (_ data: AiThread?, _ error: Error?) -> Void)
```

Creates a chat thread with a title supplied by the caller and returns it. A scoped thread requires that `entityId` names a room the caller can open, and a model has to resolve for the scope - an explicit `profileId`, or the room's `Chat` assignment - otherwise there is nothing to run the thread against and the call answers 404. In an agent room the agent's own assignment overrides any `profileId` sent with the request, so a thread there always starts on the agent's model. Use `POST api/2.0/ai/threads/open-or-create` instead when the title should be generated from the first user message.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-create/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiThreadsCreateRequest** | [**AiThreadsCreateRequest**](AiThreadsCreateRequest.md) |  | 

### Return type

[**AiThread**](AiThread.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let aiThreadsCreateRequest = aiThreadsCreate_request(title: "title_example", profileId: "profileId_example", entityId: "entityId_example") // AiThreadsCreateRequest | 

// Create a chat thread
AIThreadsAPIApi.aiThreadsCreate(aiThreadsCreateRequest: aiThreadsCreateRequest) { (response, error) in
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

# **aiThreadsDelete**
```swift
    open class func aiThreadsDelete(body: String, completion: @escaping (_ data: AiSuccessResponse?, _ error: Error?) -> Void)
```

Deletes a thread together with every message in it. The thread has to exist: unlike the other operations that take a `threadId`, this one checks first and answers 404 for an unknown or already-deleted thread rather than reporting success. The deletion is permanent and the messages cannot be recovered. To empty a thread but keep it, use `DELETE api/2.0/ai/threads/clear-messages`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-delete/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **String** | The ID of the thread to delete, as a bare JSON string. | 

### Return type

[**AiSuccessResponse**](AiSuccessResponse.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let body = "body_example" // String | The ID of the thread to delete, as a bare JSON string.

// Delete a chat thread
AIThreadsAPIApi.aiThreadsDelete(body: body) { (response, error) in
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

# **aiThreadsDeleteMessage**
```swift
    open class func aiThreadsDeleteMessage(body: String, completion: @escaping (_ data: AiSuccessResponse?, _ error: Error?) -> Void)
```

Deletes one message and leaves the rest of the thread untouched. `messageId` is required and may be sent either in the body or as a query parameter. An unknown ID is not reported: the call answers success without having deleted anything, so verify with `GET api/2.0/ai/threads/read-messages` when it matters. The deletion is permanent.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-delete-message/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **String** | The ID of the message to delete, as a bare JSON string. | 

### Return type

[**AiSuccessResponse**](AiSuccessResponse.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let body = "body_example" // String | The ID of the message to delete, as a bare JSON string.

// Delete message
AIThreadsAPIApi.aiThreadsDeleteMessage(body: body) { (response, error) in
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

# **aiThreadsGetById**
```swift
    open class func aiThreadsGetById(threadId: String, completion: @escaping (_ data: AiThread?, _ error: Error?) -> Void)
```

Returns one thread by its ID, without its messages - read those with `GET api/2.0/ai/threads/read-messages`. `threadId` is required and an unknown one answers 404, so the result is never an empty body. The answer carries the thread's title, its model binding and its last-edit date. This is a read-only operation and does not bump that date.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-get-by-id/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **threadId** | **String** | The chat thread identifier. | 

### Return type

[**AiThread**](AiThread.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let threadId = "threadId_example" // String | The chat thread identifier.

// Get a chat thread
AIThreadsAPIApi.aiThreadsGetById(threadId: threadId) { (response, error) in
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

# **aiThreadsGetMessageById**
```swift
    open class func aiThreadsGetMessageById(messageId: String, completion: @escaping (_ data: AiThreadMessageLike?, _ error: Error?) -> Void)
```

Returns one message by its ID, wherever it sits, without needing the thread it belongs to. `messageId` is required. Unlike `GET api/2.0/ai/threads/get-by-id` an unknown ID is not reported as 404: the answer is an empty body with status 200, so a client has to treat a missing payload as no such message. Message IDs come from the thread history or from the answer of `POST api/2.0/ai/threads/append-user-message`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-get-message-by-id/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **messageId** | **String** | The globally unique chat message identifier. | 

### Return type

[**AiThreadMessageLike**](AiThreadMessageLike.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let messageId = "messageId_example" // String | The globally unique chat message identifier.

// Get one chat message
AIThreadsAPIApi.aiThreadsGetMessageById(messageId: messageId) { (response, error) in
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

# **aiThreadsList**
```swift
    open class func aiThreadsList(entityId: String? = nil, count: Int? = nil, cursor: String? = nil, query: String? = nil, completion: @escaping (_ data: [AiThread]?, _ error: Error?) -> Void)
```

Lists the threads of a scope, most recently edited first, and searches their titles case-insensitively when `query` is given. Every parameter is optional: omitting `entityId` lists the global scope, and omitting `count` lets the engine apply its own page size. Pagination is by cursor, and the cursor is a JSON object passed as a string in the query - `{id: <last thread id>, lastEditDate: <its date>}` - taken from the last entry of the previous page. A cursor that is not valid JSON, or that lacks an `id`, is ignored rather than rejected, and the read silently starts from the first page again.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-list/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityId** | **String** | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. | [optional] 
 **count** | **Int** | The maximum number of items to return in one page. | [optional] 
 **cursor** | **String** | The keyset pagination cursor: the JSON-encoded sort key of the last item already received. Omit for the first page. | [optional] 
 **query** | **String** | The full-text query the thread list is filtered by. | [optional] 

### Return type

[**[AiThread]**](AiThread.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let entityId = "entityId_example" // String | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. (optional)
let count = 987 // Int | The maximum number of items to return in one page. (optional)
let cursor = "cursor_example" // String | The keyset pagination cursor: the JSON-encoded sort key of the last item already received. Omit for the first page. (optional)
let query = "query_example" // String | The full-text query the thread list is filtered by. (optional)

// List chat threads
AIThreadsAPIApi.aiThreadsList(entityId: entityId, count: count, cursor: cursor, query: query) { (response, error) in
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

# **aiThreadsOpenOrCreate**
```swift
    open class func aiThreadsOpenOrCreate(aiThreadsOpenOrCreateRequest: AiThreadsOpenOrCreateRequest, completion: @escaping (_ data: AiOpenOrCreateResult?, _ error: Error?) -> Void)
```

Opens a chat thread and returns it with its history, or creates one whose title is generated from the first message supplied in the request. That first message is not persisted: follow up with `POST api/2.0/ai/threads/append-user-message` to store it, or start the round directly with `POST api/2.0/ai/ai/send-with-stream`. Unlike `create` this takes a whole resolved `profile` object rather than an ID, and a request without one answers 404 because no model could be bound. A supplied `entityId` has to be a room the caller can open; anything that is not an agent room folds to the global scope instead of being rejected.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-open-or-create/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiThreadsOpenOrCreateRequest** | [**AiThreadsOpenOrCreateRequest**](AiThreadsOpenOrCreateRequest.md) |  | 

### Return type

[**AiOpenOrCreateResult**](AiOpenOrCreateResult.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let aiThreadsOpenOrCreateRequest = aiThreadsOpenOrCreate_request(threadId: "threadId_example", profile: AiProfile(id: "id_example", name: "name_example", providerType: AiProviderType(), basedOn: AiBuiltinProviderType(), baseUrl: "baseUrl_example", key: "key_example", headers: "TODO", modelId: "modelId_example", reasoning: false, reasoningSupport: AiReasoningSupport(thinks: false, canDisable: false, depths: [AiReasoningDepth()], defaultDepth: nil), capabilities: 123, canUseTool: true, useResponsesApi: false, isCloudProvider: true, useProxy: false, createdAt: 123), profileId: "profileId_example", firstMessage: AiThreadMessageLike(id: "id_example", role: "role_example", content: AiThreadMessageLike_content(), createdAt: "createdAt_example", status: AiThreadMessageLike_status(type: "type_example"), metadata: 123, attachments: [123]), entityId: "entityId_example", entityMeta: aiThreadsOpenOrCreate_request_entityMeta(entityId: "entityId_example", entityTitle: "entityTitle_example")) // AiThreadsOpenOrCreateRequest | 

// Open or create
AIThreadsAPIApi.aiThreadsOpenOrCreate(aiThreadsOpenOrCreateRequest: aiThreadsOpenOrCreateRequest) { (response, error) in
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

# **aiThreadsReadMessages**
```swift
    open class func aiThreadsReadMessages(threadId: String, count: Int? = nil, cursor: String? = nil, direction: String? = nil, completion: @escaping (_ data: [AiThreadMessageLike]?, _ error: Error?) -> Void)
```

Reads the messages of one thread, oldest first, with the same string-encoded JSON cursor as the thread list. `direction` turns the read around, and only the exact value `desc` does so - anything else, including a misspelling, reads forward. Omitting `threadId` is not an error: the call answers 200 with an empty list, so an empty result does not distinguish a thread with no messages from a request that forgot the ID. A malformed cursor is ignored and the read starts from the beginning.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-read-messages/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **threadId** | **String** | The chat thread identifier. | 
 **count** | **Int** | The maximum number of items to return in one page. | [optional] 
 **cursor** | **String** | The keyset pagination cursor: the JSON-encoded sort key of the last item already received. Omit for the first page. | [optional] 
 **direction** | **String** | The order the message page is read in. Only desc turns the read around and pages back from the newest message; omit for the forward read. | [optional] 

### Return type

[**[AiThreadMessageLike]**](AiThreadMessageLike.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let threadId = "threadId_example" // String | The chat thread identifier.
let count = 987 // Int | The maximum number of items to return in one page. (optional)
let cursor = "cursor_example" // String | The keyset pagination cursor: the JSON-encoded sort key of the last item already received. Omit for the first page. (optional)
let direction = "direction_example" // String | The order the message page is read in. Only desc turns the read around and pages back from the newest message; omit for the forward read. (optional)

// Read messages
AIThreadsAPIApi.aiThreadsReadMessages(threadId: threadId, count: count, cursor: cursor, direction: direction) { (response, error) in
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

# **aiThreadsRegenerateTitle**
```swift
    open class func aiThreadsRegenerateTitle(aiThreadsRegenerateTitleRequest: AiThreadsRegenerateTitleRequest, completion: @escaping (_ data: AiThreadsRegenerateTitle200Response?, _ error: Error?) -> Void)
```

Asks the model to produce a title from the thread's first user message, stores it, and returns the new title. Both `threadId` and a resolved `profile` object are required; a thread with no user message yet has nothing to title and fails. This costs a model call, unlike `POST api/2.0/ai/threads/rename`, which just stores the string it is given. An `entityMeta` sent with the request is only read for its `entityId` hint - the source itself is resolved server-side under the caller's credentials, so a client cannot attribute the call to somebody else's room.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-regenerate-title/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiThreadsRegenerateTitleRequest** | [**AiThreadsRegenerateTitleRequest**](AiThreadsRegenerateTitleRequest.md) |  | 

### Return type

[**AiThreadsRegenerateTitle200Response**](AiThreadsRegenerateTitle200Response.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let aiThreadsRegenerateTitleRequest = aiThreadsRegenerateTitle_request(threadId: "threadId_example", profile: AiProfile(id: "id_example", name: "name_example", providerType: AiProviderType(), basedOn: AiBuiltinProviderType(), baseUrl: "baseUrl_example", key: "key_example", headers: "TODO", modelId: "modelId_example", reasoning: false, reasoningSupport: AiReasoningSupport(thinks: false, canDisable: false, depths: [AiReasoningDepth()], defaultDepth: nil), capabilities: 123, canUseTool: true, useResponsesApi: false, isCloudProvider: true, useProxy: false, createdAt: 123), entityMeta: aiThreadsOpenOrCreate_request_entityMeta(entityId: "entityId_example", entityTitle: "entityTitle_example")) // AiThreadsRegenerateTitleRequest | 

// Regenerate title
AIThreadsAPIApi.aiThreadsRegenerateTitle(aiThreadsRegenerateTitleRequest: aiThreadsRegenerateTitleRequest) { (response, error) in
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

# **aiThreadsRename**
```swift
    open class func aiThreadsRename(aiThreadsRenameRequest: AiThreadsRenameRequest, completion: @escaping (_ data: AiSuccessResponse?, _ error: Error?) -> Void)
```

Replaces a thread's title with the one supplied and bumps its last-edit date. Both `threadId` and a title with at least one non-whitespace character are required - a blank title is rejected rather than silently stored, so a thread cannot end up nameless. The answer only confirms the write. To have the model produce a title instead of supplying one, use `POST api/2.0/ai/threads/regenerate-title`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-rename/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiThreadsRenameRequest** | [**AiThreadsRenameRequest**](AiThreadsRenameRequest.md) |  | 

### Return type

[**AiSuccessResponse**](AiSuccessResponse.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let aiThreadsRenameRequest = aiThreadsRename_request(threadId: "threadId_example", title: "title_example") // AiThreadsRenameRequest | 

// Rename a chat thread
AIThreadsAPIApi.aiThreadsRename(aiThreadsRenameRequest: aiThreadsRenameRequest) { (response, error) in
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

# **aiThreadsTouch**
```swift
    open class func aiThreadsTouch(aiThreadsTouchRequest: AiThreadsTouchRequest, completion: @escaping (_ data: AiSuccessResponse?, _ error: Error?) -> Void)
```

Bumps a thread's last-edit date without adding a message, which resurfaces it in the list. Passing `profileId` also rebinds the thread to another model, so this is the operation to call when a model switch alone should count as activity. Nothing else about the thread changes and the answer only confirms the write. It is idempotent: repeating it simply moves the date forward again.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-touch/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiThreadsTouchRequest** | [**AiThreadsTouchRequest**](AiThreadsTouchRequest.md) |  | 

### Return type

[**AiSuccessResponse**](AiSuccessResponse.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let aiThreadsTouchRequest = aiThreadsTouch_request(threadId: "threadId_example", profileId: "profileId_example") // AiThreadsTouchRequest | 

// Bump a thread's activity
AIThreadsAPIApi.aiThreadsTouch(aiThreadsTouchRequest: aiThreadsTouchRequest) { (response, error) in
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

# **aiThreadsUpdateMessage**
```swift
    open class func aiThreadsUpdateMessage(aiThreadsUpdateMessageRequest: AiThreadsUpdateMessageRequest, completion: @escaping (_ data: AiSuccessResponse?, _ error: Error?) -> Void)
```

Replaces the content of one stored message, which is how the edit and regenerate flows change a message outside the streaming lifecycle. The whole message is overwritten by the one supplied rather than merged, so send a complete object. Neither the ID nor the payload is validated here, so a malformed request surfaces as an error relayed from storage rather than as a 400. The answer only confirms the write.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-update-message/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiThreadsUpdateMessageRequest** | [**AiThreadsUpdateMessageRequest**](AiThreadsUpdateMessageRequest.md) |  | 

### Return type

[**AiSuccessResponse**](AiSuccessResponse.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let aiThreadsUpdateMessageRequest = aiThreadsUpdateMessage_request(messageId: "messageId_example", message: AiThreadMessageLike(id: "id_example", role: "role_example", content: AiThreadMessageLike_content(), createdAt: "createdAt_example", status: AiThreadMessageLike_status(type: "type_example"), metadata: 123, attachments: [123])) // AiThreadsUpdateMessageRequest | 

// Update message
AIThreadsAPIApi.aiThreadsUpdateMessage(aiThreadsUpdateMessageRequest: aiThreadsUpdateMessageRequest) { (response, error) in
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

