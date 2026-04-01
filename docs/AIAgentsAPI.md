# AIAgentsAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAgent**](AIAgentsAPI.md#createagent) | **POST** /api/2.0/ai/agents | Create an ai agent
[**deleteAgent**](AIAgentsAPI.md#deleteagent) | **DELETE** /api/2.0/ai/agents/{id} | Remove an ai agent
[**getAgentInfo**](AIAgentsAPI.md#getagentinfo) | **GET** /api/2.0/ai/agents/{id} | Return an ai agent
[**getAgents**](AIAgentsAPI.md#getagents) | **GET** /api/2.0/ai/agents | Get ai agents
[**getAgentsNewItems**](AIAgentsAPI.md#getagentsnewitems) | **GET** /api/2.0/ai/agents/news | Get the room new items
[**resetAgentsQuota**](AIAgentsAPI.md#resetagentsquota) | **PUT** /api/2.0/ai/agents/resetquota | Reset the AI agents quota limit
[**updateAgent**](AIAgentsAPI.md#updateagent) | **PUT** /api/2.0/ai/agents/{id} | Update an ai agent
[**updateAgentsQuota**](AIAgentsAPI.md#updateagentsquota) | **PUT** /api/2.0/ai/agents/agentquota | Change the AI agent quota limit


# **createAgent**
```swift
    open class func createAgent(createAgentRequestDto: CreateAgentRequestDto? = nil, completion: @escaping (_ data: FolderIntegerWrapper?, _ error: Error?) -> Void)
```

Creates an ai agent.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-agent/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createAgentRequestDto** | [**CreateAgentRequestDto**](CreateAgentRequestDto.md) |  | [optional] 

### Return type

[**FolderIntegerWrapper**](FolderIntegerWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let createAgentRequestDto = CreateAgentRequestDto(title: "title_example", quota: 123, indexing: true, denyDownload: false, lifetime: RoomDataLifetimeDto(deletePermanently: true, period: RoomDataLifetimePeriod(), value: 123, enabled: true), watermark: WatermarkRequestDto(enabled: true, additions: WatermarkAdditions(), text: "text_example", rotate: 123, imageScale: 123, imageUrl: "imageUrl_example", imageHeight: 123, imageWidth: 123), logo: LogoRequest(tmpFile: "tmpFile_example", x: 123, y: 123, width: 123, height: 123), tags: ["tags_example"], color: "color_example", cover: "cover_example", _private: false, share: [FileShareParams(email: "email_example", shareTo: 123, access: FileShare())], chatSettings: ChatSettings(providerId: 123, modelId: "modelId_example", prompt: "prompt_example", _internal: false), attachDefaultTools: true) // CreateAgentRequestDto |  (optional)

// Create an ai agent
AIAgentsAPIApi.createAgent(createAgentRequestDto: createAgentRequestDto) { (response, error) in
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

# **deleteAgent**
```swift
    open class func deleteAgent(id: Int, deleteRoomRequest: DeleteRoomRequest, completion: @escaping (_ data: FileOperationWrapper?, _ error: Error?) -> Void)
```

Removes an ai agent.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-agent/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The room ID. | 
 **deleteRoomRequest** | [**DeleteRoomRequest**](DeleteRoomRequest.md) | The parameters for deleting a room. | 

### Return type

[**FileOperationWrapper**](FileOperationWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The room ID.
let deleteRoomRequest = DeleteRoomRequest(deleteAfter: false) // DeleteRoomRequest | The parameters for deleting a room.

// Remove an ai agent
AIAgentsAPIApi.deleteAgent(id: id, deleteRoomRequest: deleteRoomRequest) { (response, error) in
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

# **getAgentInfo**
```swift
    open class func getAgentInfo(id: Int, completion: @escaping (_ data: FolderIntegerWrapper?, _ error: Error?) -> Void)
```

Returns an ai agent.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-agent-info/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The room ID. | 

### Return type

[**FolderIntegerWrapper**](FolderIntegerWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The room ID.

// Return an ai agent
AIAgentsAPIApi.getAgentInfo(id: id) { (response, error) in
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

# **getAgents**
```swift
    open class func getAgents(subjectId: String? = nil, subjectOwnerId: String? = nil, withoutTags: Bool? = nil, tags: String? = nil, excludeSubject: Bool? = nil, subjectFilter: SubjectFilter? = nil, quotaFilter: QuotaFilter? = nil, count: Int? = nil, startIndex: Int? = nil, sortBy: String? = nil, sortOrder: SortOrder? = nil, filterValue: String? = nil, completion: @escaping (_ data: FolderContentIntegerWrapper?, _ error: Error?) -> Void)
```

Get ai agents

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-agents/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subjectId** | **String** | The filter by user ID. | [optional] 
 **subjectOwnerId** | **String** | The filter by room owner ID. | [optional] 
 **withoutTags** | **Bool** | Specifies whether to search by tags or not. | [optional] 
 **tags** | **String** | The tags in the serialized format. | [optional] 
 **excludeSubject** | **Bool** | Specifies whether to exclude search by user or group ID. | [optional] 
 **subjectFilter** | [**SubjectFilter**](.md) | The filter by user (Owner - 0, Member - 1). | [optional] 
 **quotaFilter** | [**QuotaFilter**](.md) | The filter by quota (All - 0, Default - 1, Custom - 2). | [optional] 
 **count** | **Int** | Specifies the maximum number of items to retrieve. | [optional] 
 **startIndex** | **Int** | The index from which to start retrieving the room content. | [optional] 
 **sortBy** | **String** | Specifies the field by which the room content should be sorted. | [optional] 
 **sortOrder** | [**SortOrder**](.md) | The order in which the results are sorted. | [optional] 
 **filterValue** | **String** | The text filter value used to refine search or query operations. | [optional] 

### Return type

[**FolderContentIntegerWrapper**](FolderContentIntegerWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let subjectId = "subjectId_example" // String | The filter by user ID. (optional)
let subjectOwnerId = "subjectOwnerId_example" // String | The filter by room owner ID. (optional)
let withoutTags = false // Bool | Specifies whether to search by tags or not. (optional)
let tags = "tags_example" // String | The tags in the serialized format. (optional)
let excludeSubject = false // Bool | Specifies whether to exclude search by user or group ID. (optional)
let subjectFilter = SubjectFilter() // SubjectFilter | The filter by user (Owner - 0, Member - 1). (optional)
let quotaFilter = QuotaFilter() // QuotaFilter | The filter by quota (All - 0, Default - 1, Custom - 2). (optional)
let count = 987 // Int | Specifies the maximum number of items to retrieve. (optional)
let startIndex = 987 // Int | The index from which to start retrieving the room content. (optional)
let sortBy = "sortBy_example" // String | Specifies the field by which the room content should be sorted. (optional)
let sortOrder = SortOrder() // SortOrder | The order in which the results are sorted. (optional)
let filterValue = "filterValue_example" // String | The text filter value used to refine search or query operations. (optional)

// Get ai agents
AIAgentsAPIApi.getAgents(subjectId: subjectId, subjectOwnerId: subjectOwnerId, withoutTags: withoutTags, tags: tags, excludeSubject: excludeSubject, subjectFilter: subjectFilter, quotaFilter: quotaFilter, count: count, startIndex: startIndex, sortBy: sortBy, sortOrder: sortOrder, filterValue: filterValue) { (response, error) in
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

# **getAgentsNewItems**
```swift
    open class func getAgentsNewItems(completion: @escaping (_ data: NewItemsAgentNewItemsArrayWrapper?, _ error: Error?) -> Void)
```

Returns the room new items.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-agents-new-items/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**NewItemsAgentNewItemsArrayWrapper**](NewItemsAgentNewItemsArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get the room new items
AIAgentsAPIApi.getAgentsNewItems() { (response, error) in
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

# **resetAgentsQuota**
```swift
    open class func resetAgentsQuota(updateRoomsRoomIdsRequestDtoInteger: UpdateRoomsRoomIdsRequestDtoInteger? = nil, completion: @escaping (_ data: FolderIntegerArrayWrapper?, _ error: Error?) -> Void)
```

Resets the quota limit for the AI agents with the IDs specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/reset-agents-quota/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **updateRoomsRoomIdsRequestDtoInteger** | [**UpdateRoomsRoomIdsRequestDtoInteger**](UpdateRoomsRoomIdsRequestDtoInteger.md) |  | [optional] 

### Return type

[**FolderIntegerArrayWrapper**](FolderIntegerArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let updateRoomsRoomIdsRequestDtoInteger = UpdateRoomsRoomIdsRequestDtoInteger(roomIds: [ContinueChatBody_files_inner()]) // UpdateRoomsRoomIdsRequestDtoInteger |  (optional)

// Reset the AI agents quota limit
AIAgentsAPIApi.resetAgentsQuota(updateRoomsRoomIdsRequestDtoInteger: updateRoomsRoomIdsRequestDtoInteger) { (response, error) in
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

# **updateAgent**
```swift
    open class func updateAgent(id: Int, updateRoomRequest: UpdateRoomRequest, completion: @escaping (_ data: FolderIntegerWrapper?, _ error: Error?) -> Void)
```

Updates an ai agent.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-agent/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The room ID. | 
 **updateRoomRequest** | [**UpdateRoomRequest**](UpdateRoomRequest.md) | The request parameters for updating a room. | 

### Return type

[**FolderIntegerWrapper**](FolderIntegerWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The room ID.
let updateRoomRequest = UpdateRoomRequest(title: "title_example", quota: 123, indexing: true, denyDownload: true, lifetime: RoomDataLifetimeDto(deletePermanently: true, period: RoomDataLifetimePeriod(), value: 123, enabled: true), watermark: WatermarkRequestDto(enabled: true, additions: WatermarkAdditions(), text: "text_example", rotate: 123, imageScale: 123, imageUrl: "imageUrl_example", imageHeight: 123, imageWidth: 123), logo: LogoRequest(tmpFile: "tmpFile_example", x: 123, y: 123, width: 123, height: 123), tags: ["tags_example"], color: "color_example", cover: "cover_example", chatSettings: ChatSettings(providerId: 123, modelId: "modelId_example", prompt: "prompt_example", _internal: false), sendFormToExternalDB: false, saveFormAsXLSX: false) // UpdateRoomRequest | The request parameters for updating a room.

// Update an ai agent
AIAgentsAPIApi.updateAgent(id: id, updateRoomRequest: updateRoomRequest) { (response, error) in
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

# **updateAgentsQuota**
```swift
    open class func updateAgentsQuota(updateRoomsQuotaRequestDtoInteger: UpdateRoomsQuotaRequestDtoInteger? = nil, completion: @escaping (_ data: FolderIntegerArrayWrapper?, _ error: Error?) -> Void)
```

Changes the quota limit for the AI agents with the IDs specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-agents-quota/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **updateRoomsQuotaRequestDtoInteger** | [**UpdateRoomsQuotaRequestDtoInteger**](UpdateRoomsQuotaRequestDtoInteger.md) |  | [optional] 

### Return type

[**FolderIntegerArrayWrapper**](FolderIntegerArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let updateRoomsQuotaRequestDtoInteger = UpdateRoomsQuotaRequestDtoInteger(roomIds: [ContinueChatBody_files_inner()], quota: 123) // UpdateRoomsQuotaRequestDtoInteger |  (optional)

// Change the AI agent quota limit
AIAgentsAPIApi.updateAgentsQuota(updateRoomsQuotaRequestDtoInteger: updateRoomsQuotaRequestDtoInteger) { (response, error) in
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

