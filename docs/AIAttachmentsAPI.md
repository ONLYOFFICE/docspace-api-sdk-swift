# AIAttachmentsAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**aiAttachmentsDelete**](AIAttachmentsAPI.md#aiattachmentsdelete) | **DELETE** /api/2.0/ai/attachments/delete | Delete
[**aiAttachmentsDeleteMany**](AIAttachmentsAPI.md#aiattachmentsdeletemany) | **DELETE** /api/2.0/ai/attachments/delete-many | Delete many
[**aiAttachmentsGet**](AIAttachmentsAPI.md#aiattachmentsget) | **POST** /api/2.0/ai/attachments/get | Get
[**aiAttachmentsGetMany**](AIAttachmentsAPI.md#aiattachmentsgetmany) | **POST** /api/2.0/ai/attachments/get-many | Get many
[**aiAttachmentsLinkToMessage**](AIAttachmentsAPI.md#aiattachmentslinktomessage) | **POST** /api/2.0/ai/attachments/link-to-message | Link to message
[**aiAttachmentsSaveFile**](AIAttachmentsAPI.md#aiattachmentssavefile) | **POST** /api/2.0/ai/attachments/save-file | Save file
[**aiAttachmentsSaveFilesMany**](AIAttachmentsAPI.md#aiattachmentssavefilesmany) | **POST** /api/2.0/ai/attachments/save-files-many | Save files many


# **aiAttachmentsDelete**
```swift
    open class func aiAttachmentsDelete(body: String, completion: @escaping (_ data: AiSuccessResponse?, _ error: Error?) -> Void)
```

Permanently deletes one attachment, whether it is still a draft or already linked to a message.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-attachments-delete/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **String** |  | 

### Return type

[**AiSuccessResponse**](AiSuccessResponse.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let body = "body_example" // String | 

// Delete
AIAttachmentsAPIApi.aiAttachmentsDelete(body: body) { (response, error) in
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

# **aiAttachmentsDeleteMany**
```swift
    open class func aiAttachmentsDeleteMany(requestBody: [String], completion: @escaping (_ data: AiSuccessResponse?, _ error: Error?) -> Void)
```

Permanently deletes a batch of attachments in a single round trip.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-attachments-delete-many/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**[String]**](String.md) |  | 

### Return type

[**AiSuccessResponse**](AiSuccessResponse.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let requestBody = ["property_example"] // [String] | 

// Delete many
AIAttachmentsAPIApi.aiAttachmentsDeleteMany(requestBody: requestBody) { (response, error) in
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

# **aiAttachmentsGet**
```swift
    open class func aiAttachmentsGet(body: String, completion: @escaping (_ data: AiAttachment?, _ error: Error?) -> Void)
```

Returns one attachment by identifier.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-attachments-get/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **String** |  | 

### Return type

[**AiAttachment**](AiAttachment.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let body = "body_example" // String | 

// Get
AIAttachmentsAPIApi.aiAttachmentsGet(body: body) { (response, error) in
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

# **aiAttachmentsGetMany**
```swift
    open class func aiAttachmentsGetMany(requestBody: [String], completion: @escaping (_ data: [AiAttachment]?, _ error: Error?) -> Void)
```

Returns a batch of attachments, preserving the requested order; an identifier that no longer exists comes back empty.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-attachments-get-many/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**[String]**](String.md) |  | 

### Return type

[**[AiAttachment]**](AiAttachment.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let requestBody = ["property_example"] // [String] | 

// Get many
AIAttachmentsAPIApi.aiAttachmentsGetMany(requestBody: requestBody) { (response, error) in
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

# **aiAttachmentsLinkToMessage**
```swift
    open class func aiAttachmentsLinkToMessage(aiAttachmentsLinkToMessageRequest: AiAttachmentsLinkToMessageRequest, completion: @escaping (_ data: AiSuccessResponse?, _ error: Error?) -> Void)
```

Binds draft attachments to the chat message that owns them, once that message has been persisted, so deleting the message removes them too. Identifiers that no longer exist are skipped.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-attachments-link-to-message/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiAttachmentsLinkToMessageRequest** | [**AiAttachmentsLinkToMessageRequest**](AiAttachmentsLinkToMessageRequest.md) |  | 

### Return type

[**AiSuccessResponse**](AiSuccessResponse.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let aiAttachmentsLinkToMessageRequest = aiAttachmentsLinkToMessage_request(ids: ["ids_example"], messageId: "messageId_example", threadId: "threadId_example") // AiAttachmentsLinkToMessageRequest | 

// Link to message
AIAttachmentsAPIApi.aiAttachmentsLinkToMessage(aiAttachmentsLinkToMessageRequest: aiAttachmentsLinkToMessageRequest) { (response, error) in
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

# **aiAttachmentsSaveFile**
```swift
    open class func aiAttachmentsSaveFile(aiAttachmentsSaveFileRequest: AiAttachmentsSaveFileRequest, completion: @escaping (_ data: AiAttachment?, _ error: Error?) -> Void)
```

Stores one file attachment as a draft, carrying the host-extracted text of the file. Prefer `save-files-many` when adding several files at once so they land as one round trip.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-attachments-save-file/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiAttachmentsSaveFileRequest** | [**AiAttachmentsSaveFileRequest**](AiAttachmentsSaveFileRequest.md) |  | 

### Return type

[**AiAttachment**](AiAttachment.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let aiAttachmentsSaveFileRequest = aiAttachmentsSaveFile_request(input: aiAttachmentsSaveFile_request_input(path: "path_example", content: "content_example", type: 123, title: "title_example"), entityId: "entityId_example") // AiAttachmentsSaveFileRequest | 

// Save file
AIAttachmentsAPIApi.aiAttachmentsSaveFile(aiAttachmentsSaveFileRequest: aiAttachmentsSaveFileRequest) { (response, error) in
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

# **aiAttachmentsSaveFilesMany**
```swift
    open class func aiAttachmentsSaveFilesMany(aiAttachmentsSaveFilesManyRequest: AiAttachmentsSaveFilesManyRequest, completion: @escaping (_ data: [AiAttachment]?, _ error: Error?) -> Void)
```

Stores a batch of file attachments as drafts in a single round trip. The returned records keep the order of the input.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-attachments-save-files-many/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiAttachmentsSaveFilesManyRequest** | [**AiAttachmentsSaveFilesManyRequest**](AiAttachmentsSaveFilesManyRequest.md) |  | 

### Return type

[**[AiAttachment]**](AiAttachment.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let aiAttachmentsSaveFilesManyRequest = aiAttachmentsSaveFilesMany_request(inputs: [aiAttachmentsSaveFile_request_input(path: "path_example", content: "content_example", type: 123, title: "title_example")], entityId: "entityId_example") // AiAttachmentsSaveFilesManyRequest | 

// Save files many
AIAttachmentsAPIApi.aiAttachmentsSaveFilesMany(aiAttachmentsSaveFilesManyRequest: aiAttachmentsSaveFilesManyRequest) { (response, error) in
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

