# AIContextApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**aiContextGetContextFolders**](AIContextApi.md#aicontextgetcontextfolders) | **GET** /api/2.0/ai/context/get-context-folders | Get context folders
[**aiContextGetKnowledgeFolders**](AIContextApi.md#aicontextgetknowledgefolders) | **GET** /api/2.0/ai/context/get-knowledge-folders | Get knowledge folders
[**aiContextGetRoomSkill**](AIContextApi.md#aicontextgetroomskill) | **GET** /api/2.0/ai/context/get-room-skill | Get room skill
[**aiContextGetRoomSkills**](AIContextApi.md#aicontextgetroomskills) | **GET** /api/2.0/ai/context/get-room-skills | Get room skills


# **aiContextGetContextFolders**
```swift
    open class func aiContextGetContextFolders(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> [AiContextFolder]
```

Lists the Instructions rooms the caller can connect to a chat as context, grouped under the account they belong to (`docspace` for this portal). Only a room the caller can read that holds at least one skill is listed: one without skills would connect nothing. An empty list means there is nothing to connect. At most 1000 Instructions rooms are read; any beyond them are left out without a signal. Read the skills of one room with `GET api/2.0/ai/context/get-room-skills`. This is a read-only operation.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-context-get-context-folders/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**[AiContextFolder]**](AiContextFolder.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get context folders
do {
    let response = try await AIContextApi.aiContextGetContextFolders()
    dump(response)
} catch {
    print(error)
}
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **aiContextGetKnowledgeFolders**
```swift
    open class func aiContextGetKnowledgeFolders(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> [AiContextFolder]
```

Lists the Knowledge rooms the caller can connect to a chat as its knowledge base, grouped under the account they belong to (`docspace` for this portal). A connected Knowledge room limits the knowledge search of a round to it (`actionArgs.knowledgeRooms`). An empty list means there is none the caller can read. At most 1000 Knowledge rooms are listed; any beyond them are left out without a signal. This is a read-only operation.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-context-get-knowledge-folders/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**[AiContextFolder]**](AiContextFolder.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get knowledge folders
do {
    let response = try await AIContextApi.aiContextGetKnowledgeFolders()
    dump(response)
} catch {
    print(error)
}
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **aiContextGetRoomSkill**
```swift
    open class func aiContextGetRoomSkill(roomId: String, skillId: String, cloud: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> String
```

Returns the Markdown file of one skill of an Instructions room as a JSON string. `roomId` and `skillId` are required, and the skill has to be one of that room's skills: the ID of any other file, readable or not, answers 404, as does a room that is not an Instructions room the caller can read. Only the first 256 KiB of the file are read, which covers the 64 K characters a chat passes to the model; a longer file comes back cut there without a signal. This is a read-only operation.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-context-get-room-skill/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **roomId** | **String** | The Instructions room identifier. | 
 **skillId** | **String** | The skill identifier, as `GET api/2.0/ai/context/get-room-skills` lists it. | 
 **cloud** | **String** | The account the room belongs to. Only `docspace`, this portal, exists, and the value is not read; omit it. | [optional] 

### Return type

**String**

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let roomId = "roomId_example" // String | The Instructions room identifier.
let skillId = "skillId_example" // String | The skill identifier, as `GET api/2.0/ai/context/get-room-skills` lists it.
let cloud = "cloud_example" // String | The account the room belongs to. Only `docspace`, this portal, exists, and the value is not read; omit it. (optional)

// Get room skill
do {
    let response = try await AIContextApi.aiContextGetRoomSkill(roomId: roomId, skillId: skillId, cloud: cloud)
    dump(response)
} catch {
    print(error)
}
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **aiContextGetRoomSkills**
```swift
    open class func aiContextGetRoomSkills(roomId: String, cloud: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> [AiRoomSkill]
```

Lists the skills of one Instructions room: the ID, name and description from the frontmatter of each skill file, not its body. `roomId` is required; `cloud` is accepted and not read. A room that is not an Instructions room the caller can read answers 404. Read the body of one skill with `GET api/2.0/ai/context/get-room-skill`. This is a read-only operation.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-context-get-room-skills/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **roomId** | **String** | The Instructions room identifier. | 
 **cloud** | **String** | The account the room belongs to. Only `docspace`, this portal, exists, and the value is not read; omit it. | [optional] 

### Return type

[**[AiRoomSkill]**](AiRoomSkill.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let roomId = "roomId_example" // String | The Instructions room identifier.
let cloud = "cloud_example" // String | The account the room belongs to. Only `docspace`, this portal, exists, and the value is not read; omit it. (optional)

// Get room skills
do {
    let response = try await AIContextApi.aiContextGetRoomSkills(roomId: roomId, cloud: cloud)
    dump(response)
} catch {
    print(error)
}
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

