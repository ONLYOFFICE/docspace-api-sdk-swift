# PeoplePhotosAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createMemberPhotoThumbnails**](PeoplePhotosAPI.md#creatememberphotothumbnails) | **POST** /api/2.0/people/{userid}/photo/thumbnails | Create photo thumbnails
[**deleteMemberPhoto**](PeoplePhotosAPI.md#deletememberphoto) | **DELETE** /api/2.0/people/{userid}/photo | Delete a user photo
[**getMemberPhoto**](PeoplePhotosAPI.md#getmemberphoto) | **GET** /api/2.0/people/{userid}/photo | Get a user photo
[**updateMemberPhoto**](PeoplePhotosAPI.md#updatememberphoto) | **PUT** /api/2.0/people/{userid}/photo | Update a user photo
[**uploadMemberPhoto**](PeoplePhotosAPI.md#uploadmemberphoto) | **POST** /api/2.0/people/{userid}/photo | Upload a user photo


# **createMemberPhotoThumbnails**
```swift
    open class func createMemberPhotoThumbnails(userid: String, thumbnailsRequest: ThumbnailsRequest, completion: @escaping (_ data: ThumbnailsDataWrapper?, _ error: Error?) -> Void)
```

Creates the user photo thumbnails by coordinates of the original image specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-member-photo-thumbnails/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userid** | **String** | The user ID. | 
 **thumbnailsRequest** | [**ThumbnailsRequest**](ThumbnailsRequest.md) | The thumbnail request. | 

### Return type

[**ThumbnailsDataWrapper**](ThumbnailsDataWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let userid = "userid_example" // String | The user ID.
let thumbnailsRequest = ThumbnailsRequest(tmpFile: "tmpFile_example", x: 123, y: 123, width: 123, height: 123) // ThumbnailsRequest | The thumbnail request.

// Create photo thumbnails
PeoplePhotosAPIApi.createMemberPhotoThumbnails(userid: userid, thumbnailsRequest: thumbnailsRequest) { (response, error) in
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

# **deleteMemberPhoto**
```swift
    open class func deleteMemberPhoto(userid: String, completion: @escaping (_ data: ThumbnailsDataWrapper?, _ error: Error?) -> Void)
```

Deletes a photo of the user with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-member-photo/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userid** | **String** | The user ID. | 

### Return type

[**ThumbnailsDataWrapper**](ThumbnailsDataWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let userid = "userid_example" // String | The user ID.

// Delete a user photo
PeoplePhotosAPIApi.deleteMemberPhoto(userid: userid) { (response, error) in
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

# **getMemberPhoto**
```swift
    open class func getMemberPhoto(userid: String, completion: @escaping (_ data: ThumbnailsDataWrapper?, _ error: Error?) -> Void)
```

Returns a photo of the user with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-member-photo/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userid** | **String** | The user ID. | 

### Return type

[**ThumbnailsDataWrapper**](ThumbnailsDataWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let userid = "userid_example" // String | The user ID.

// Get a user photo
PeoplePhotosAPIApi.getMemberPhoto(userid: userid) { (response, error) in
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

# **updateMemberPhoto**
```swift
    open class func updateMemberPhoto(userid: String, updatePhotoMemberRequest: UpdatePhotoMemberRequest, completion: @escaping (_ data: ThumbnailsDataWrapper?, _ error: Error?) -> Void)
```

Updates a photo of the user with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-member-photo/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userid** | **String** | The user ID. | 
 **updatePhotoMemberRequest** | [**UpdatePhotoMemberRequest**](UpdatePhotoMemberRequest.md) | The request parameters for updating a photo. | 

### Return type

[**ThumbnailsDataWrapper**](ThumbnailsDataWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let userid = "userid_example" // String | The user ID.
let updatePhotoMemberRequest = UpdatePhotoMemberRequest(files: "files_example") // UpdatePhotoMemberRequest | The request parameters for updating a photo.

// Update a user photo
PeoplePhotosAPIApi.updateMemberPhoto(userid: userid, updatePhotoMemberRequest: updatePhotoMemberRequest) { (response, error) in
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

# **uploadMemberPhoto**
```swift
    open class func uploadMemberPhoto(userid: String, file: URL, autosave: Bool? = nil, completion: @escaping (_ data: FileUploadResultWrapper?, _ error: Error?) -> Void)
```

Uploads a photo of the user with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/upload-member-photo/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userid** | **String** | The user ID. | 
 **file** | **URL** | The image data. | 
 **autosave** | **Bool** |  | [optional] 

### Return type

[**FileUploadResultWrapper**](FileUploadResultWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let userid = "userid_example" // String | The user ID.
let file = URL(string: "https://example.com")! // URL | The image data.
let autosave = true // Bool |  (optional)

// Upload a user photo
PeoplePhotosAPIApi.uploadMemberPhoto(userid: userid, file: file, autosave: autosave) { (response, error) in
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

