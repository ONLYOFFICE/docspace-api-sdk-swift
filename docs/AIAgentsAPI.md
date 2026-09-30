# AIAgentsAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**aiAgentsCreate**](AIAgentsAPI.md#aiagentscreate) | **POST** /api/2.0/ai/agents | Create an agent
[**aiAgentsDelete**](AIAgentsAPI.md#aiagentsdelete) | **DELETE** /api/2.0/ai/agents/{id} | Delete an agent
[**aiAgentsGet**](AIAgentsAPI.md#aiagentsget) | **GET** /api/2.0/ai/agents/{id} | Get an agent
[**aiAgentsList**](AIAgentsAPI.md#aiagentslist) | **GET** /api/2.0/ai/agents | List agents
[**aiAgentsNews**](AIAgentsAPI.md#aiagentsnews) | **GET** /api/2.0/ai/agents/news | List agent news items
[**aiAgentsResetQuota**](AIAgentsAPI.md#aiagentsresetquota) | **PUT** /api/2.0/ai/agents/resetquota | Reset agents' quota
[**aiAgentsUpdate**](AIAgentsAPI.md#aiagentsupdate) | **PUT** /api/2.0/ai/agents/{id} | Update an agent
[**aiAgentsUpdateQuota**](AIAgentsAPI.md#aiagentsupdatequota) | **PUT** /api/2.0/ai/agents/agentquota | Update agents' quota


# **aiAgentsCreate**
```swift
    open class func aiAgentsCreate(aiAgentsCreateRequest: AiAgentsCreateRequest, completion: @escaping (_ data: AiFolderWrapper?, _ error: Error?) -> Void)
```

Creates an AI agent room and binds a model to it, in that order. `profileId` is required, has to be a UUID, has to name an existing profile, and that profile has to support chat - an image-only model is refused here rather than failing on every later request. `prompt` is required and is stored on the room as its standing instruction with any markup stripped, so it cannot round-trip HTML into another user's reply. The two steps are not atomic: when the room is created but the model binding fails, the call reports an error and the room is left behind, so re-bind it with `PUT api/2.0/ai/agents/{id}` rather than creating a second one.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-create/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiAgentsCreateRequest** | [**AiAgentsCreateRequest**](AiAgentsCreateRequest.md) |  | 

### Return type

[**AiFolderWrapper**](AiFolderWrapper.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let aiAgentsCreateRequest = aiAgentsCreate_request(profileId: "profileId_example", prompt: "prompt_example", _private: false, share: [123], attachDefaultTools: false, title: "title_example", quota: 123, indexing: false, denyDownload: false, lifetime: 123, watermark: 123, logo: 123, tags: ["tags_example"], color: "color_example", cover: "cover_example") // AiAgentsCreateRequest | 

// Create an agent
AIAgentsAPIApi.aiAgentsCreate(aiAgentsCreateRequest: aiAgentsCreateRequest) { (response, error) in
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

# **aiAgentsDelete**
```swift
    open class func aiAgentsDelete(id: String, aiAgentsDeleteRequest: AiAgentsDeleteRequest, completion: @escaping (_ data: AiFileOperationWrapper?, _ error: Error?) -> Void)
```

Deletes an AI agent room. The ID has to be the room's integer identifier, and the body is forwarded to the DocSpace AI service unchanged, so it accepts the same options as deleting an ordinary room - `deleteAfter` among them. Deletion is asynchronous there: the answer is a file-operation payload to poll, not a completed result. The agent's model binding is deliberately left behind, because the upstream assignment API has no per-entry delete, so an orphaned assignment row survives the room.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-delete/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | The agent identifier. | 
 **aiAgentsDeleteRequest** | [**AiAgentsDeleteRequest**](AiAgentsDeleteRequest.md) |  | 

### Return type

[**AiFileOperationWrapper**](AiFileOperationWrapper.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The agent identifier.
let aiAgentsDeleteRequest = aiAgentsDelete_request(deleteAfter: false) // AiAgentsDeleteRequest | 

// Delete an agent
AIAgentsAPIApi.aiAgentsDelete(id: id, aiAgentsDeleteRequest: aiAgentsDeleteRequest) { (response, error) in
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

# **aiAgentsGet**
```swift
    open class func aiAgentsGet(id: String, completion: @escaping (_ data: AiAgentsGet200Response?, _ error: Error?) -> Void)
```

Returns one AI agent room, enriched with the `profileId` currently bound to it so an edit form can prefill its model selector. The ID is the room's integer identifier, and a non-integer value is refused rather than passed on to fail opaquely upstream. The binding lives in an assignment rather than on the room, so it is looked up separately: a missing or unreadable assignment simply leaves `profileId` out of the answer instead of failing the call. The standing instruction comes back on the room as `chatSettings.prompt`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-get/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | The agent identifier. | 

### Return type

[**AiAgentsGet200Response**](AiAgentsGet200Response.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The agent identifier.

// Get an agent
AIAgentsAPIApi.aiAgentsGet(id: id) { (response, error) in
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

# **aiAgentsList**
```swift
    open class func aiAgentsList(subjectId: String? = nil, subjectOwnerId: String? = nil, excludeSubject: Bool? = nil, tags: String? = nil, withoutTags: Bool? = nil, quotaFilter: Int? = nil, filterValue: String? = nil, sortBy: String? = nil, sortOrder: String? = nil, startIndex: Int? = nil, count: Int? = nil, completion: @escaping (_ data: AiFolderContentWrapper?, _ error: Error?) -> Void)
```

Lists the portal's AI agent rooms. The query is forwarded unchanged to the DocSpace AI service, so it takes the same paging, sorting and filtering parameters as an ordinary room listing, and the answer is that service's folder-content payload rather than a shape of this API's own. Array and object query values are dropped rather than guessed at, so send flat strings. The profile bound to each agent is not included here - read one agent with `GET api/2.0/ai/agents/{id}` for that.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-list/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subjectId** | **String** | Show only the agent rooms this user takes part in. | [optional] 
 **subjectOwnerId** | **String** | Show only the agent rooms owned by this user. | [optional] 
 **excludeSubject** | **Bool** | Invert the user filter: leave out what `subjectId` selects instead of keeping it. | [optional] 
 **tags** | **String** | Show only the agent rooms carrying these tags, comma-separated. | [optional] 
 **withoutTags** | **Bool** | Show only the agent rooms that carry no tags at all. | [optional] 
 **quotaFilter** | **Int** | Filter by quota kind: 0 for all, 1 for the default quota, 2 for a custom one. | [optional] 
 **filterValue** | **String** | Show only the agent rooms whose title matches this text. | [optional] 
 **sortBy** | **String** | Field to sort by, for example `DateAndTime`. | [optional] 
 **sortOrder** | **String** | Sort direction, `ascending` or `descending`. | [optional] 
 **startIndex** | **Int** | Index of the first entry to return; 0 starts at the beginning. | [optional] 
 **count** | **Int** | How many entries to return. The internal service applies its own default. | [optional] 

### Return type

[**AiFolderContentWrapper**](AiFolderContentWrapper.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let subjectId = "subjectId_example" // String | Show only the agent rooms this user takes part in. (optional)
let subjectOwnerId = "subjectOwnerId_example" // String | Show only the agent rooms owned by this user. (optional)
let excludeSubject = false // Bool | Invert the user filter: leave out what `subjectId` selects instead of keeping it. (optional)
let tags = "tags_example" // String | Show only the agent rooms carrying these tags, comma-separated. (optional)
let withoutTags = false // Bool | Show only the agent rooms that carry no tags at all. (optional)
let quotaFilter = 987 // Int | Filter by quota kind: 0 for all, 1 for the default quota, 2 for a custom one. (optional)
let filterValue = "filterValue_example" // String | Show only the agent rooms whose title matches this text. (optional)
let sortBy = "sortBy_example" // String | Field to sort by, for example `DateAndTime`. (optional)
let sortOrder = "sortOrder_example" // String | Sort direction, `ascending` or `descending`. (optional)
let startIndex = 987 // Int | Index of the first entry to return; 0 starts at the beginning. (optional)
let count = 987 // Int | How many entries to return. The internal service applies its own default. (optional)

// List agents
AIAgentsAPIApi.aiAgentsList(subjectId: subjectId, subjectOwnerId: subjectOwnerId, excludeSubject: excludeSubject, tags: tags, withoutTags: withoutTags, quotaFilter: quotaFilter, filterValue: filterValue, sortBy: sortBy, sortOrder: sortOrder, startIndex: startIndex, count: count) { (response, error) in
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

# **aiAgentsNews**
```swift
    open class func aiAgentsNews(completion: @escaping (_ data: AiNewItemsAgentNewItemsArrayWrapper?, _ error: Error?) -> Void)
```

Lists the unread items across the caller's AI agent rooms, so a badge can be rendered without walking each room. It takes no parameters and is scoped to the caller by the DocSpace AI service. The answer is that service's new-items payload. This is a read-only operation and does not mark anything as seen.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-news/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**AiNewItemsAgentNewItemsArrayWrapper**](AiNewItemsAgentNewItemsArrayWrapper.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// List agent news items
AIAgentsAPIApi.aiAgentsNews() { (response, error) in
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

# **aiAgentsResetQuota**
```swift
    open class func aiAgentsResetQuota(aiAgentsResetQuotaRequest: AiAgentsResetQuotaRequest, completion: @escaping (_ data: AiFolderArrayWrapper?, _ error: Error?) -> Void)
```

Returns the listed AI agent rooms to the portal's default storage quota, forwarding `roomIds` to the DocSpace AI service unchanged. The answer is that service's payload, one updated room per entry. This is the counterpart of `PUT api/2.0/ai/agents/agentquota` and takes no quota value of its own. Rooms already on the default are unaffected.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-reset-quota/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiAgentsResetQuotaRequest** | [**AiAgentsResetQuotaRequest**](AiAgentsResetQuotaRequest.md) |  | 

### Return type

[**AiFolderArrayWrapper**](AiFolderArrayWrapper.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let aiAgentsResetQuotaRequest = aiAgentsResetQuota_request(roomIds: [aiAgentsUpdateQuota_request_roomIds_inner()]) // AiAgentsResetQuotaRequest | 

// Reset agents' quota
AIAgentsAPIApi.aiAgentsResetQuota(aiAgentsResetQuotaRequest: aiAgentsResetQuotaRequest) { (response, error) in
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

# **aiAgentsUpdate**
```swift
    open class func aiAgentsUpdate(id: String, aiAgentsUpdateRequest: AiAgentsUpdateRequest, completion: @escaping (_ data: AiFolderWrapper?, _ error: Error?) -> Void)
```

Changes an AI agent room - its title, tags or standing instruction - and optionally rebinds its model. The ID has to be the room's integer identifier. `profileId` is not part of the room contract: it is taken out of the forwarded body and applied afterwards as the agent's assignment, and it has to be a UUID naming an existing chat-capable profile. An instruction sent as `chatSettings.prompt` has its markup stripped, as on create; note that when `chatSettings` is present the upstream service still requires the rest of that object to be valid, so send it whole.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-update/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | The agent identifier. | 
 **aiAgentsUpdateRequest** | [**AiAgentsUpdateRequest**](AiAgentsUpdateRequest.md) |  | 

### Return type

[**AiFolderWrapper**](AiFolderWrapper.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The agent identifier.
let aiAgentsUpdateRequest = aiAgentsUpdate_request(profileId: "profileId_example", chatSettings: 123, sendFormToExternalDB: false, saveFormAsXLSX: false, title: "title_example", quota: 123, indexing: false, denyDownload: false, lifetime: 123, watermark: 123, logo: 123, tags: ["tags_example"], color: "color_example", cover: "cover_example") // AiAgentsUpdateRequest | 

// Update an agent
AIAgentsAPIApi.aiAgentsUpdate(id: id, aiAgentsUpdateRequest: aiAgentsUpdateRequest) { (response, error) in
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

# **aiAgentsUpdateQuota**
```swift
    open class func aiAgentsUpdateQuota(aiAgentsUpdateQuotaRequest: AiAgentsUpdateQuotaRequest, completion: @escaping (_ data: AiFolderArrayWrapper?, _ error: Error?) -> Void)
```

Sets the storage quota of the listed AI agent rooms in one call, forwarding `roomIds` and `quota` to the DocSpace AI service unchanged. The answer is that service's payload, one updated room per entry. A quota applies to the room's stored files, not to the model usage of its chats. Use `PUT api/2.0/ai/agents/resetquota` to return rooms to the portal default instead of naming a number.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-update-quota/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiAgentsUpdateQuotaRequest** | [**AiAgentsUpdateQuotaRequest**](AiAgentsUpdateQuotaRequest.md) |  | 

### Return type

[**AiFolderArrayWrapper**](AiFolderArrayWrapper.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let aiAgentsUpdateQuotaRequest = aiAgentsUpdateQuota_request(roomIds: [aiAgentsUpdateQuota_request_roomIds_inner()], quota: 123) // AiAgentsUpdateQuotaRequest | 

// Update agents' quota
AIAgentsAPIApi.aiAgentsUpdateQuota(aiAgentsUpdateQuotaRequest: aiAgentsUpdateQuotaRequest) { (response, error) in
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

