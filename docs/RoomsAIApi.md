# RoomsAIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getProjectModel**](RoomsAIApi.md#getprojectmodel) | **GET** /api/2.0/files/rooms/{id}/model | Get the AI project model
[**getProjectSources**](RoomsAIApi.md#getprojectsources) | **GET** /api/2.0/files/rooms/{id}/sources | Get the AI project sources
[**getRoomSkills**](RoomsAIApi.md#getroomskills) | **GET** /api/2.0/files/rooms/{id}/skills | Get the skills of an AI room
[**getRoomsSkills**](RoomsAIApi.md#getroomsskills) | **GET** /api/2.0/files/rooms/skills | Get the skills of Instructions rooms
[**linkProjectSources**](RoomsAIApi.md#linkprojectsources) | **POST** /api/2.0/files/rooms/{id}/sources | Link sources to an AI project
[**setProjectModel**](RoomsAIApi.md#setprojectmodel) | **PUT** /api/2.0/files/rooms/{id}/model | Set the AI project model
[**unlinkProjectSources**](RoomsAIApi.md#unlinkprojectsources) | **DELETE** /api/2.0/files/rooms/{id}/sources | Unlink sources from an AI project


# **getProjectModel**
```swift
    open class func getProjectModel(id: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiProjectModelWrapper
```

Returns the AI model selected for the chat of an AI project, as the ID of an AI model profile. Any project member with read access may call it. The call is read-only. The result holds only the project's own choice: `profileId` is null when nobody has selected a model for the project yet, or when the selected profile has been removed from the portal since. In both cases the portal-wide model is used instead, which this operation does not return. To change the model, use `PUT api/2.0/files/rooms/{id}/model`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-project-model/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The room to act on, named by the identifier that `GET api/2.0/files/rooms` reports for it. Rooms kept in the  portal itself use whole numbers, while a room backed by a connected third-party account uses the string form  of the same listing. | 

### Return type

[**AiProjectModelWrapper**](AiProjectModelWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The room to act on, named by the identifier that `GET api/2.0/files/rooms` reports for it. Rooms kept in the  portal itself use whole numbers, while a room backed by a connected third-party account uses the string form  of the same listing.

// Get the AI project model
do {
    let response = try await RoomsAIApi.getProjectModel(id: id)
    dump(response)
} catch {
    print(error)
}
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProjectSources**
```swift
    open class func getProjectSources(id: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiProjectSourcesWrapper
```

Returns the Instructions and Knowledge rooms linked to an AI project as its sources.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-project-sources/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The room to act on, named by the identifier that `GET api/2.0/files/rooms` reports for it. Rooms kept in the  portal itself use whole numbers, while a room backed by a connected third-party account uses the string form  of the same listing. | 

### Return type

[**AiProjectSourcesWrapper**](AiProjectSourcesWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The room to act on, named by the identifier that `GET api/2.0/files/rooms` reports for it. Rooms kept in the  portal itself use whole numbers, while a room backed by a connected third-party account uses the string form  of the same listing.

// Get the AI project sources
do {
    let response = try await RoomsAIApi.getProjectSources(id: id)
    dump(response)
} catch {
    print(error)
}
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRoomSkills**
```swift
    open class func getRoomSkills(id: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiSkillsWrapper
```

Returns the skills of an Instructions room, or of the Instructions rooms linked to an AI project.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-skills/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The room to act on, named by the identifier that `GET api/2.0/files/rooms` reports for it. Rooms kept in the  portal itself use whole numbers, while a room backed by a connected third-party account uses the string form  of the same listing. | 

### Return type

[**AiSkillsWrapper**](AiSkillsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The room to act on, named by the identifier that `GET api/2.0/files/rooms` reports for it. Rooms kept in the  portal itself use whole numbers, while a room backed by a connected third-party account uses the string form  of the same listing.

// Get the skills of an AI room
do {
    let response = try await RoomsAIApi.getRoomSkills(id: id)
    dump(response)
} catch {
    print(error)
}
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRoomsSkills**
```swift
    open class func getRoomsSkills(roomIds: Set<Int>? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiSkillsWrapper
```

Returns the skills of several Instructions rooms. Rooms the caller cannot read are left out.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-rooms-skills/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **roomIds** | [**Set&lt;Int&gt;**](Int.md) | IDs of the Instructions rooms, one `roomIds` query item per room; 1 to 20 items. | [optional] 

### Return type

[**AiSkillsWrapper**](AiSkillsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let roomIds = [123] // Set<Int> | IDs of the Instructions rooms, one `roomIds` query item per room; 1 to 20 items. (optional)

// Get the skills of Instructions rooms
do {
    let response = try await RoomsAIApi.getRoomsSkills(roomIds: roomIds)
    dump(response)
} catch {
    print(error)
}
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **linkProjectSources**
```swift
    open class func linkProjectSources(id: Int, linkAiProjectSourcesRequest: LinkAiProjectSourcesRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse)
```

Links Instructions and Knowledge rooms to an AI project as its sources, which gives every project member read access to them. The caller must manage the project and each listed room; rooms that are already linked are skipped.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/link-project-sources/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | ID of the project. | 
 **linkAiProjectSourcesRequest** | [**LinkAiProjectSourcesRequest**](LinkAiProjectSourcesRequest.md) | The rooms to link. | 

### Return type

Void (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | ID of the project.
let linkAiProjectSourcesRequest = LinkAiProjectSourcesRequest(roomIds: [123]) // LinkAiProjectSourcesRequest | The rooms to link.

// Link sources to an AI project
do {
    try await RoomsAIApi.linkProjectSources(id: id, linkAiProjectSourcesRequest: linkAiProjectSourcesRequest)
} catch {
    print(error)
}
```

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setProjectModel**
```swift
    open class func setProjectModel(id: Int, updateAiProjectModelRequest: UpdateAiProjectModelRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiProjectModelWrapper
```

Selects the AI model that answers in the chat of an AI project, replacing the previous choice, and returns the model now selected. Take `profileId` from the profiles that `GET api/2.0/ai/profiles/list` returns. The caller must be able to edit the project; reading it is not enough. The change applies to every member of the project, is recorded in the audit trail and notifies the project's open clients. Repeating the call with the same profile changes nothing. A model can only be replaced by another one: there is no operation that clears the selection and returns the project to the portal-wide model. The profile must exist on the portal and be able to chat; a profile known to serve only other kinds of tasks, such as image generation, is refused with 400.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-project-model/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | ID of the project. | 
 **updateAiProjectModelRequest** | [**UpdateAiProjectModelRequest**](UpdateAiProjectModelRequest.md) | The model to set. | 

### Return type

[**AiProjectModelWrapper**](AiProjectModelWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | ID of the project.
let updateAiProjectModelRequest = UpdateAiProjectModelRequest(profileId: 123) // UpdateAiProjectModelRequest | The model to set.

// Set the AI project model
do {
    let response = try await RoomsAIApi.setProjectModel(id: id, updateAiProjectModelRequest: updateAiProjectModelRequest)
    dump(response)
} catch {
    print(error)
}
```

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unlinkProjectSources**
```swift
    open class func unlinkProjectSources(id: Int, unlinkAiProjectSourcesRequest: UnlinkAiProjectSourcesRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse)
```

Unlinks Instructions and Knowledge rooms from an AI project; project members lose the access the link gave them. The caller must manage the project, rights on the rooms are not checked; the rooms themselves are not changed.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/unlink-project-sources/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | ID of the project. | 
 **unlinkAiProjectSourcesRequest** | [**UnlinkAiProjectSourcesRequest**](UnlinkAiProjectSourcesRequest.md) | The rooms to unlink. | 

### Return type

Void (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | ID of the project.
let unlinkAiProjectSourcesRequest = UnlinkAiProjectSourcesRequest(roomIds: [123]) // UnlinkAiProjectSourcesRequest | The rooms to unlink.

// Unlink sources from an AI project
do {
    try await RoomsAIApi.unlinkProjectSources(id: id, unlinkAiProjectSourcesRequest: unlinkAiProjectSourcesRequest)
} catch {
    print(error)
}
```

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

