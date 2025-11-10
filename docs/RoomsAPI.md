# RoomsAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addRoomTags**](RoomsAPI.md#addroomtags) | **PUT** /api/2.0/files/rooms/{id}/tags | 
[**archiveRoom**](RoomsAPI.md#archiveroom) | **PUT** /api/2.0/files/rooms/{id}/archive | 
[**changeRoomCover**](RoomsAPI.md#changeroomcover) | **POST** /api/2.0/files/rooms/{id}/cover | 
[**createRoom**](RoomsAPI.md#createroom) | **POST** /api/2.0/files/rooms | 
[**createRoomFromTemplate**](RoomsAPI.md#createroomfromtemplate) | **POST** /api/2.0/files/rooms/fromtemplate | 
[**createRoomLogo**](RoomsAPI.md#createroomlogo) | **POST** /api/2.0/files/rooms/{id}/logo | 
[**createRoomTag**](RoomsAPI.md#createroomtag) | **POST** /api/2.0/files/tags | 
[**createRoomTemplate**](RoomsAPI.md#createroomtemplate) | **POST** /api/2.0/files/roomtemplate | 
[**createRoomThirdParty**](RoomsAPI.md#createroomthirdparty) | **POST** /api/2.0/files/rooms/thirdparty/{id} | 
[**deleteCustomTags**](RoomsAPI.md#deletecustomtags) | **DELETE** /api/2.0/files/tags | 
[**deleteRoom**](RoomsAPI.md#deleteroom) | **DELETE** /api/2.0/files/rooms/{id} | 
[**deleteRoomLogo**](RoomsAPI.md#deleteroomlogo) | **DELETE** /api/2.0/files/rooms/{id}/logo | 
[**deleteRoomTags**](RoomsAPI.md#deleteroomtags) | **DELETE** /api/2.0/files/rooms/{id}/tags | 
[**getNewRoomItems**](RoomsAPI.md#getnewroomitems) | **GET** /api/2.0/files/rooms/{id}/news | 
[**getPublicSettings**](RoomsAPI.md#getpublicsettings) | **GET** /api/2.0/files/roomtemplate/{id}/public | 
[**getRoomCovers**](RoomsAPI.md#getroomcovers) | **GET** /api/2.0/files/rooms/covers | 
[**getRoomCreatingStatus**](RoomsAPI.md#getroomcreatingstatus) | **GET** /api/2.0/files/rooms/fromtemplate/status | 
[**getRoomIndexExport**](RoomsAPI.md#getroomindexexport) | **GET** /api/2.0/files/rooms/indexexport | 
[**getRoomInfo**](RoomsAPI.md#getroominfo) | **GET** /api/2.0/files/rooms/{id} | 
[**getRoomLinks**](RoomsAPI.md#getroomlinks) | **GET** /api/2.0/files/rooms/{id}/links | 
[**getRoomSecurityInfo**](RoomsAPI.md#getroomsecurityinfo) | **GET** /api/2.0/files/rooms/{id}/share | 
[**getRoomTagsInfo**](RoomsAPI.md#getroomtagsinfo) | **GET** /api/2.0/files/tags | 
[**getRoomTemplateCreatingStatus**](RoomsAPI.md#getroomtemplatecreatingstatus) | **GET** /api/2.0/files/roomtemplate/status | 
[**getRoomsFolder**](RoomsAPI.md#getroomsfolder) | **GET** /api/2.0/files/rooms | 
[**getRoomsNewItems**](RoomsAPI.md#getroomsnewitems) | **GET** /api/2.0/files/rooms/news | 
[**getRoomsPrimaryExternalLink**](RoomsAPI.md#getroomsprimaryexternallink) | **GET** /api/2.0/files/rooms/{id}/link | 
[**pinRoom**](RoomsAPI.md#pinroom) | **PUT** /api/2.0/files/rooms/{id}/pin | 
[**reorderRoom**](RoomsAPI.md#reorderroom) | **PUT** /api/2.0/files/rooms/{id}/reorder | 
[**resendEmailInvitations**](RoomsAPI.md#resendemailinvitations) | **POST** /api/2.0/files/rooms/{id}/resend | 
[**setPublicSettings**](RoomsAPI.md#setpublicsettings) | **PUT** /api/2.0/files/roomtemplate/public | 
[**setRoomLink**](RoomsAPI.md#setroomlink) | **PUT** /api/2.0/files/rooms/{id}/links | 
[**setRoomSecurity**](RoomsAPI.md#setroomsecurity) | **PUT** /api/2.0/files/rooms/{id}/share | 
[**startRoomIndexExport**](RoomsAPI.md#startroomindexexport) | **POST** /api/2.0/files/rooms/{id}/indexexport | 
[**terminateRoomIndexExport**](RoomsAPI.md#terminateroomindexexport) | **DELETE** /api/2.0/files/rooms/indexexport | 
[**unarchiveRoom**](RoomsAPI.md#unarchiveroom) | **PUT** /api/2.0/files/rooms/{id}/unarchive | 
[**unpinRoom**](RoomsAPI.md#unpinroom) | **PUT** /api/2.0/files/rooms/{id}/unpin | 
[**updateRoom**](RoomsAPI.md#updateroom) | **PUT** /api/2.0/files/rooms/{id} | 
[**uploadRoomLogo**](RoomsAPI.md#uploadroomlogo) | **POST** /api/2.0/files/logos | 


# **addRoomTags**
```swift
    open class func addRoomTags(id: Int, batchTagsRequestDto: BatchTagsRequestDto? = nil, completion: @escaping (_ data: FolderIntegerWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/add-room-tags/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The room Id. | 
 **batchTagsRequestDto** | [**BatchTagsRequestDto**](BatchTagsRequestDto.md) | The parameters for managing tags. | [optional] 

### Return type

[**FolderIntegerWrapper**](FolderIntegerWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The room Id.
let batchTagsRequestDto = BatchTagsRequestDto(names: ["names_example"]) // BatchTagsRequestDto | The parameters for managing tags. (optional)

RoomsAPIApi.addRoomTags(id: id, batchTagsRequestDto: batchTagsRequestDto) { (response, error) in
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

# **archiveRoom**
```swift
    open class func archiveRoom(id: Int, archiveRoomRequest: ArchiveRoomRequest? = nil, completion: @escaping (_ data: FileOperationWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/archive-room/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The room ID. | 
 **archiveRoomRequest** | [**ArchiveRoomRequest**](ArchiveRoomRequest.md) | The parameters for archiving a room. | [optional] 

### Return type

[**FileOperationWrapper**](FileOperationWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The room ID.
let archiveRoomRequest = ArchiveRoomRequest(deleteAfter: true) // ArchiveRoomRequest | The parameters for archiving a room. (optional)

RoomsAPIApi.archiveRoom(id: id, archiveRoomRequest: archiveRoomRequest) { (response, error) in
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

# **changeRoomCover**
```swift
    open class func changeRoomCover(id: Int, coverRequestDto: CoverRequestDto, completion: @escaping (_ data: FolderIntegerWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/change-room-cover/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The room ID. | 
 **coverRequestDto** | [**CoverRequestDto**](CoverRequestDto.md) | The request parameters to change the room cover. | 

### Return type

[**FolderIntegerWrapper**](FolderIntegerWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The room ID.
let coverRequestDto = CoverRequestDto(color: "color_example", cover: "cover_example") // CoverRequestDto | The request parameters to change the room cover.

RoomsAPIApi.changeRoomCover(id: id, coverRequestDto: coverRequestDto) { (response, error) in
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

# **createRoom**
```swift
    open class func createRoom(createRoomRequestDto: CreateRoomRequestDto? = nil, completion: @escaping (_ data: FolderIntegerWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-room/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createRoomRequestDto** | [**CreateRoomRequestDto**](CreateRoomRequestDto.md) |  | [optional] 

### Return type

[**FolderIntegerWrapper**](FolderIntegerWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let createRoomRequestDto = CreateRoomRequestDto(title: "title_example", quota: 123, indexing: true, denyDownload: true, lifetime: RoomDataLifetimeDto(deletePermanently: true, period: RoomDataLifetimePeriod(), value: 123, enabled: true), watermark: WatermarkRequestDto(enabled: true, additions: WatermarkAdditions(), text: "text_example", rotate: 123, imageScale: 123, imageUrl: "imageUrl_example", imageHeight: 123, imageWidth: 123), logo: LogoRequest(tmpFile: "tmpFile_example", x: 123, y: 123, width: 123, height: 123), tags: ["tags_example"], color: "color_example", cover: "cover_example", roomType: RoomType(), _private: true, share: [FileShareParams(shareTo: 123, email: "email_example", access: FileShare())], chatSettings: ChatSettings(providerId: 123, modelId: "modelId_example", prompt: "prompt_example")) // CreateRoomRequestDto |  (optional)

RoomsAPIApi.createRoom(createRoomRequestDto: createRoomRequestDto) { (response, error) in
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

# **createRoomFromTemplate**
```swift
    open class func createRoomFromTemplate(createRoomFromTemplateDto: CreateRoomFromTemplateDto? = nil, completion: @escaping (_ data: RoomFromTemplateStatusWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-room-from-template/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createRoomFromTemplateDto** | [**CreateRoomFromTemplateDto**](CreateRoomFromTemplateDto.md) |  | [optional] 

### Return type

[**RoomFromTemplateStatusWrapper**](RoomFromTemplateStatusWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let createRoomFromTemplateDto = CreateRoomFromTemplateDto(templateId: 123, title: "title_example", logo: LogoRequest(tmpFile: "tmpFile_example", x: 123, y: 123, width: 123, height: 123), copyLogo: true, tags: ["tags_example"], color: "color_example", cover: "cover_example", quota: 123, indexing: true, denyDownload: true, lifetime: RoomDataLifetimeDto(deletePermanently: true, period: RoomDataLifetimePeriod(), value: 123, enabled: true), watermark: WatermarkRequestDto(enabled: true, additions: WatermarkAdditions(), text: "text_example", rotate: 123, imageScale: 123, imageUrl: "imageUrl_example", imageHeight: 123, imageWidth: 123), _private: true) // CreateRoomFromTemplateDto |  (optional)

RoomsAPIApi.createRoomFromTemplate(createRoomFromTemplateDto: createRoomFromTemplateDto) { (response, error) in
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

# **createRoomLogo**
```swift
    open class func createRoomLogo(id: Int, logoRequest: LogoRequest, completion: @escaping (_ data: FolderIntegerWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-room-logo/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The room ID. | 
 **logoRequest** | [**LogoRequest**](LogoRequest.md) | The logo request parameters. | 

### Return type

[**FolderIntegerWrapper**](FolderIntegerWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The room ID.
let logoRequest = LogoRequest(tmpFile: "tmpFile_example", x: 123, y: 123, width: 123, height: 123) // LogoRequest | The logo request parameters.

RoomsAPIApi.createRoomLogo(id: id, logoRequest: logoRequest) { (response, error) in
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

# **createRoomTag**
```swift
    open class func createRoomTag(createTagRequestDto: CreateTagRequestDto? = nil, completion: @escaping (_ data: ObjectWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-room-tag/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createTagRequestDto** | [**CreateTagRequestDto**](CreateTagRequestDto.md) |  | [optional] 

### Return type

[**ObjectWrapper**](ObjectWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let createTagRequestDto = CreateTagRequestDto(name: "name_example") // CreateTagRequestDto |  (optional)

RoomsAPIApi.createRoomTag(createTagRequestDto: createTagRequestDto) { (response, error) in
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

# **createRoomTemplate**
```swift
    open class func createRoomTemplate(roomTemplateDto: RoomTemplateDto? = nil, completion: @escaping (_ data: RoomTemplateStatusWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-room-template/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **roomTemplateDto** | [**RoomTemplateDto**](RoomTemplateDto.md) |  | [optional] 

### Return type

[**RoomTemplateStatusWrapper**](RoomTemplateStatusWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let roomTemplateDto = RoomTemplateDto(roomId: 123, title: "title_example", logo: LogoRequest(tmpFile: "tmpFile_example", x: 123, y: 123, width: 123, height: 123), copyLogo: true, share: ["share_example"], groups: [123], _public: true, tags: ["tags_example"], color: "color_example", cover: "cover_example", quota: 123) // RoomTemplateDto |  (optional)

RoomsAPIApi.createRoomTemplate(roomTemplateDto: roomTemplateDto) { (response, error) in
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

# **createRoomThirdParty**
```swift
    open class func createRoomThirdParty(id: String, createThirdPartyRoom: CreateThirdPartyRoom, completion: @escaping (_ data: FolderStringWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-room-third-party/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | The ID of the folder in the third-party storage in which the contents of the room will be stored. | 
 **createThirdPartyRoom** | [**CreateThirdPartyRoom**](CreateThirdPartyRoom.md) | The third-party room information. | 

### Return type

[**FolderStringWrapper**](FolderStringWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the folder in the third-party storage in which the contents of the room will be stored.
let createThirdPartyRoom = CreateThirdPartyRoom(createAsNewFolder: true, title: "title_example", roomType: RoomType(), _private: true, indexing: true, denyDownload: true, color: "color_example", cover: "cover_example", tags: ["tags_example"], logo: LogoRequest(tmpFile: "tmpFile_example", x: 123, y: 123, width: 123, height: 123)) // CreateThirdPartyRoom | The third-party room information.

RoomsAPIApi.createRoomThirdParty(id: id, createThirdPartyRoom: createThirdPartyRoom) { (response, error) in
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

# **deleteCustomTags**
```swift
    open class func deleteCustomTags(batchTagsRequestDto: BatchTagsRequestDto? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-custom-tags/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batchTagsRequestDto** | [**BatchTagsRequestDto**](BatchTagsRequestDto.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let batchTagsRequestDto = BatchTagsRequestDto(names: ["names_example"]) // BatchTagsRequestDto |  (optional)

RoomsAPIApi.deleteCustomTags(batchTagsRequestDto: batchTagsRequestDto) { (response, error) in
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
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteRoom**
```swift
    open class func deleteRoom(id: Int, deleteRoomRequest: DeleteRoomRequest, completion: @escaping (_ data: FileOperationWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-room/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The room ID. | 
 **deleteRoomRequest** | [**DeleteRoomRequest**](DeleteRoomRequest.md) | The parameters for deleting a room. | 

### Return type

[**FileOperationWrapper**](FileOperationWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The room ID.
let deleteRoomRequest = DeleteRoomRequest(deleteAfter: true) // DeleteRoomRequest | The parameters for deleting a room.

RoomsAPIApi.deleteRoom(id: id, deleteRoomRequest: deleteRoomRequest) { (response, error) in
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

# **deleteRoomLogo**
```swift
    open class func deleteRoomLogo(id: Int, completion: @escaping (_ data: FolderIntegerWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-room-logo/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The room ID. | 

### Return type

[**FolderIntegerWrapper**](FolderIntegerWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The room ID.

RoomsAPIApi.deleteRoomLogo(id: id) { (response, error) in
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

# **deleteRoomTags**
```swift
    open class func deleteRoomTags(id: Int, batchTagsRequestDto: BatchTagsRequestDto? = nil, completion: @escaping (_ data: FolderIntegerWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-room-tags/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The room Id. | 
 **batchTagsRequestDto** | [**BatchTagsRequestDto**](BatchTagsRequestDto.md) | The parameters for managing tags. | [optional] 

### Return type

[**FolderIntegerWrapper**](FolderIntegerWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The room Id.
let batchTagsRequestDto = BatchTagsRequestDto(names: ["names_example"]) // BatchTagsRequestDto | The parameters for managing tags. (optional)

RoomsAPIApi.deleteRoomTags(id: id, batchTagsRequestDto: batchTagsRequestDto) { (response, error) in
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

# **getNewRoomItems**
```swift
    open class func getNewRoomItems(id: Int, completion: @escaping (_ data: NewItemsFileEntryBaseArrayWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-new-room-items/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The room ID. | 

### Return type

[**NewItemsFileEntryBaseArrayWrapper**](NewItemsFileEntryBaseArrayWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The room ID.

RoomsAPIApi.getNewRoomItems(id: id) { (response, error) in
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

# **getPublicSettings**
```swift
    open class func getPublicSettings(id: Int, completion: @escaping (_ data: BooleanWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-public-settings/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The room template ID. | 

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The room template ID.

RoomsAPIApi.getPublicSettings(id: id) { (response, error) in
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

# **getRoomCovers**
```swift
    open class func getRoomCovers(completion: @escaping (_ data: CoversResultArrayWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-covers/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**CoversResultArrayWrapper**](CoversResultArrayWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


RoomsAPIApi.getRoomCovers() { (response, error) in
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

# **getRoomCreatingStatus**
```swift
    open class func getRoomCreatingStatus(completion: @escaping (_ data: RoomFromTemplateStatusWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-creating-status/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**RoomFromTemplateStatusWrapper**](RoomFromTemplateStatusWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


RoomsAPIApi.getRoomCreatingStatus() { (response, error) in
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

# **getRoomIndexExport**
```swift
    open class func getRoomIndexExport(completion: @escaping (_ data: DocumentBuilderTaskWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-index-export/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**DocumentBuilderTaskWrapper**](DocumentBuilderTaskWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


RoomsAPIApi.getRoomIndexExport() { (response, error) in
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

# **getRoomInfo**
```swift
    open class func getRoomInfo(id: Int, completion: @escaping (_ data: FolderIntegerWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-info/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The room ID. | 

### Return type

[**FolderIntegerWrapper**](FolderIntegerWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The room ID.

RoomsAPIApi.getRoomInfo(id: id) { (response, error) in
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

# **getRoomLinks**
```swift
    open class func getRoomLinks(id: Int, type: LinkType? = nil, completion: @escaping (_ data: FileShareArrayWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-links/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The room ID. | 
 **type** | [**LinkType**](.md) | The link type. | [optional] 

### Return type

[**FileShareArrayWrapper**](FileShareArrayWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The room ID.
let type = LinkType() // LinkType | The link type. (optional)

RoomsAPIApi.getRoomLinks(id: id, type: type) { (response, error) in
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

# **getRoomSecurityInfo**
```swift
    open class func getRoomSecurityInfo(id: Int, filterType: ShareFilterType? = nil, count: Int? = nil, startIndex: Int? = nil, filterValue: String? = nil, completion: @escaping (_ data: FileShareArrayWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-security-info/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The room ID. | 
 **filterType** | [**ShareFilterType**](.md) | The filter type of the access rights. | [optional] 
 **count** | **Int** | The number of items to be retrieved or processed. | [optional] 
 **startIndex** | **Int** | The starting index of the items to retrieve in a paginated request. | [optional] 
 **filterValue** | **String** | The text filter value used for filtering room security information. | [optional] 

### Return type

[**FileShareArrayWrapper**](FileShareArrayWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The room ID.
let filterType = ShareFilterType() // ShareFilterType | The filter type of the access rights. (optional)
let count = 987 // Int | The number of items to be retrieved or processed. (optional)
let startIndex = 987 // Int | The starting index of the items to retrieve in a paginated request. (optional)
let filterValue = "filterValue_example" // String | The text filter value used for filtering room security information. (optional)

RoomsAPIApi.getRoomSecurityInfo(id: id, filterType: filterType, count: count, startIndex: startIndex, filterValue: filterValue) { (response, error) in
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

# **getRoomTagsInfo**
```swift
    open class func getRoomTagsInfo(count: Int? = nil, startIndex: Int? = nil, filterValue: String? = nil, completion: @escaping (_ data: ObjectArrayWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-tags-info/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **count** | **Int** | Gets or sets the number of tag results to retrieve.  This property specifies the maximum amount of tag data to be included in the result set. | [optional] 
 **startIndex** | **Int** | Represents the starting index from which the tags&#39; information will be retrieved.  This property is used to define the offset for pagination when retrieving a list of tags. It determines  the point in the data set from which the retrieval begins. | [optional] 
 **filterValue** | **String** | Gets or sets the text value used for searching tags.  This property is typically used as a filter value when retrieving tag information. | [optional] 

### Return type

[**ObjectArrayWrapper**](ObjectArrayWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let count = 987 // Int | Gets or sets the number of tag results to retrieve.  This property specifies the maximum amount of tag data to be included in the result set. (optional)
let startIndex = 987 // Int | Represents the starting index from which the tags' information will be retrieved.  This property is used to define the offset for pagination when retrieving a list of tags. It determines  the point in the data set from which the retrieval begins. (optional)
let filterValue = "filterValue_example" // String | Gets or sets the text value used for searching tags.  This property is typically used as a filter value when retrieving tag information. (optional)

RoomsAPIApi.getRoomTagsInfo(count: count, startIndex: startIndex, filterValue: filterValue) { (response, error) in
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

# **getRoomTemplateCreatingStatus**
```swift
    open class func getRoomTemplateCreatingStatus(completion: @escaping (_ data: RoomTemplateStatusWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-template-creating-status/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**RoomTemplateStatusWrapper**](RoomTemplateStatusWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


RoomsAPIApi.getRoomTemplateCreatingStatus() { (response, error) in
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

# **getRoomsFolder**
```swift
    open class func getRoomsFolder(type: [RoomType]? = nil, subjectId: String? = nil, searchArea: SearchArea? = nil, withoutTags: Bool? = nil, tags: String? = nil, excludeSubject: Bool? = nil, provider: ProviderFilter? = nil, subjectFilter: SubjectFilter? = nil, quotaFilter: QuotaFilter? = nil, storageFilter: StorageFilter? = nil, count: Int? = nil, startIndex: Int? = nil, sortBy: String? = nil, sortOrder: SortOrder? = nil, filterValue: String? = nil, completion: @escaping (_ data: FolderContentIntegerWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-rooms-folder/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | [**[RoomType]**](RoomType.md) | The filter by room type. | [optional] 
 **subjectId** | **String** | The filter by user ID. | [optional] 
 **searchArea** | [**SearchArea**](.md) | The room search area (Active, Archive, Any, Recent by links). | [optional] 
 **withoutTags** | **Bool** | Specifies whether to search by tags or not. | [optional] 
 **tags** | **String** | The tags in the serialized format. | [optional] 
 **excludeSubject** | **Bool** | Specifies whether to exclude search by user or group ID. | [optional] 
 **provider** | [**ProviderFilter**](.md) | The filter by provider name (None, Box, DropBox, GoogleDrive, kDrive, OneDrive, SharePoint, WebDav, Yandex, Storage). | [optional] 
 **subjectFilter** | [**SubjectFilter**](.md) | The filter by user (Owner - 0, Member - 1). | [optional] 
 **quotaFilter** | [**QuotaFilter**](.md) | The filter by quota (All - 0, Default - 1, Custom - 2). | [optional] 
 **storageFilter** | [**StorageFilter**](.md) | The filter by storage (None - 0, Internal - 1, ThirdParty - 2). | [optional] 
 **count** | **Int** | Specifies the maximum number of items to retrieve. | [optional] 
 **startIndex** | **Int** | The index from which to start retrieving the room content. | [optional] 
 **sortBy** | **String** | Specifies the field by which the room content should be sorted. | [optional] 
 **sortOrder** | [**SortOrder**](.md) | The order in which the results are sorted. | [optional] 
 **filterValue** | **String** | The text filter value used to refine search or query operations. | [optional] 

### Return type

[**FolderContentIntegerWrapper**](FolderContentIntegerWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let type = [[RoomType()]] // [RoomType] | The filter by room type. (optional)
let subjectId = "subjectId_example" // String | The filter by user ID. (optional)
let searchArea = SearchArea() // SearchArea | The room search area (Active, Archive, Any, Recent by links). (optional)
let withoutTags = true // Bool | Specifies whether to search by tags or not. (optional)
let tags = "tags_example" // String | The tags in the serialized format. (optional)
let excludeSubject = true // Bool | Specifies whether to exclude search by user or group ID. (optional)
let provider = ProviderFilter() // ProviderFilter | The filter by provider name (None, Box, DropBox, GoogleDrive, kDrive, OneDrive, SharePoint, WebDav, Yandex, Storage). (optional)
let subjectFilter = SubjectFilter() // SubjectFilter | The filter by user (Owner - 0, Member - 1). (optional)
let quotaFilter = QuotaFilter() // QuotaFilter | The filter by quota (All - 0, Default - 1, Custom - 2). (optional)
let storageFilter = StorageFilter() // StorageFilter | The filter by storage (None - 0, Internal - 1, ThirdParty - 2). (optional)
let count = 987 // Int | Specifies the maximum number of items to retrieve. (optional)
let startIndex = 987 // Int | The index from which to start retrieving the room content. (optional)
let sortBy = "sortBy_example" // String | Specifies the field by which the room content should be sorted. (optional)
let sortOrder = SortOrder() // SortOrder | The order in which the results are sorted. (optional)
let filterValue = "filterValue_example" // String | The text filter value used to refine search or query operations. (optional)

RoomsAPIApi.getRoomsFolder(type: type, subjectId: subjectId, searchArea: searchArea, withoutTags: withoutTags, tags: tags, excludeSubject: excludeSubject, provider: provider, subjectFilter: subjectFilter, quotaFilter: quotaFilter, storageFilter: storageFilter, count: count, startIndex: startIndex, sortBy: sortBy, sortOrder: sortOrder, filterValue: filterValue) { (response, error) in
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

# **getRoomsNewItems**
```swift
    open class func getRoomsNewItems(completion: @escaping (_ data: NewItemsRoomNewItemsArrayWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-rooms-new-items/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**NewItemsRoomNewItemsArrayWrapper**](NewItemsRoomNewItemsArrayWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


RoomsAPIApi.getRoomsNewItems() { (response, error) in
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

# **getRoomsPrimaryExternalLink**
```swift
    open class func getRoomsPrimaryExternalLink(id: Int, completion: @escaping (_ data: FileShareWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-rooms-primary-external-link/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The room ID. | 

### Return type

[**FileShareWrapper**](FileShareWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The room ID.

RoomsAPIApi.getRoomsPrimaryExternalLink(id: id) { (response, error) in
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

# **pinRoom**
```swift
    open class func pinRoom(id: Int, completion: @escaping (_ data: FolderIntegerWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/pin-room/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The room ID. | 

### Return type

[**FolderIntegerWrapper**](FolderIntegerWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The room ID.

RoomsAPIApi.pinRoom(id: id) { (response, error) in
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

# **reorderRoom**
```swift
    open class func reorderRoom(id: Int, completion: @escaping (_ data: FolderIntegerWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/reorder-room/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The room ID. | 

### Return type

[**FolderIntegerWrapper**](FolderIntegerWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The room ID.

RoomsAPIApi.reorderRoom(id: id) { (response, error) in
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

# **resendEmailInvitations**
```swift
    open class func resendEmailInvitations(id: Int, userInvitation: UserInvitation, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/resend-email-invitations/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The room ID. | 
 **userInvitation** | [**UserInvitation**](UserInvitation.md) | The user invitation parameters. | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The room ID.
let userInvitation = UserInvitation(usersIds: [123], resendAll: true) // UserInvitation | The user invitation parameters.

RoomsAPIApi.resendEmailInvitations(id: id, userInvitation: userInvitation) { (response, error) in
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
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setPublicSettings**
```swift
    open class func setPublicSettings(setPublicDto: SetPublicDto? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-public-settings/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **setPublicDto** | [**SetPublicDto**](SetPublicDto.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let setPublicDto = SetPublicDto(id: 123, _public: true) // SetPublicDto |  (optional)

RoomsAPIApi.setPublicSettings(setPublicDto: setPublicDto) { (response, error) in
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
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setRoomLink**
```swift
    open class func setRoomLink(id: Int, roomLinkRequest: RoomLinkRequest, completion: @escaping (_ data: FileShareWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-room-link/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The room ID. | 
 **roomLinkRequest** | [**RoomLinkRequest**](RoomLinkRequest.md) | The room link parameters. | 

### Return type

[**FileShareWrapper**](FileShareWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The room ID.
let roomLinkRequest = RoomLinkRequest(linkId: 123, access: FileShare(), expirationDate: ApiDateTime(utcTime: Date(), timeZoneOffset: "timeZoneOffset_example"), _internal: true, title: "title_example", linkType: LinkType(), password: "password_example", denyDownload: true) // RoomLinkRequest | The room link parameters.

RoomsAPIApi.setRoomLink(id: id, roomLinkRequest: roomLinkRequest) { (response, error) in
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

# **setRoomSecurity**
```swift
    open class func setRoomSecurity(id: Int, roomInvitationRequest: RoomInvitationRequest, completion: @escaping (_ data: RoomSecurityWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-room-security/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The room ID. | 
 **roomInvitationRequest** | [**RoomInvitationRequest**](RoomInvitationRequest.md) | The room invitation request. | 

### Return type

[**RoomSecurityWrapper**](RoomSecurityWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The room ID.
let roomInvitationRequest = RoomInvitationRequest(invitations: [RoomInvitation(email: "email_example", id: 123, access: FileShare())], notify: true, message: "message_example", culture: "culture_example", force: true) // RoomInvitationRequest | The room invitation request.

RoomsAPIApi.setRoomSecurity(id: id, roomInvitationRequest: roomInvitationRequest) { (response, error) in
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

# **startRoomIndexExport**
```swift
    open class func startRoomIndexExport(id: Int, completion: @escaping (_ data: DocumentBuilderTaskWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/start-room-index-export/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The room ID. | 

### Return type

[**DocumentBuilderTaskWrapper**](DocumentBuilderTaskWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The room ID.

RoomsAPIApi.startRoomIndexExport(id: id) { (response, error) in
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

# **terminateRoomIndexExport**
```swift
    open class func terminateRoomIndexExport(completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/terminate-room-index-export/).

### Parameters
This endpoint does not need any parameter.

### Return type

Void (empty response body)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


RoomsAPIApi.terminateRoomIndexExport() { (response, error) in
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
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unarchiveRoom**
```swift
    open class func unarchiveRoom(id: Int, archiveRoomRequest: ArchiveRoomRequest? = nil, completion: @escaping (_ data: FileOperationWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/unarchive-room/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The room ID. | 
 **archiveRoomRequest** | [**ArchiveRoomRequest**](ArchiveRoomRequest.md) | The parameters for archiving a room. | [optional] 

### Return type

[**FileOperationWrapper**](FileOperationWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The room ID.
let archiveRoomRequest = ArchiveRoomRequest(deleteAfter: true) // ArchiveRoomRequest | The parameters for archiving a room. (optional)

RoomsAPIApi.unarchiveRoom(id: id, archiveRoomRequest: archiveRoomRequest) { (response, error) in
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

# **unpinRoom**
```swift
    open class func unpinRoom(id: Int, completion: @escaping (_ data: FolderIntegerWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/unpin-room/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The room ID. | 

### Return type

[**FolderIntegerWrapper**](FolderIntegerWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The room ID.

RoomsAPIApi.unpinRoom(id: id) { (response, error) in
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

# **updateRoom**
```swift
    open class func updateRoom(id: Int, updateRoomRequest: UpdateRoomRequest, completion: @escaping (_ data: FolderIntegerWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-room/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The room ID. | 
 **updateRoomRequest** | [**UpdateRoomRequest**](UpdateRoomRequest.md) | The request parameters for updating a room. | 

### Return type

[**FolderIntegerWrapper**](FolderIntegerWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The room ID.
let updateRoomRequest = UpdateRoomRequest(title: "title_example", quota: 123, indexing: true, denyDownload: true, lifetime: RoomDataLifetimeDto(deletePermanently: true, period: RoomDataLifetimePeriod(), value: 123, enabled: true), watermark: WatermarkRequestDto(enabled: true, additions: WatermarkAdditions(), text: "text_example", rotate: 123, imageScale: 123, imageUrl: "imageUrl_example", imageHeight: 123, imageWidth: 123), logo: LogoRequest(tmpFile: "tmpFile_example", x: 123, y: 123, width: 123, height: 123), tags: ["tags_example"], color: "color_example", cover: "cover_example", chatSettings: ChatSettings(providerId: 123, modelId: "modelId_example", prompt: "prompt_example")) // UpdateRoomRequest | The request parameters for updating a room.

RoomsAPIApi.updateRoom(id: id, updateRoomRequest: updateRoomRequest) { (response, error) in
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

# **uploadRoomLogo**
```swift
    open class func uploadRoomLogo(formCollection: [KeyValuePairStringStringValues]? = nil, completion: @escaping (_ data: UploadResultWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/upload-room-logo/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **formCollection** | [**[KeyValuePairStringStringValues]**](KeyValuePairStringStringValues.md) | The image data. | [optional] 

### Return type

[**UploadResultWrapper**](UploadResultWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let formCollection = [KeyValuePairStringStringValues(key: "key_example", value: ["value_example"])] // [KeyValuePairStringStringValues] | The image data. (optional)

RoomsAPIApi.uploadRoomLogo(formCollection: formCollection) { (response, error) in
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

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

