# FilesSettingsAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**changeAccessToThirdparty**](FilesSettingsAPI.md#changeaccesstothirdparty) | **PUT** /api/2.0/files/thirdparty | 
[**changeAutomaticallyCleanUp**](FilesSettingsAPI.md#changeautomaticallycleanup) | **PUT** /api/2.0/files/settings/autocleanup | 
[**changeDefaultAccessRights**](FilesSettingsAPI.md#changedefaultaccessrights) | **PUT** /api/2.0/files/settings/dafaultaccessrights | 
[**changeDeleteConfirm**](FilesSettingsAPI.md#changedeleteconfirm) | **PUT** /api/2.0/files/changedeleteconfrim | 
[**changeDownloadZipFromBody**](FilesSettingsAPI.md#changedownloadzipfrombody) | **PUT** /api/2.0/files/settings/downloadtargz | 
[**checkDocServiceUrl**](FilesSettingsAPI.md#checkdocserviceurl) | **PUT** /api/2.0/files/docservice | 
[**displayFileExtension**](FilesSettingsAPI.md#displayfileextension) | **PUT** /api/2.0/files/displayfileextension | 
[**displayRecent**](FilesSettingsAPI.md#displayrecent) | **PUT** /api/2.0/files/displayrecent | 
[**externalShare**](FilesSettingsAPI.md#externalshare) | **PUT** /api/2.0/files/settings/external | 
[**externalShareSocialMedia**](FilesSettingsAPI.md#externalsharesocialmedia) | **PUT** /api/2.0/files/settings/externalsocialmedia | 
[**forcesave**](FilesSettingsAPI.md#forcesave) | **PUT** /api/2.0/files/forcesave | 
[**getAutomaticallyCleanUp**](FilesSettingsAPI.md#getautomaticallycleanup) | **GET** /api/2.0/files/settings/autocleanup | 
[**getDocServiceUrl**](FilesSettingsAPI.md#getdocserviceurl) | **GET** /api/2.0/files/docservice | 
[**getFilesModule**](FilesSettingsAPI.md#getfilesmodule) | **GET** /api/2.0/files/info | 
[**getFilesSettings**](FilesSettingsAPI.md#getfilessettings) | **GET** /api/2.0/files/settings | 
[**hideConfirmCancelOperation**](FilesSettingsAPI.md#hideconfirmcanceloperation) | **PUT** /api/2.0/files/hideconfirmcanceloperation | 
[**hideConfirmConvert**](FilesSettingsAPI.md#hideconfirmconvert) | **PUT** /api/2.0/files/hideconfirmconvert | 
[**hideConfirmRoomLifetime**](FilesSettingsAPI.md#hideconfirmroomlifetime) | **PUT** /api/2.0/files/hideconfirmroomlifetime | 
[**isAvailablePrivacyRoomSettings**](FilesSettingsAPI.md#isavailableprivacyroomsettings) | **GET** /api/2.0/files/@privacy/available | 
[**keepNewFileName**](FilesSettingsAPI.md#keepnewfilename) | **PUT** /api/2.0/files/keepnewfilename | 
[**setOpenEditorInSameTab**](FilesSettingsAPI.md#setopeneditorinsametab) | **PUT** /api/2.0/files/settings/openeditorinsametab | 
[**storeForcesave**](FilesSettingsAPI.md#storeforcesave) | **PUT** /api/2.0/files/storeforcesave | 
[**storeOriginal**](FilesSettingsAPI.md#storeoriginal) | **PUT** /api/2.0/files/storeoriginal | 
[**updateFileIfExist**](FilesSettingsAPI.md#updatefileifexist) | **PUT** /api/2.0/files/updateifexist | 


# **changeAccessToThirdparty**
```swift
    open class func changeAccessToThirdparty(settingsRequestDto: SettingsRequestDto? = nil, completion: @escaping (_ data: BooleanWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/change-access-to-thirdparty/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **settingsRequestDto** | [**SettingsRequestDto**](SettingsRequestDto.md) |  | [optional] 

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let settingsRequestDto = SettingsRequestDto(_set: true) // SettingsRequestDto |  (optional)

FilesSettingsAPIApi.changeAccessToThirdparty(settingsRequestDto: settingsRequestDto) { (response, error) in
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

# **changeAutomaticallyCleanUp**
```swift
    open class func changeAutomaticallyCleanUp(autoCleanupRequestDto: AutoCleanupRequestDto? = nil, completion: @escaping (_ data: AutoCleanUpDataWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/change-automatically-clean-up/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **autoCleanupRequestDto** | [**AutoCleanupRequestDto**](AutoCleanupRequestDto.md) |  | [optional] 

### Return type

[**AutoCleanUpDataWrapper**](AutoCleanUpDataWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let autoCleanupRequestDto = AutoCleanupRequestDto(_set: true, gap: DateToAutoCleanUp()) // AutoCleanupRequestDto |  (optional)

FilesSettingsAPIApi.changeAutomaticallyCleanUp(autoCleanupRequestDto: autoCleanupRequestDto) { (response, error) in
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

# **changeDefaultAccessRights**
```swift
    open class func changeDefaultAccessRights(requestBody: [Int]? = nil, completion: @escaping (_ data: FileShareArrayWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/change-default-access-rights/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**[Int]**](Int.md) | Sharing rights (None, ReadWrite, Read, Restrict, Varies, Review, Comment, FillForms, CustomFilter, RoomAdmin, Editing, Collaborator). | [optional] 

### Return type

[**FileShareArrayWrapper**](FileShareArrayWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let requestBody = [123] // [Int] | Sharing rights (None, ReadWrite, Read, Restrict, Varies, Review, Comment, FillForms, CustomFilter, RoomAdmin, Editing, Collaborator). (optional)

FilesSettingsAPIApi.changeDefaultAccessRights(requestBody: requestBody) { (response, error) in
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

# **changeDeleteConfirm**
```swift
    open class func changeDeleteConfirm(settingsRequestDto: SettingsRequestDto? = nil, completion: @escaping (_ data: BooleanWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/change-delete-confirm/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **settingsRequestDto** | [**SettingsRequestDto**](SettingsRequestDto.md) |  | [optional] 

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let settingsRequestDto = SettingsRequestDto(_set: true) // SettingsRequestDto |  (optional)

FilesSettingsAPIApi.changeDeleteConfirm(settingsRequestDto: settingsRequestDto) { (response, error) in
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

# **changeDownloadZipFromBody**
```swift
    open class func changeDownloadZipFromBody(displayRequestDto: DisplayRequestDto? = nil, completion: @escaping (_ data: ICompressWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/change-download-zip-from-body/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **displayRequestDto** | [**DisplayRequestDto**](DisplayRequestDto.md) |  | [optional] 

### Return type

[**ICompressWrapper**](ICompressWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let displayRequestDto = DisplayRequestDto(_set: true) // DisplayRequestDto |  (optional)

FilesSettingsAPIApi.changeDownloadZipFromBody(displayRequestDto: displayRequestDto) { (response, error) in
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

# **checkDocServiceUrl**
```swift
    open class func checkDocServiceUrl(checkDocServiceUrlRequestDto: CheckDocServiceUrlRequestDto? = nil, completion: @escaping (_ data: DocServiceUrlWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/check-doc-service-url/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **checkDocServiceUrlRequestDto** | [**CheckDocServiceUrlRequestDto**](CheckDocServiceUrlRequestDto.md) |  | [optional] 

### Return type

[**DocServiceUrlWrapper**](DocServiceUrlWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let checkDocServiceUrlRequestDto = CheckDocServiceUrlRequestDto(docServiceUrl: "docServiceUrl_example", docServiceUrlInternal: "docServiceUrlInternal_example", docServiceUrlPortal: "docServiceUrlPortal_example", docServiceSignatureSecret: "docServiceSignatureSecret_example", docServiceSignatureHeader: "docServiceSignatureHeader_example", docServiceSslVerification: true) // CheckDocServiceUrlRequestDto |  (optional)

FilesSettingsAPIApi.checkDocServiceUrl(checkDocServiceUrlRequestDto: checkDocServiceUrlRequestDto) { (response, error) in
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

# **displayFileExtension**
```swift
    open class func displayFileExtension(settingsRequestDto: SettingsRequestDto? = nil, completion: @escaping (_ data: BooleanWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/display-file-extension/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **settingsRequestDto** | [**SettingsRequestDto**](SettingsRequestDto.md) |  | [optional] 

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let settingsRequestDto = SettingsRequestDto(_set: true) // SettingsRequestDto |  (optional)

FilesSettingsAPIApi.displayFileExtension(settingsRequestDto: settingsRequestDto) { (response, error) in
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

# **displayRecent**
```swift
    open class func displayRecent(displayRequestDto: DisplayRequestDto? = nil, completion: @escaping (_ data: BooleanWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/display-recent/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **displayRequestDto** | [**DisplayRequestDto**](DisplayRequestDto.md) |  | [optional] 

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let displayRequestDto = DisplayRequestDto(_set: true) // DisplayRequestDto |  (optional)

FilesSettingsAPIApi.displayRecent(displayRequestDto: displayRequestDto) { (response, error) in
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

# **externalShare**
```swift
    open class func externalShare(displayRequestDto: DisplayRequestDto? = nil, completion: @escaping (_ data: BooleanWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/external-share/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **displayRequestDto** | [**DisplayRequestDto**](DisplayRequestDto.md) |  | [optional] 

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let displayRequestDto = DisplayRequestDto(_set: true) // DisplayRequestDto |  (optional)

FilesSettingsAPIApi.externalShare(displayRequestDto: displayRequestDto) { (response, error) in
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

# **externalShareSocialMedia**
```swift
    open class func externalShareSocialMedia(displayRequestDto: DisplayRequestDto? = nil, completion: @escaping (_ data: BooleanWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/external-share-social-media/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **displayRequestDto** | [**DisplayRequestDto**](DisplayRequestDto.md) |  | [optional] 

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let displayRequestDto = DisplayRequestDto(_set: true) // DisplayRequestDto |  (optional)

FilesSettingsAPIApi.externalShareSocialMedia(displayRequestDto: displayRequestDto) { (response, error) in
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

# **forcesave**
```swift
    open class func forcesave(completion: @escaping (_ data: BooleanWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/forcesave/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


FilesSettingsAPIApi.forcesave() { (response, error) in
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

# **getAutomaticallyCleanUp**
```swift
    open class func getAutomaticallyCleanUp(completion: @escaping (_ data: AutoCleanUpDataWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-automatically-clean-up/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**AutoCleanUpDataWrapper**](AutoCleanUpDataWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


FilesSettingsAPIApi.getAutomaticallyCleanUp() { (response, error) in
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

# **getDocServiceUrl**
```swift
    open class func getDocServiceUrl(version: Bool? = nil, completion: @escaping (_ data: DocServiceUrlWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-doc-service-url/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **Bool** | Specifies whether to return the editor version or not. | [optional] 

### Return type

[**DocServiceUrlWrapper**](DocServiceUrlWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let version = true // Bool | Specifies whether to return the editor version or not. (optional)

FilesSettingsAPIApi.getDocServiceUrl(version: version) { (response, error) in
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

# **getFilesModule**
```swift
    open class func getFilesModule(completion: @escaping (_ data: ModuleWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-files-module/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**ModuleWrapper**](ModuleWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


FilesSettingsAPIApi.getFilesModule() { (response, error) in
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

# **getFilesSettings**
```swift
    open class func getFilesSettings(completion: @escaping (_ data: FilesSettingsWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-files-settings/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**FilesSettingsWrapper**](FilesSettingsWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


FilesSettingsAPIApi.getFilesSettings() { (response, error) in
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

# **hideConfirmCancelOperation**
```swift
    open class func hideConfirmCancelOperation(settingsRequestDto: SettingsRequestDto? = nil, completion: @escaping (_ data: BooleanWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/hide-confirm-cancel-operation/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **settingsRequestDto** | [**SettingsRequestDto**](SettingsRequestDto.md) |  | [optional] 

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let settingsRequestDto = SettingsRequestDto(_set: true) // SettingsRequestDto |  (optional)

FilesSettingsAPIApi.hideConfirmCancelOperation(settingsRequestDto: settingsRequestDto) { (response, error) in
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

# **hideConfirmConvert**
```swift
    open class func hideConfirmConvert(hideConfirmConvertRequestDto: HideConfirmConvertRequestDto? = nil, completion: @escaping (_ data: ModuleWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/hide-confirm-convert/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hideConfirmConvertRequestDto** | [**HideConfirmConvertRequestDto**](HideConfirmConvertRequestDto.md) |  | [optional] 

### Return type

[**ModuleWrapper**](ModuleWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let hideConfirmConvertRequestDto = HideConfirmConvertRequestDto(save: true) // HideConfirmConvertRequestDto |  (optional)

FilesSettingsAPIApi.hideConfirmConvert(hideConfirmConvertRequestDto: hideConfirmConvertRequestDto) { (response, error) in
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

# **hideConfirmRoomLifetime**
```swift
    open class func hideConfirmRoomLifetime(settingsRequestDto: SettingsRequestDto? = nil, completion: @escaping (_ data: BooleanWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/hide-confirm-room-lifetime/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **settingsRequestDto** | [**SettingsRequestDto**](SettingsRequestDto.md) |  | [optional] 

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let settingsRequestDto = SettingsRequestDto(_set: true) // SettingsRequestDto |  (optional)

FilesSettingsAPIApi.hideConfirmRoomLifetime(settingsRequestDto: settingsRequestDto) { (response, error) in
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

# **isAvailablePrivacyRoomSettings**
```swift
    open class func isAvailablePrivacyRoomSettings(completion: @escaping (_ data: BooleanWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/is-available-privacy-room-settings/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


FilesSettingsAPIApi.isAvailablePrivacyRoomSettings() { (response, error) in
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

# **keepNewFileName**
```swift
    open class func keepNewFileName(settingsRequestDto: SettingsRequestDto? = nil, completion: @escaping (_ data: BooleanWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/keep-new-file-name/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **settingsRequestDto** | [**SettingsRequestDto**](SettingsRequestDto.md) |  | [optional] 

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let settingsRequestDto = SettingsRequestDto(_set: true) // SettingsRequestDto |  (optional)

FilesSettingsAPIApi.keepNewFileName(settingsRequestDto: settingsRequestDto) { (response, error) in
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

# **setOpenEditorInSameTab**
```swift
    open class func setOpenEditorInSameTab(settingsRequestDto: SettingsRequestDto? = nil, completion: @escaping (_ data: BooleanWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-open-editor-in-same-tab/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **settingsRequestDto** | [**SettingsRequestDto**](SettingsRequestDto.md) |  | [optional] 

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let settingsRequestDto = SettingsRequestDto(_set: true) // SettingsRequestDto |  (optional)

FilesSettingsAPIApi.setOpenEditorInSameTab(settingsRequestDto: settingsRequestDto) { (response, error) in
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

# **storeForcesave**
```swift
    open class func storeForcesave(completion: @escaping (_ data: BooleanWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/store-forcesave/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


FilesSettingsAPIApi.storeForcesave() { (response, error) in
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

# **storeOriginal**
```swift
    open class func storeOriginal(settingsRequestDto: SettingsRequestDto? = nil, completion: @escaping (_ data: BooleanWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/store-original/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **settingsRequestDto** | [**SettingsRequestDto**](SettingsRequestDto.md) |  | [optional] 

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let settingsRequestDto = SettingsRequestDto(_set: true) // SettingsRequestDto |  (optional)

FilesSettingsAPIApi.storeOriginal(settingsRequestDto: settingsRequestDto) { (response, error) in
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

# **updateFileIfExist**
```swift
    open class func updateFileIfExist(settingsRequestDto: SettingsRequestDto? = nil, completion: @escaping (_ data: BooleanWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-file-if-exist/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **settingsRequestDto** | [**SettingsRequestDto**](SettingsRequestDto.md) |  | [optional] 

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let settingsRequestDto = SettingsRequestDto(_set: true) // SettingsRequestDto |  (optional)

FilesSettingsAPIApi.updateFileIfExist(settingsRequestDto: settingsRequestDto) { (response, error) in
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

