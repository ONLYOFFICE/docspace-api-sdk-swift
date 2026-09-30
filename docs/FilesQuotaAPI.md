# FilesQuotaAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**resetRoomQuota**](FilesQuotaAPI.md#resetroomquota) | **PUT** /api/2.0/files/rooms/resetquota | Reset the room quota limit
[**updateRoomsQuota**](FilesQuotaAPI.md#updateroomsquota) | **PUT** /api/2.0/files/rooms/roomquota | Change the room quota limit


# **resetRoomQuota**
```swift
    open class func resetRoomQuota(updateRoomsRoomIdsRequestDto: UpdateRoomsRoomIdsRequestDto? = nil, completion: @escaping (_ data: FolderArrayWrapper?, _ error: Error?) -> Void)
```

Returns every listed room to the default room quota of the portal and streams the updated rooms back in the  order they were given. This is not the same as removing the limit: the room stops carrying its own value and  starts following the portal default, which a portal administrator can change at any time. The per-room quota  feature has to be on, the caller must be a manager of each listed room, and an archived room or a room in the  trash is refused. The list is not transactional, so rooms processed before a failing one keep the default and  the rest keep what they had. Only numeric room ids are processed, which means ids of rooms stored in a  connected third-party account are silently skipped. Use `PUT api/2.0/files/rooms/roomquota` to set an explicit  value, and a quota of -1 in `PUT api/2.0/files/rooms/{id}` to leave the room with no custom limit at all.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/reset-room-quota/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **updateRoomsRoomIdsRequestDto** | [**UpdateRoomsRoomIdsRequestDto**](UpdateRoomsRoomIdsRequestDto.md) |  | [optional] 

### Return type

[**FolderArrayWrapper**](FolderArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let updateRoomsRoomIdsRequestDto = UpdateRoomsRoomIdsRequestDto(roomIds: [DuplicateRequestDto_allOf_fileIds()]) // UpdateRoomsRoomIdsRequestDto |  (optional)

// Reset the room quota limit
FilesQuotaAPIApi.resetRoomQuota(updateRoomsRoomIdsRequestDto: updateRoomsRoomIdsRequestDto) { (response, error) in
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

# **updateRoomsQuota**
```swift
    open class func updateRoomsQuota(updateRoomsQuotaRequestDto: UpdateRoomsQuotaRequestDto? = nil, completion: @escaping (_ data: FolderArrayWrapper?, _ error: Error?) -> Void)
```

Sets the same custom storage limit, in bytes, on every listed room and streams the updated rooms back in the  order they were given. The per-room quota feature has to be on for the portal, and the value must stay within  the portal own limit, otherwise the call is refused before anything is written. The caller must be a manager  of each listed room, and an archived room or a room in the trash is refused. The list is not transactional:  rooms processed before the offending one keep their new limit, so a failed call has to be checked room by  room. Only numeric room ids are processed, which means ids of rooms stored in a connected third-party account  are silently skipped. A room whose limit already equals the requested value is left untouched and still  returned. To go back to the portal default use `PUT api/2.0/files/rooms/resetquota`, and to drop the custom  limit entirely send a quota of -1 to `PUT api/2.0/files/rooms/{id}`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-rooms-quota/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **updateRoomsQuotaRequestDto** | [**UpdateRoomsQuotaRequestDto**](UpdateRoomsQuotaRequestDto.md) |  | [optional] 

### Return type

[**FolderArrayWrapper**](FolderArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let updateRoomsQuotaRequestDto = UpdateRoomsQuotaRequestDto(roomIds: [DuplicateRequestDto_allOf_fileIds()], quota: 123) // UpdateRoomsQuotaRequestDto |  (optional)

// Change the room quota limit
FilesQuotaAPIApi.updateRoomsQuota(updateRoomsQuotaRequestDto: updateRoomsQuotaRequestDto) { (response, error) in
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

