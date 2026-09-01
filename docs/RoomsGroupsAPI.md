# RoomsGroupsAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addRoomGroup**](RoomsGroupsAPI.md#addroomgroup) | **POST** /api/2.0/files/group | Add a new room group
[**changeRoomGroupIcon**](RoomsGroupsAPI.md#changeroomgroupicon) | **POST** /api/2.0/files/group/{id}/icon | Change group icon
[**deleteRoomGroup**](RoomsGroupsAPI.md#deleteroomgroup) | **DELETE** /api/2.0/files/group/{id} | Delete group
[**getRoomGroupInfo**](RoomsGroupsAPI.md#getroomgroupinfo) | **GET** /api/2.0/files/group/{id} | Get room group info
[**getRoomGroups**](RoomsGroupsAPI.md#getroomgroups) | **GET** /api/2.0/files/group | List room groups
[**updateRoomGroup**](RoomsGroupsAPI.md#updateroomgroup) | **PUT** /api/2.0/files/group/{id} | Update room group


# **addRoomGroup**
```swift
    open class func addRoomGroup(roomGroupRequestDto: RoomGroupRequestDto? = nil, completion: @escaping (_ data: RoomGroupWrapper?, _ error: Error?) -> Void)
```

Creates a new room group with the specified name, icon, and list of rooms.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/add-room-group/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **roomGroupRequestDto** | [**RoomGroupRequestDto**](RoomGroupRequestDto.md) |  | [optional] 

### Return type

[**RoomGroupWrapper**](RoomGroupWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let roomGroupRequestDto = RoomGroupRequestDto(name: "name_example", icon: "icon_example", rooms: [DuplicateRequestDto_allOf_fileIds()]) // RoomGroupRequestDto |  (optional)

// Add a new room group
RoomsGroupsAPIApi.addRoomGroup(roomGroupRequestDto: roomGroupRequestDto) { (response, error) in
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

# **changeRoomGroupIcon**
```swift
    open class func changeRoomGroupIcon(id: Int, iconRequest: IconRequest? = nil, completion: @escaping (_ data: RoomGroupWrapper?, _ error: Error?) -> Void)
```

Changes the icon of an existing room group.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/change-room-group-icon/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | Group id | 
 **iconRequest** | [**IconRequest**](IconRequest.md) | Icon update data. | [optional] 

### Return type

[**RoomGroupWrapper**](RoomGroupWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | Group id
let iconRequest = IconRequest(icon: "icon_example") // IconRequest | Icon update data. (optional)

// Change group icon
RoomsGroupsAPIApi.changeRoomGroupIcon(id: id, iconRequest: iconRequest) { (response, error) in
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

# **deleteRoomGroup**
```swift
    open class func deleteRoomGroup(id: Int, includeMembers: Bool? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Deletes the specified room group.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-room-group/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The group unique identifier. | 
 **includeMembers** | **Bool** | Whether to include group members. | [optional] 

### Return type

Void (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The group unique identifier.
let includeMembers = true // Bool | Whether to include group members. (optional)

// Delete group
RoomsGroupsAPIApi.deleteRoomGroup(id: id, includeMembers: includeMembers) { (response, error) in
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

# **getRoomGroupInfo**
```swift
    open class func getRoomGroupInfo(id: Int, includeMembers: Bool? = nil, completion: @escaping (_ data: RoomGroupWrapper?, _ error: Error?) -> Void)
```

Returns detailed information about a room group.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-group-info/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The group unique identifier. | 
 **includeMembers** | **Bool** | Whether to include group members. | [optional] 

### Return type

[**RoomGroupWrapper**](RoomGroupWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The group unique identifier.
let includeMembers = true // Bool | Whether to include group members. (optional)

// Get room group info
RoomsGroupsAPIApi.getRoomGroupInfo(id: id, includeMembers: includeMembers) { (response, error) in
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

# **getRoomGroups**
```swift
    open class func getRoomGroups(includeMembers: Bool? = nil, completion: @escaping (_ data: RoomGroupArrayWrapper?, _ error: Error?) -> Void)
```

Returns a list of all room groups for the current user.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-groups/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **includeMembers** | **Bool** | Whether to include group members. | [optional] 

### Return type

[**RoomGroupArrayWrapper**](RoomGroupArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let includeMembers = true // Bool | Whether to include group members. (optional)

// List room groups
RoomsGroupsAPIApi.getRoomGroups(includeMembers: includeMembers) { (response, error) in
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

# **updateRoomGroup**
```swift
    open class func updateRoomGroup(id: Int, updateRoomGroupRequest: UpdateRoomGroupRequest, completion: @escaping (_ data: RoomGroupWrapper?, _ error: Error?) -> Void)
```

Updates room group properties and adds or removes rooms.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-room-group/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The group ID. | 
 **updateRoomGroupRequest** | [**UpdateRoomGroupRequest**](UpdateRoomGroupRequest.md) | The request for updating a group. | 

### Return type

[**RoomGroupWrapper**](RoomGroupWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The group ID.
let updateRoomGroupRequest = UpdateRoomGroupRequest(roomsToAdd: [DuplicateRequestDto_allOf_fileIds()], roomsToRemove: [nil], groupName: "groupName_example") // UpdateRoomGroupRequest | The request for updating a group.

// Update room group
RoomsGroupsAPIApi.updateRoomGroup(id: id, updateRoomGroupRequest: updateRoomGroupRequest) { (response, error) in
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

