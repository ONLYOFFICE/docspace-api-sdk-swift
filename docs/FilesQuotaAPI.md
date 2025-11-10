# FilesQuotaAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**resetRoomQuota**](FilesQuotaAPI.md#resetroomquota) | **PUT** /api/2.0/files/rooms/resetquota | 
[**updateRoomsQuota**](FilesQuotaAPI.md#updateroomsquota) | **PUT** /api/2.0/files/rooms/roomquota | 


# **resetRoomQuota**
```swift
    open class func resetRoomQuota(updateRoomsRoomIdsRequestDtoInteger: UpdateRoomsRoomIdsRequestDtoInteger? = nil, completion: @escaping (_ data: FolderIntegerArrayWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/reset-room-quota/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **updateRoomsRoomIdsRequestDtoInteger** | [**UpdateRoomsRoomIdsRequestDtoInteger**](UpdateRoomsRoomIdsRequestDtoInteger.md) |  | [optional] 

### Return type

[**FolderIntegerArrayWrapper**](FolderIntegerArrayWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let updateRoomsRoomIdsRequestDtoInteger = UpdateRoomsRoomIdsRequestDtoInteger(roomIds: [DuplicateRequestDto_allOf_fileIds()]) // UpdateRoomsRoomIdsRequestDtoInteger |  (optional)

FilesQuotaAPIApi.resetRoomQuota(updateRoomsRoomIdsRequestDtoInteger: updateRoomsRoomIdsRequestDtoInteger) { (response, error) in
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
    open class func updateRoomsQuota(updateRoomsQuotaRequestDtoInteger: UpdateRoomsQuotaRequestDtoInteger? = nil, completion: @escaping (_ data: FolderIntegerArrayWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-rooms-quota/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **updateRoomsQuotaRequestDtoInteger** | [**UpdateRoomsQuotaRequestDtoInteger**](UpdateRoomsQuotaRequestDtoInteger.md) |  | [optional] 

### Return type

[**FolderIntegerArrayWrapper**](FolderIntegerArrayWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let updateRoomsQuotaRequestDtoInteger = UpdateRoomsQuotaRequestDtoInteger(roomIds: [DuplicateRequestDto_allOf_fileIds()], quota: 123) // UpdateRoomsQuotaRequestDtoInteger |  (optional)

FilesQuotaAPIApi.updateRoomsQuota(updateRoomsQuotaRequestDtoInteger: updateRoomsQuotaRequestDtoInteger) { (response, error) in
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

