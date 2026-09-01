# AIThreadsAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**aiThreadsAppendUserMessage**](AIThreadsAPI.md#aithreadsappendusermessage) | **POST** /api/2.0/ai/threads/append-user-message | Append user message
[**aiThreadsClearMessages**](AIThreadsAPI.md#aithreadsclearmessages) | **DELETE** /api/2.0/ai/threads/clear-messages | Clear messages
[**aiThreadsCreate**](AIThreadsAPI.md#aithreadscreate) | **POST** /api/2.0/ai/threads/create | Create
[**aiThreadsDelete**](AIThreadsAPI.md#aithreadsdelete) | **DELETE** /api/2.0/ai/threads/delete | Delete
[**aiThreadsDeleteMessage**](AIThreadsAPI.md#aithreadsdeletemessage) | **DELETE** /api/2.0/ai/threads/delete-message | Delete message
[**aiThreadsGetById**](AIThreadsAPI.md#aithreadsgetbyid) | **GET** /api/2.0/ai/threads/get-by-id | Get by id
[**aiThreadsGetMessageById**](AIThreadsAPI.md#aithreadsgetmessagebyid) | **GET** /api/2.0/ai/threads/get-message-by-id | Get message by id
[**aiThreadsList**](AIThreadsAPI.md#aithreadslist) | **GET** /api/2.0/ai/threads/list | List
[**aiThreadsOpenOrCreate**](AIThreadsAPI.md#aithreadsopenorcreate) | **POST** /api/2.0/ai/threads/open-or-create | Open or create
[**aiThreadsReadMessages**](AIThreadsAPI.md#aithreadsreadmessages) | **GET** /api/2.0/ai/threads/read-messages | Read messages
[**aiThreadsRegenerateTitle**](AIThreadsAPI.md#aithreadsregeneratetitle) | **POST** /api/2.0/ai/threads/regenerate-title | Regenerate title
[**aiThreadsRename**](AIThreadsAPI.md#aithreadsrename) | **PUT** /api/2.0/ai/threads/rename | Rename
[**aiThreadsTouch**](AIThreadsAPI.md#aithreadstouch) | **POST** /api/2.0/ai/threads/touch | Touch
[**aiThreadsUpdateMessage**](AIThreadsAPI.md#aithreadsupdatemessage) | **PUT** /api/2.0/ai/threads/update-message | Update message


# **aiThreadsAppendUserMessage**
```swift
    open class func aiThreadsAppendUserMessage(aiThreadsAppendUserMessageRequest: AiThreadsAppendUserMessageRequest, completion: @escaping (_ data: AiThreadMessageLike?, _ error: Error?) -> Void)
```

Persists a user message in a thread and bumps the thread's last-edit date so it resurfaces in the sidebar. Optionally rebinds the thread to another profile when the model changed mid-conversation.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-append-user-message/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiThreadsAppendUserMessageRequest** | [**AiThreadsAppendUserMessageRequest**](AiThreadsAppendUserMessageRequest.md) |  | 

### Return type

[**AiThreadMessageLike**](AiThreadMessageLike.md)

### Authorization

No authorization required

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

Drops every message of a thread while keeping the thread itself, and bumps its last-edit date.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-clear-messages/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **String** |  | 

### Return type

[**AiSuccessResponse**](AiSuccessResponse.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let body = "body_example" // String | 

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

Creates a chat thread with a caller-supplied title. Use `open-or-create` instead when the title should be generated from the first user message.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-create/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiThreadsCreateRequest** | [**AiThreadsCreateRequest**](AiThreadsCreateRequest.md) |  | 

### Return type

[**AiThread**](AiThread.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let aiThreadsCreateRequest = aiThreadsCreate_request(title: "title_example", profileId: "profileId_example", entityId: "entityId_example") // AiThreadsCreateRequest | 

// Create
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

Deletes a chat thread together with its messages.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-delete/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **String** |  | 

### Return type

[**AiSuccessResponse**](AiSuccessResponse.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let body = "body_example" // String | 

// Delete
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

Deletes one chat message, leaving the rest of the thread untouched.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-delete-message/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **String** |  | 

### Return type

[**AiSuccessResponse**](AiSuccessResponse.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let body = "body_example" // String | 

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

Returns one chat thread, or an empty result when the identifier is unknown.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-get-by-id/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **threadId** | **String** | The chat thread identifier. | 

### Return type

[**AiThread**](AiThread.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let threadId = "threadId_example" // String | The chat thread identifier.

// Get by id
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

Returns one chat message by its globally unique identifier.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-get-message-by-id/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **messageId** | **String** | The globally unique chat message identifier. | 

### Return type

[**AiThreadMessageLike**](AiThreadMessageLike.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let messageId = "messageId_example" // String | The globally unique chat message identifier.

// Get message by id
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
    open class func aiThreadsList(entityId: String? = nil, count: String? = nil, cursor: String? = nil, query: String? = nil, completion: @escaping (_ data: [AiThread]?, _ error: Error?) -> Void)
```

Lists the chat threads of the scope, most recently edited first. Supports cursor pagination and a server-side case-insensitive title search.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-list/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityId** | **String** | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. | [optional] 
 **count** | **String** | The maximum number of items to return in one page. | [optional] 
 **cursor** | **String** | The keyset pagination cursor: the JSON-encoded sort key of the last item already received. Omit for the first page. | [optional] 
 **query** | **String** | The full-text query the thread list is filtered by. | [optional] 

### Return type

[**[AiThread]**](AiThread.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let entityId = "entityId_example" // String | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. (optional)
let count = "count_example" // String | The maximum number of items to return in one page. (optional)
let cursor = "cursor_example" // String | The keyset pagination cursor: the JSON-encoded sort key of the last item already received. Omit for the first page. (optional)
let query = "query_example" // String | The full-text query the thread list is filtered by. (optional)

// List
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

Opens a chat thread and returns its history, or creates one with a title generated from the supplied first message. That first message is not persisted - the caller decides whether to follow up with `append-user-message`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-open-or-create/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiThreadsOpenOrCreateRequest** | [**AiThreadsOpenOrCreateRequest**](AiThreadsOpenOrCreateRequest.md) |  | 

### Return type

[**AiOpenOrCreateResult**](AiOpenOrCreateResult.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let aiThreadsOpenOrCreateRequest = aiThreadsOpenOrCreate_request(threadId: "threadId_example", profile: AiProfile(id: "id_example", name: "name_example", providerType: AiProviderType(), basedOn: AiBuiltinProviderType(), baseUrl: "baseUrl_example", key: "key_example", headers: "TODO", modelId: "modelId_example", reasoning: false, capabilities: 123, canUseTool: false, useResponsesApi: false, isCloudProvider: false, useProxy: false, createdAt: 123), profileId: "profileId_example", firstMessage: AiThreadMessageLike(id: "id_example", role: "role_example", content: AiThreadMessageLike_content(), createdAt: "createdAt_example", status: AiThreadMessageLike_status(type: "type_example"), metadata: 123, attachments: [123]), entityId: "entityId_example", entityMeta: aiThreadsOpenOrCreate_request_entityMeta(entityId: "entityId_example", entityTitle: "entityTitle_example")) // AiThreadsOpenOrCreateRequest | 

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
    open class func aiThreadsReadMessages(threadId: String, count: String? = nil, cursor: String? = nil, direction: String? = nil, completion: @escaping (_ data: [AiThreadMessageLike]?, _ error: Error?) -> Void)
```

Reads the messages of a thread, with the same cursor pagination as the thread list.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-read-messages/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **threadId** | **String** | The chat thread identifier. | 
 **count** | **String** | The maximum number of items to return in one page. | [optional] 
 **cursor** | **String** | The keyset pagination cursor: the JSON-encoded sort key of the last item already received. Omit for the first page. | [optional] 
 **direction** | **String** | The order the message page is read in. Only desc turns the read around and pages back from the newest message; omit for the forward read. | [optional] 

### Return type

[**[AiThreadMessageLike]**](AiThreadMessageLike.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let threadId = "threadId_example" // String | The chat thread identifier.
let count = "count_example" // String | The maximum number of items to return in one page. (optional)
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
    open class func aiThreadsRegenerateTitle(aiThreadsRegenerateTitleRequest: AiThreadsRegenerateTitleRequest, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

Generates a fresh title from the thread's first user message and persists it. Fails when the thread has no user message yet.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-regenerate-title/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiThreadsRegenerateTitleRequest** | [**AiThreadsRegenerateTitleRequest**](AiThreadsRegenerateTitleRequest.md) |  | 

### Return type

**String**

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let aiThreadsRegenerateTitleRequest = aiThreadsRegenerateTitle_request(threadId: "threadId_example", profile: AiProfile(id: "id_example", name: "name_example", providerType: AiProviderType(), basedOn: AiBuiltinProviderType(), baseUrl: "baseUrl_example", key: "key_example", headers: "TODO", modelId: "modelId_example", reasoning: false, capabilities: 123, canUseTool: false, useResponsesApi: false, isCloudProvider: false, useProxy: false, createdAt: 123), entityMeta: aiThreadsOpenOrCreate_request_entityMeta(entityId: "entityId_example", entityTitle: "entityTitle_example")) // AiThreadsRegenerateTitleRequest | 

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

Renames a chat thread and bumps its last-edit date so the new title shows up in the sidebar.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-rename/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiThreadsRenameRequest** | [**AiThreadsRenameRequest**](AiThreadsRenameRequest.md) |  | 

### Return type

[**AiSuccessResponse**](AiSuccessResponse.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let aiThreadsRenameRequest = aiThreadsRename_request(threadId: "threadId_example", title: "title_example") // AiThreadsRenameRequest | 

// Rename
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

Bumps a thread's last-edit date, and optionally rebinds it to another profile, when something other than a new message - a model switch, say - should resurface it.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-touch/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiThreadsTouchRequest** | [**AiThreadsTouchRequest**](AiThreadsTouchRequest.md) |  | 

### Return type

[**AiSuccessResponse**](AiSuccessResponse.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let aiThreadsTouchRequest = aiThreadsTouch_request(threadId: "threadId_example", profileId: "profileId_example") // AiThreadsTouchRequest | 

// Touch
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

Replaces the content of a chat message - used by the edit and regenerate flows that change a message outside the streaming lifecycle.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-update-message/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiThreadsUpdateMessageRequest** | [**AiThreadsUpdateMessageRequest**](AiThreadsUpdateMessageRequest.md) |  | 

### Return type

[**AiSuccessResponse**](AiSuccessResponse.md)

### Authorization

No authorization required

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

