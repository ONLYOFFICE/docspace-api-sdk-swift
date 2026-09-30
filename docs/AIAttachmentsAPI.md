# AIAttachmentsAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**aiAttachmentsDelete**](AIAttachmentsAPI.md#aiattachmentsdelete) | **DELETE** /api/2.0/ai/attachments/delete | Delete one attachment
[**aiAttachmentsDeleteMany**](AIAttachmentsAPI.md#aiattachmentsdeletemany) | **DELETE** /api/2.0/ai/attachments/delete-many | Delete many
[**aiAttachmentsGet**](AIAttachmentsAPI.md#aiattachmentsget) | **POST** /api/2.0/ai/attachments/get | Get one attachment
[**aiAttachmentsGetMany**](AIAttachmentsAPI.md#aiattachmentsgetmany) | **POST** /api/2.0/ai/attachments/get-many | Get many
[**aiAttachmentsGetSuggestedQuestions**](AIAttachmentsAPI.md#aiattachmentsgetsuggestedquestions) | **POST** /api/2.0/ai/attachments/suggested-questions | Get suggested questions
[**aiAttachmentsLinkToMessage**](AIAttachmentsAPI.md#aiattachmentslinktomessage) | **POST** /api/2.0/ai/attachments/link-to-message | Link to message
[**aiAttachmentsSaveFile**](AIAttachmentsAPI.md#aiattachmentssavefile) | **POST** /api/2.0/ai/attachments/save-file | Save file
[**aiAttachmentsSaveFilesMany**](AIAttachmentsAPI.md#aiattachmentssavefilesmany) | **POST** /api/2.0/ai/attachments/save-files-many | Save files many


# **aiAttachmentsDelete**
```swift
    open class func aiAttachmentsDelete(body: String, completion: @escaping (_ data: AiSuccessResponse?, _ error: Error?) -> Void)
```

Permanently deletes one attachment, whether it is still a draft or already bound to a message. The ID is not validated here, so a malformed one surfaces as an error relayed from storage rather than as a 400, and an ID that does not exist answers success without deleting anything. Deleting a bound attachment leaves the message in place without it. The deletion cannot be undone.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-attachments-delete/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **String** | The ID of the attachment to delete, as a bare JSON string. | 

### Return type

[**AiSuccessResponse**](AiSuccessResponse.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let body = "body_example" // String | The ID of the attachment to delete, as a bare JSON string.

// Delete one attachment
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

Permanently deletes several attachments in one round trip. `ids` is optional and an absent value is treated as an empty list, so a malformed request quietly deletes nothing instead of failing. IDs that do not exist are skipped without being reported, so the answer confirms only that the call was accepted. The deletions cannot be undone.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-attachments-delete-many/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**[String]**](String.md) | The IDs of the attachments to delete, as a bare JSON array of strings. | 

### Return type

[**AiSuccessResponse**](AiSuccessResponse.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let requestBody = ["property_example"] // [String] | The IDs of the attachments to delete, as a bare JSON array of strings.

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

Returns one attachment by its ID, whether it is still a draft or already bound to a message. The ID is required and has to be a non-empty string. An ID that no longer exists is not reported as 404: the answer is a null body with status 200, so treat a missing payload as no such attachment. Use `POST api/2.0/ai/attachments/get-many` to read several at once.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-attachments-get/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **String** | The ID of the attachment to read, as a bare JSON string. | 

### Return type

[**AiAttachment**](AiAttachment.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let body = "body_example" // String | The ID of the attachment to read, as a bare JSON string.

// Get one attachment
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

Returns several attachments in one call, aligned by position with the `ids` that were sent, so the answer can be zipped straight onto the request. An ID that no longer exists leaves its slot empty rather than shortening the list, which is how a caller tells which of them are gone. `ids` has to be present and non-empty - an empty batch is rejected rather than answered with an empty list. Nothing is changed by the call.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-attachments-get-many/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**[String]**](String.md) | The IDs of the attachments to read, as a bare JSON array of strings. The answer is aligned with this array by position. | 

### Return type

[**[AiAttachment]**](AiAttachment.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let requestBody = ["property_example"] // [String] | The IDs of the attachments to read, as a bare JSON array of strings. The answer is aligned with this array by position.

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

# **aiAttachmentsGetSuggestedQuestions**
```swift
    open class func aiAttachmentsGetSuggestedQuestions(requestBody: [String: JSONValue?], completion: @escaping (_ data: AiSuccessResponse?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-attachments-get-suggested-questions/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**[String: JSONValue?]**](JSONValue.md) |  | 

### Return type

[**AiSuccessResponse**](AiSuccessResponse.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let requestBody = "TODO" // [String: JSONValue?] | 

// Get suggested questions
AIAttachmentsAPIApi.aiAttachmentsGetSuggestedQuestions(requestBody: requestBody) { (response, error) in
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

Binds draft attachments to the chat message that owns them, after that message has been persisted, so that deleting the message removes them too. All three of `ids`, `messageId` and `threadId` are required, and the references are verified rather than trusted: an unknown message answers 404, a message that belongs to a different thread answers 400, and attachments that no longer exist answer 404 naming each missing ID. That verification exists because the underlying binding call skips unknown IDs silently, which used to report success for a link that had not happened. Drafts stay unbound until this succeeds.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-attachments-link-to-message/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiAttachmentsLinkToMessageRequest** | [**AiAttachmentsLinkToMessageRequest**](AiAttachmentsLinkToMessageRequest.md) |  | 

### Return type

[**AiSuccessResponse**](AiSuccessResponse.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

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

Stores one file attachment as a draft and returns it, so its ID can be attached to a message later. `input` carries the host `path` - the DocSpace entry ID the AI backend resolves server-side - the text `content` already extracted from that file, the ONLYOFFICE numeric file `type`, and optionally a `title`; the text is what the model reads, so this operation does not open the file itself. Archives are refused outright, whatever their declared name says. Drafts are not bound to a conversation until `POST api/2.0/ai/attachments/link-to-message` is called, so an unlinked draft outlives the round that created it.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-attachments-save-file/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiAttachmentsSaveFileRequest** | [**AiAttachmentsSaveFileRequest**](AiAttachmentsSaveFileRequest.md) |  | 

### Return type

[**AiAttachment**](AiAttachment.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

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

Stores several file attachments as drafts in one round trip and returns them in the order they were sent. Each entry is validated exactly as the single-file operation validates its `input`, and the first bad one rejects the whole batch with its index named in the message - nothing is stored. `inputs` has to be present and an array: an absent or null value is a malformed request rather than an empty batch, and only an explicit empty array means no files. Follow up with `POST api/2.0/ai/attachments/link-to-message` to bind the drafts to a message.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-attachments-save-files-many/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiAttachmentsSaveFilesManyRequest** | [**AiAttachmentsSaveFilesManyRequest**](AiAttachmentsSaveFilesManyRequest.md) |  | 

### Return type

[**[AiAttachment]**](AiAttachment.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

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

