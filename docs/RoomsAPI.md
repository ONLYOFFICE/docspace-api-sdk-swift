# RoomsAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addRoomTags**](RoomsAPI.md#addroomtags) | **PUT** /api/2.0/files/rooms/{id}/tags | Add the room tags
[**archiveRoom**](RoomsAPI.md#archiveroom) | **PUT** /api/2.0/files/rooms/{id}/archive | Archive a room
[**changeRoomCover**](RoomsAPI.md#changeroomcover) | **POST** /api/2.0/files/rooms/{id}/cover | Change the room cover
[**createRoom**](RoomsAPI.md#createroom) | **POST** /api/2.0/files/rooms | Create a room
[**createRoomFromTemplate**](RoomsAPI.md#createroomfromtemplate) | **POST** /api/2.0/files/rooms/fromtemplate | Create a room from the template
[**createRoomLogo**](RoomsAPI.md#createroomlogo) | **POST** /api/2.0/files/rooms/{id}/logo | Create a room logo
[**createRoomTag**](RoomsAPI.md#createroomtag) | **POST** /api/2.0/files/tags | Create a room tag
[**createRoomTemplate**](RoomsAPI.md#createroomtemplate) | **POST** /api/2.0/files/roomtemplate | Start creating room template
[**createRoomThirdParty**](RoomsAPI.md#createroomthirdparty) | **POST** /api/2.0/files/rooms/thirdparty/{id} | Create a third-party room
[**deleteCustomTags**](RoomsAPI.md#deletecustomtags) | **DELETE** /api/2.0/files/tags | Delete the custom room tags
[**deleteRoom**](RoomsAPI.md#deleteroom) | **DELETE** /api/2.0/files/rooms/{id} | Remove a room
[**deleteRoomLogo**](RoomsAPI.md#deleteroomlogo) | **DELETE** /api/2.0/files/rooms/{id}/logo | Remove a room logo
[**deleteRoomTags**](RoomsAPI.md#deleteroomtags) | **DELETE** /api/2.0/files/rooms/{id}/tags | Remove the room tags
[**getExternalDbSyncStatus**](RoomsAPI.md#getexternaldbsyncstatus) | **GET** /api/2.0/files/rooms/{id}/externaldbsync | Get external DB sync status
[**getNewRoomItems**](RoomsAPI.md#getnewroomitems) | **GET** /api/2.0/files/rooms/{id}/news | Get the new room items
[**getPublicSettings**](RoomsAPI.md#getpublicsettings) | **GET** /api/2.0/files/roomtemplate/{id}/public | Get public settings
[**getRoomCovers**](RoomsAPI.md#getroomcovers) | **GET** /api/2.0/files/rooms/covers | Get covers
[**getRoomCreatingStatus**](RoomsAPI.md#getroomcreatingstatus) | **GET** /api/2.0/files/rooms/fromtemplate/status | Get the room creation progress
[**getRoomIndexExport**](RoomsAPI.md#getroomindexexport) | **GET** /api/2.0/files/rooms/indexexport | Get the room index export
[**getRoomInfo**](RoomsAPI.md#getroominfo) | **GET** /api/2.0/files/rooms/{id} | Get room information
[**getRoomLinks**](RoomsAPI.md#getroomlinks) | **GET** /api/2.0/files/rooms/{id}/links | Get the room links
[**getRoomSecurityInfo**](RoomsAPI.md#getroomsecurityinfo) | **GET** /api/2.0/files/rooms/{id}/share | Get the room access rights
[**getRoomTagsInfo**](RoomsAPI.md#getroomtagsinfo) | **GET** /api/2.0/files/tags | Get the room tags
[**getRoomTemplateCreatingStatus**](RoomsAPI.md#getroomtemplatecreatingstatus) | **GET** /api/2.0/files/roomtemplate/status | Get status of room template creation
[**getRoomsFolder**](RoomsAPI.md#getroomsfolder) | **GET** /api/2.0/files/rooms | Get rooms
[**getRoomsNewItems**](RoomsAPI.md#getroomsnewitems) | **GET** /api/2.0/files/rooms/news | Get the room new items
[**getRoomsPrimaryExternalLink**](RoomsAPI.md#getroomsprimaryexternallink) | **GET** /api/2.0/files/rooms/{id}/link | Get the room primary external link
[**hasTagLinks**](RoomsAPI.md#hastaglinks) | **GET** /api/2.0/files/tags/{tagName}/haslinks | Has tag links
[**pinRoom**](RoomsAPI.md#pinroom) | **PUT** /api/2.0/files/rooms/{id}/pin | Pin a room
[**reorderRoom**](RoomsAPI.md#reorderroom) | **PUT** /api/2.0/files/rooms/{id}/reorder | Reorder the room
[**resendEmailInvitations**](RoomsAPI.md#resendemailinvitations) | **POST** /api/2.0/files/rooms/{id}/resend | Resend the room invitations
[**setPublicSettings**](RoomsAPI.md#setpublicsettings) | **PUT** /api/2.0/files/roomtemplate/public | Set public settings
[**setRoomLink**](RoomsAPI.md#setroomlink) | **PUT** /api/2.0/files/rooms/{id}/links | Set the room external or invitation link
[**setRoomSecurity**](RoomsAPI.md#setroomsecurity) | **PUT** /api/2.0/files/rooms/{id}/share | Set the room access rights
[**startExternalDbSync**](RoomsAPI.md#startexternaldbsync) | **POST** /api/2.0/files/rooms/{id}/externaldbsync | Start external DB sync
[**startRoomIndexExport**](RoomsAPI.md#startroomindexexport) | **POST** /api/2.0/files/rooms/{id}/indexexport | Start the room index export
[**terminateRoomIndexExport**](RoomsAPI.md#terminateroomindexexport) | **DELETE** /api/2.0/files/rooms/indexexport | Terminate the room index export
[**unarchiveRoom**](RoomsAPI.md#unarchiveroom) | **PUT** /api/2.0/files/rooms/{id}/unarchive | Unarchive a room
[**unpinRoom**](RoomsAPI.md#unpinroom) | **PUT** /api/2.0/files/rooms/{id}/unpin | Unpin a room
[**updateRoom**](RoomsAPI.md#updateroom) | **PUT** /api/2.0/files/rooms/{id} | Update a room
[**updateRoomTag**](RoomsAPI.md#updateroomtag) | **PUT** /api/2.0/files/tags | Update tag
[**uploadRoomLogo**](RoomsAPI.md#uploadroomlogo) | **POST** /api/2.0/files/logos | Upload a room logo image


# **addRoomTags**
```swift
    open class func addRoomTags(id: Int, batchTagsRequestDto: BatchTagsRequestDto? = nil, completion: @escaping (_ data: FolderIntegerWrapper?, _ error: Error?) -> Void)
```

Adds the tags to a room with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/add-room-tags/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The room Id. | 
 **batchTagsRequestDto** | [**BatchTagsRequestDto**](BatchTagsRequestDto.md) | The parameters for managing tags. | [optional] 

### Return type

[**FolderIntegerWrapper**](FolderIntegerWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The room Id.
let batchTagsRequestDto = BatchTagsRequestDto(names: ["names_example"]) // BatchTagsRequestDto | The parameters for managing tags. (optional)

// Add the room tags
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

Moves a room with the ID specified in the request to the Archive section.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/archive-room/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The room ID. | 
 **archiveRoomRequest** | [**ArchiveRoomRequest**](ArchiveRoomRequest.md) | The parameters for archiving a room. | [optional] 

### Return type

[**FileOperationWrapper**](FileOperationWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The room ID.
let archiveRoomRequest = ArchiveRoomRequest(deleteAfter: false) // ArchiveRoomRequest | The parameters for archiving a room. (optional)

// Archive a room
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

Changes a cover of a room with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/change-room-cover/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The room ID. | 
 **coverRequestDto** | [**CoverRequestDto**](CoverRequestDto.md) | The request parameters to change the room cover. | 

### Return type

[**FolderIntegerWrapper**](FolderIntegerWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The room ID.
let coverRequestDto = CoverRequestDto(color: "color_example", cover: "cover_example") // CoverRequestDto | The request parameters to change the room cover.

// Change the room cover
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

Creates a room in the Rooms section.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-room/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createRoomRequestDto** | [**CreateRoomRequestDto**](CreateRoomRequestDto.md) |  | [optional] 

### Return type

[**FolderIntegerWrapper**](FolderIntegerWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let createRoomRequestDto = CreateRoomRequestDto(title: "title_example", quota: 123, indexing: true, denyDownload: false, lifetime: RoomDataLifetimeDto(deletePermanently: true, period: RoomDataLifetimePeriod(), value: 123, enabled: true), watermark: WatermarkRequestDto(enabled: true, additions: WatermarkAdditions(), text: "text_example", rotate: 123, imageScale: 123, imageUrl: "imageUrl_example", imageHeight: 123, imageWidth: 123), logo: LogoRequest(tmpFile: "tmpFile_example", x: 123, y: 123, width: 123, height: 123), tags: ["tags_example"], color: "color_example", cover: "cover_example", roomType: RoomType(), _private: false, share: [FileShareParams(email: "email_example", shareTo: 123, access: FileShare())], chatSettings: ChatSettings(providerId: 123, modelId: "modelId_example", prompt: "prompt_example", _internal: false), sendFormToExternalDB: false, saveFormAsXLSX: false) // CreateRoomRequestDto |  (optional)

// Create a room
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

Creates a room in the Rooms section based on the template.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-room-from-template/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createRoomFromTemplateDto** | [**CreateRoomFromTemplateDto**](CreateRoomFromTemplateDto.md) |  | [optional] 

### Return type

[**RoomFromTemplateStatusWrapper**](RoomFromTemplateStatusWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let createRoomFromTemplateDto = CreateRoomFromTemplateDto(templateId: 123, title: "title_example", logo: LogoRequest(tmpFile: "tmpFile_example", x: 123, y: 123, width: 123, height: 123), copyLogo: false, tags: ["tags_example"], color: "color_example", cover: "cover_example", quota: 123, indexing: true, denyDownload: false, lifetime: RoomDataLifetimeDto(deletePermanently: true, period: RoomDataLifetimePeriod(), value: 123, enabled: true), watermark: WatermarkRequestDto(enabled: true, additions: WatermarkAdditions(), text: "text_example", rotate: 123, imageScale: 123, imageUrl: "imageUrl_example", imageHeight: 123, imageWidth: 123), _private: false) // CreateRoomFromTemplateDto |  (optional)

// Create a room from the template
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

Creates a logo for a room with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-room-logo/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The room ID. | 
 **logoRequest** | [**LogoRequest**](LogoRequest.md) | The logo request parameters. | 

### Return type

[**FolderIntegerWrapper**](FolderIntegerWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The room ID.
let logoRequest = LogoRequest(tmpFile: "tmpFile_example", x: 123, y: 123, width: 123, height: 123) // LogoRequest | The logo request parameters.

// Create a room logo
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
    open class func createRoomTag(createTagRequestDto: CreateTagRequestDto? = nil, completion: @escaping (_ data: StringWrapper?, _ error: Error?) -> Void)
```

Creates a custom room tag with the parameters specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-room-tag/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createTagRequestDto** | [**CreateTagRequestDto**](CreateTagRequestDto.md) |  | [optional] 

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let createTagRequestDto = CreateTagRequestDto(name: "name_example") // CreateTagRequestDto |  (optional)

// Create a room tag
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

Starts creating the room template.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-room-template/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **roomTemplateDto** | [**RoomTemplateDto**](RoomTemplateDto.md) |  | [optional] 

### Return type

[**RoomTemplateStatusWrapper**](RoomTemplateStatusWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let roomTemplateDto = RoomTemplateDto(roomId: 123, title: "title_example", logo: LogoRequest(tmpFile: "tmpFile_example", x: 123, y: 123, width: 123, height: 123), copyLogo: true, share: ["share_example"], groups: [123], _public: true, tags: ["tags_example"], color: "color_example", cover: "cover_example", quota: 123) // RoomTemplateDto |  (optional)

// Start creating room template
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

Creates a room in the Rooms section stored in a third-party storage.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-room-third-party/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | The ID of the folder in the third-party storage in which the contents of the room will be stored. | 
 **createThirdPartyRoom** | [**CreateThirdPartyRoom**](CreateThirdPartyRoom.md) | The third-party room information. | 

### Return type

[**FolderStringWrapper**](FolderStringWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the folder in the third-party storage in which the contents of the room will be stored.
let createThirdPartyRoom = CreateThirdPartyRoom(createAsNewFolder: false, title: "title_example", roomType: RoomType(), _private: false, indexing: true, denyDownload: false, color: "color_example", cover: "cover_example", tags: ["tags_example"], logo: LogoRequest(tmpFile: "tmpFile_example", x: 123, y: 123, width: 123, height: 123)) // CreateThirdPartyRoom | The third-party room information.

// Create a third-party room
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

Deletes a bunch of custom tags specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-custom-tags/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batchTagsRequestDto** | [**BatchTagsRequestDto**](BatchTagsRequestDto.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let batchTagsRequestDto = BatchTagsRequestDto(names: ["names_example"]) // BatchTagsRequestDto |  (optional)

// Delete the custom room tags
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteRoom**
```swift
    open class func deleteRoom(id: Int, deleteRoomRequest: DeleteRoomRequest, completion: @escaping (_ data: FileOperationWrapper?, _ error: Error?) -> Void)
```

Removes a room with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-room/).

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

// Remove a room
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

Removes a logo from a room with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-room-logo/).

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

// Remove a room logo
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

Removes the tags from a room with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-room-tags/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The room Id. | 
 **batchTagsRequestDto** | [**BatchTagsRequestDto**](BatchTagsRequestDto.md) | The parameters for managing tags. | [optional] 

### Return type

[**FolderIntegerWrapper**](FolderIntegerWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The room Id.
let batchTagsRequestDto = BatchTagsRequestDto(names: ["names_example"]) // BatchTagsRequestDto | The parameters for managing tags. (optional)

// Remove the room tags
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

# **getExternalDbSyncStatus**
```swift
    open class func getExternalDbSyncStatus(id: Int, completion: @escaping (_ data: ExternalDbSyncTaskWrapper?, _ error: Error?) -> Void)
```

Returns the status of the external DB synchronization task for the specified filling forms room.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-external-db-sync-status/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The room ID. | 

### Return type

[**ExternalDbSyncTaskWrapper**](ExternalDbSyncTaskWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The room ID.

// Get external DB sync status
RoomsAPIApi.getExternalDbSyncStatus(id: id) { (response, error) in
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

# **getNewRoomItems**
```swift
    open class func getNewRoomItems(id: Int, completion: @escaping (_ data: NewItemsFileEntryBaseArrayWrapper?, _ error: Error?) -> Void)
```

Returns a list of all the new items from a room with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-new-room-items/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The room ID. | 

### Return type

[**NewItemsFileEntryBaseArrayWrapper**](NewItemsFileEntryBaseArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The room ID.

// Get the new room items
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

Returns the public settings of the room template with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-public-settings/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The room template ID. | 

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The room template ID.

// Get public settings
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

Returns a list of all covers.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-covers/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**CoversResultArrayWrapper**](CoversResultArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get covers
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

Returns the progress of creating a room from the template.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-creating-status/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**RoomFromTemplateStatusWrapper**](RoomFromTemplateStatusWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get the room creation progress
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

Returns the room index export.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-index-export/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**DocumentBuilderTaskWrapper**](DocumentBuilderTaskWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get the room index export
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

Returns the room information.

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

// Get room information
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

Returns the links of the room with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-links/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The room ID. | 
 **type** | [**LinkType**](.md) | The link type. | [optional] 

### Return type

[**FileShareArrayWrapper**](FileShareArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The room ID.
let type = LinkType() // LinkType | The link type. (optional)

// Get the room links
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

Returns the access rights of a room with the ID specified in the request.

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

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The room ID.
let filterType = ShareFilterType() // ShareFilterType | The filter type of the access rights. (optional)
let count = 987 // Int | The number of items to be retrieved or processed. (optional)
let startIndex = 987 // Int | The starting index of the items to retrieve in a paginated request. (optional)
let filterValue = "filterValue_example" // String | The text filter value used for filtering room security information. (optional)

// Get the room access rights
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

Returns a list of custom tags.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-tags-info/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **count** | **Int** | Gets or sets the number of tag results to retrieve.  This property specifies the maximum amount of tag data to be included in the result set. | [optional] 
 **startIndex** | **Int** | Represents the starting index from which the tags' information will be retrieved.  This property is used to define the offset for pagination when retrieving a list of tags. It determines  the point in the data set from which the retrieval begins. | [optional] 
 **filterValue** | **String** | Gets or sets the text value used for searching tags.  This property is typically used as a filter value when retrieving tag information. | [optional] 

### Return type

[**ObjectArrayWrapper**](ObjectArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let count = 987 // Int | Gets or sets the number of tag results to retrieve.  This property specifies the maximum amount of tag data to be included in the result set. (optional)
let startIndex = 987 // Int | Represents the starting index from which the tags' information will be retrieved.  This property is used to define the offset for pagination when retrieving a list of tags. It determines  the point in the data set from which the retrieval begins. (optional)
let filterValue = "filterValue_example" // String | Gets or sets the text value used for searching tags.  This property is typically used as a filter value when retrieving tag information. (optional)

// Get the room tags
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

Returns the progress status of the room template creation process.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-template-creating-status/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**RoomTemplateStatusWrapper**](RoomTemplateStatusWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get status of room template creation
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
    open class func getRoomsFolder(type: [RoomType]? = nil, subjectId: UUID? = nil, subjectOwnerId: UUID? = nil, searchArea: SearchArea? = nil, withoutTags: Bool? = nil, tags: String? = nil, excludeSubject: Bool? = nil, provider: ProviderFilter? = nil, quotaFilter: QuotaFilter? = nil, storageFilter: StorageFilter? = nil, privacyFilter: RoomPrivacyFilter? = nil, count: Int? = nil, startIndex: Int? = nil, sortBy: String? = nil, sortOrder: SortOrder? = nil, filterValue: String? = nil, groupId: Int? = nil, completion: @escaping (_ data: FolderContentIntegerWrapper?, _ error: Error?) -> Void)
```

Returns the contents of the Rooms section by the parameters specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-rooms-folder/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | [**[RoomType]**](RoomType.md) | The filter by room type. | [optional] 
 **subjectId** | **UUID** | The filter by user ID. | [optional] 
 **subjectOwnerId** | **UUID** | The filter by room owner ID. | [optional] 
 **searchArea** | [**SearchArea**](.md) | The room search area (Active, Archive, Any, Recent by links). | [optional] 
 **withoutTags** | **Bool** | Specifies whether to search by tags or not. | [optional] 
 **tags** | **String** | The tags in the serialized format. | [optional] 
 **excludeSubject** | **Bool** | Specifies whether to exclude search by user or group ID. | [optional] 
 **provider** | [**ProviderFilter**](.md) | The filter by provider name (None, Box, DropBox, GoogleDrive, kDrive, OneDrive, SharePoint, WebDav, Yandex, Storage). | [optional] 
 **quotaFilter** | [**QuotaFilter**](.md) | The filter by quota (All - 0, Default - 1, Custom - 2). | [optional] 
 **storageFilter** | [**StorageFilter**](.md) | The filter by storage (None - 0, Internal - 1, ThirdParty - 2). | [optional] 
 **privacyFilter** | [**RoomPrivacyFilter**](.md) | The filter by room privacy (None - 0, Private - 1, NotPrivate - 2). When omitted, all rooms are returned. | [optional] 
 **count** | **Int** | Specifies the maximum number of items to retrieve. | [optional] 
 **startIndex** | **Int** | The index from which to start retrieving the room content. | [optional] 
 **sortBy** | **String** | Specifies the field by which the room content should be sorted. | [optional] 
 **sortOrder** | [**SortOrder**](.md) | The order in which the results are sorted. | [optional] 
 **filterValue** | **String** | The text filter value used to refine search or query operations. | [optional] 
 **groupId** | **Int** | The group ID | [optional] 

### Return type

[**FolderContentIntegerWrapper**](FolderContentIntegerWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let type = [RoomType()] // [RoomType] | The filter by room type. (optional)
let subjectId = 987 // UUID | The filter by user ID. (optional)
let subjectOwnerId = 987 // UUID | The filter by room owner ID. (optional)
let searchArea = SearchArea() // SearchArea | The room search area (Active, Archive, Any, Recent by links). (optional)
let withoutTags = false // Bool | Specifies whether to search by tags or not. (optional)
let tags = "tags_example" // String | The tags in the serialized format. (optional)
let excludeSubject = false // Bool | Specifies whether to exclude search by user or group ID. (optional)
let provider = ProviderFilter() // ProviderFilter | The filter by provider name (None, Box, DropBox, GoogleDrive, kDrive, OneDrive, SharePoint, WebDav, Yandex, Storage). (optional)
let quotaFilter = QuotaFilter() // QuotaFilter | The filter by quota (All - 0, Default - 1, Custom - 2). (optional)
let storageFilter = StorageFilter() // StorageFilter | The filter by storage (None - 0, Internal - 1, ThirdParty - 2). (optional)
let privacyFilter = RoomPrivacyFilter() // RoomPrivacyFilter | The filter by room privacy (None - 0, Private - 1, NotPrivate - 2). When omitted, all rooms are returned. (optional)
let count = 987 // Int | Specifies the maximum number of items to retrieve. (optional)
let startIndex = 987 // Int | The index from which to start retrieving the room content. (optional)
let sortBy = "sortBy_example" // String | Specifies the field by which the room content should be sorted. (optional)
let sortOrder = SortOrder() // SortOrder | The order in which the results are sorted. (optional)
let filterValue = "filterValue_example" // String | The text filter value used to refine search or query operations. (optional)
let groupId = 987 // Int | The group ID (optional)

// Get rooms
RoomsAPIApi.getRoomsFolder(type: type, subjectId: subjectId, subjectOwnerId: subjectOwnerId, searchArea: searchArea, withoutTags: withoutTags, tags: tags, excludeSubject: excludeSubject, provider: provider, quotaFilter: quotaFilter, storageFilter: storageFilter, privacyFilter: privacyFilter, count: count, startIndex: startIndex, sortBy: sortBy, sortOrder: sortOrder, filterValue: filterValue, groupId: groupId) { (response, error) in
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

Returns the room new items.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-rooms-new-items/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**NewItemsRoomNewItemsArrayWrapper**](NewItemsRoomNewItemsArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get the room new items
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

Returns the primary external link of the room with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-rooms-primary-external-link/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The room ID. | 

### Return type

[**FileShareWrapper**](FileShareWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The room ID.

// Get the room primary external link
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

# **hasTagLinks**
```swift
    open class func hasTagLinks(tagName2: String, tagName: String? = nil, completion: @escaping (_ data: BooleanWrapper?, _ error: Error?) -> Void)
```

Checks if a specific custom tag has linked items.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/has-tag-links/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tagName2** | **String** | The tag being checked. Send the same value as the `tagName` query parameter, which is the one the handler reads. | 
 **tagName** | **String** | Represents the name of a tag | [optional] 

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let tagName2 = "tagName2_example" // String | The tag being checked. Send the same value as the `tagName` query parameter, which is the one the handler reads.
let tagName = "tagName_example" // String | Represents the name of a tag (optional)

// Has tag links
RoomsAPIApi.hasTagLinks(tagName2: tagName2, tagName: tagName) { (response, error) in
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

Pins a room with the ID specified in the request to the top of the list.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/pin-room/).

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

// Pin a room
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

Reorders the room with ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/reorder-room/).

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

// Reorder the room
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

Resends the email invitations to a room with the ID specified in the request to the selected users.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/resend-email-invitations/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The room ID. | 
 **userInvitation** | [**UserInvitation**](UserInvitation.md) | The user invitation parameters. | 

### Return type

Void (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The room ID.
let userInvitation = UserInvitation(usersIds: [123], resendAll: false) // UserInvitation | The user invitation parameters.

// Resend the room invitations
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setPublicSettings**
```swift
    open class func setPublicSettings(setPublicDto: SetPublicDto? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Sets the public settings for the room template with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-public-settings/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **setPublicDto** | [**SetPublicDto**](SetPublicDto.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let setPublicDto = SetPublicDto(id: 123, _public: true) // SetPublicDto |  (optional)

// Set public settings
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setRoomLink**
```swift
    open class func setRoomLink(id: Int, roomLinkRequest: RoomLinkRequest, completion: @escaping (_ data: FileShareWrapper?, _ error: Error?) -> Void)
```

Sets the room external or invitation link with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-room-link/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The room ID. | 
 **roomLinkRequest** | [**RoomLinkRequest**](RoomLinkRequest.md) | The room link parameters. | 

### Return type

[**FileShareWrapper**](FileShareWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The room ID.
let roomLinkRequest = RoomLinkRequest(linkId: 123, access: FileShare(), expirationDate: Date(), _internal: false, title: "title_example", linkType: LinkType(), password: "password_example", denyDownload: false, maxUseCount: 123, currentUseCount: 123) // RoomLinkRequest | The room link parameters.

// Set the room external or invitation link
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

Sets the access rights to the room with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-room-security/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The room ID. | 
 **roomInvitationRequest** | [**RoomInvitationRequest**](RoomInvitationRequest.md) | The room invitation request. | 

### Return type

[**RoomSecurityWrapper**](RoomSecurityWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The room ID.
let roomInvitationRequest = RoomInvitationRequest(invitations: [RoomInvitation(email: "email_example", id: 123, access: FileShare())], notify: true, message: "message_example", culture: "culture_example", force: false) // RoomInvitationRequest | The room invitation request.

// Set the room access rights
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

# **startExternalDbSync**
```swift
    open class func startExternalDbSync(id: Int, completion: @escaping (_ data: ExternalDbSyncTaskWrapper?, _ error: Error?) -> Void)
```

Triggers external DB synchronization for all form templates in the specified filling forms room.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/start-external-db-sync/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The room ID. | 

### Return type

[**ExternalDbSyncTaskWrapper**](ExternalDbSyncTaskWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The room ID.

// Start external DB sync
RoomsAPIApi.startExternalDbSync(id: id) { (response, error) in
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

# **startRoomIndexExport**
```swift
    open class func startRoomIndexExport(id: Int, completion: @escaping (_ data: DocumentBuilderTaskWrapper?, _ error: Error?) -> Void)
```

Starts the index export of a room with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/start-room-index-export/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The room ID. | 

### Return type

[**DocumentBuilderTaskWrapper**](DocumentBuilderTaskWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The room ID.

// Start the room index export
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

Terminates the room index export.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/terminate-room-index-export/).

### Parameters
This endpoint does not need any parameter.

### Return type

Void (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Terminate the room index export
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unarchiveRoom**
```swift
    open class func unarchiveRoom(id: Int, archiveRoomRequest: ArchiveRoomRequest? = nil, completion: @escaping (_ data: FileOperationWrapper?, _ error: Error?) -> Void)
```

Moves a room with the ID specified in the request from the Archive section to the Rooms section.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/unarchive-room/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The room ID. | 
 **archiveRoomRequest** | [**ArchiveRoomRequest**](ArchiveRoomRequest.md) | The parameters for archiving a room. | [optional] 

### Return type

[**FileOperationWrapper**](FileOperationWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The room ID.
let archiveRoomRequest = ArchiveRoomRequest(deleteAfter: false) // ArchiveRoomRequest | The parameters for archiving a room. (optional)

// Unarchive a room
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

Unpins a room with the ID specified in the request from the top of the list.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/unpin-room/).

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

// Unpin a room
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

Updates a room with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-room/).

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

// Update a room
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

# **updateRoomTag**
```swift
    open class func updateRoomTag(updateTagRequestDto: UpdateTagRequestDto? = nil, completion: @escaping (_ data: StringWrapper?, _ error: Error?) -> Void)
```

Updates the name of a custom tag.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-room-tag/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **updateTagRequestDto** | [**UpdateTagRequestDto**](UpdateTagRequestDto.md) |  | [optional] 

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let updateTagRequestDto = UpdateTagRequestDto(oldName: "oldName_example", newName: "newName_example") // UpdateTagRequestDto |  (optional)

// Update tag
RoomsAPIApi.updateRoomTag(updateTagRequestDto: updateTagRequestDto) { (response, error) in
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
    open class func uploadRoomLogo(file: URL? = nil, completion: @escaping (_ data: UploadResultWrapper?, _ error: Error?) -> Void)
```

Uploads a temporary image to create a room logo.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/upload-room-logo/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **URL** | The image data. | [optional] 

### Return type

[**UploadResultWrapper**](UploadResultWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let file = URL(string: "https://example.com")! // URL | The image data. (optional)

// Upload a room logo image
RoomsAPIApi.uploadRoomLogo(file: file) { (response, error) in
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

