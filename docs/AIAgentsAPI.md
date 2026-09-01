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
    open class func aiAgentsCreate(aiAgentsCreateRequest: AiAgentsCreateRequest, completion: @escaping (_ data: AiFolderIntegerWrapper?, _ error: Error?) -> Void)
```

Creates an AI agent room in the .NET AI service and binds the supplied `profileId` to it as a `Chat` assignment. The instruction is stored on the room as a prompt-only chat setting; a failed binding is reported as an error even though the room already exists.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-create/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiAgentsCreateRequest** | [**AiAgentsCreateRequest**](AiAgentsCreateRequest.md) |  | 

### Return type

[**AiFolderIntegerWrapper**](AiFolderIntegerWrapper.md)

### Authorization

No authorization required

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

Deletes an AI agent room.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-delete/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | The agent identifier. | 
 **aiAgentsDeleteRequest** | [**AiAgentsDeleteRequest**](AiAgentsDeleteRequest.md) |  | 

### Return type

[**AiFileOperationWrapper**](AiFileOperationWrapper.md)

### Authorization

No authorization required

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
    open class func aiAgentsGet(id: String, completion: @escaping (_ data: AiFolderIntegerWrapper?, _ error: Error?) -> Void)
```

Returns one AI agent room, enriched with the `profileId` bound to it so an edit form can prefill the profile selector. A missing assignment simply leaves `profileId` out.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-get/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | The agent identifier. | 

### Return type

[**AiFolderIntegerWrapper**](AiFolderIntegerWrapper.md)

### Authorization

No authorization required

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
    open class func aiAgentsList(completion: @escaping (_ data: AiFolderContentIntegerWrapper?, _ error: Error?) -> Void)
```

Lists the portal's AI agent rooms. Query parameters are forwarded unchanged to the .NET AI service, which answers with its folder-content payload.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-list/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**AiFolderContentIntegerWrapper**](AiFolderContentIntegerWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// List agents
AIAgentsAPIApi.aiAgentsList() { (response, error) in
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

Lists the new items across the caller's AI agent rooms.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-news/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**AiNewItemsAgentNewItemsArrayWrapper**](AiNewItemsAgentNewItemsArrayWrapper.md)

### Authorization

No authorization required

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
    open class func aiAgentsResetQuota(aiAgentsResetQuotaRequest: AiAgentsResetQuotaRequest, completion: @escaping (_ data: AiFolderIntegerArrayWrapper?, _ error: Error?) -> Void)
```

Resets the storage quota of the given AI agent rooms.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-reset-quota/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiAgentsResetQuotaRequest** | [**AiAgentsResetQuotaRequest**](AiAgentsResetQuotaRequest.md) |  | 

### Return type

[**AiFolderIntegerArrayWrapper**](AiFolderIntegerArrayWrapper.md)

### Authorization

No authorization required

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
    open class func aiAgentsUpdate(id: String, aiAgentsUpdateRequest: AiAgentsUpdateRequest, completion: @escaping (_ data: AiFolderIntegerWrapper?, _ error: Error?) -> Void)
```

Updates an AI agent room - title, tags, instruction. `profileId` is not part of the room contract: it is stripped from the forwarded body and re-bound as the agent's assignment afterwards.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-update/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | The agent identifier. | 
 **aiAgentsUpdateRequest** | [**AiAgentsUpdateRequest**](AiAgentsUpdateRequest.md) |  | 

### Return type

[**AiFolderIntegerWrapper**](AiFolderIntegerWrapper.md)

### Authorization

No authorization required

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
    open class func aiAgentsUpdateQuota(aiAgentsUpdateQuotaRequest: AiAgentsUpdateQuotaRequest, completion: @escaping (_ data: AiFolderIntegerArrayWrapper?, _ error: Error?) -> Void)
```

Changes the storage quota of the given AI agent rooms.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-update-quota/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiAgentsUpdateQuotaRequest** | [**AiAgentsUpdateQuotaRequest**](AiAgentsUpdateQuotaRequest.md) |  | 

### Return type

[**AiFolderIntegerArrayWrapper**](AiFolderIntegerArrayWrapper.md)

### Authorization

No authorization required

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

