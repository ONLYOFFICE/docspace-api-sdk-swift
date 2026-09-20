# AIExportAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**aiExportTextToDocx**](AIExportAPI.md#aiexporttexttodocx) | **POST** /api/2.0/ai/text-to-docx | Start markdown → docx export


# **aiExportTextToDocx**
```swift
    open class func aiExportTextToDocx(aiExportTextToDocxRequest: AiExportTextToDocxRequest, completion: @escaping (_ data: AiExportTextToDocx202Response?, _ error: Error?) -> Void)
```

Queues a markdown-to-docx export and answers 202 as soon as the job is accepted, without waiting for it. `title`, `content` and `folderId` are all required, and a `content` of only whitespace counts as missing even though it is not empty. The conversion runs in the AI worker, which saves the .docx into the target folder - an agent room resolves to its own result-storage subfolder - so there is nothing to poll here: completion arrives as the ordinary folder-modified socket event. This route accepts a body of up to 15 MB rather than the 100 KB the rest of the API allows, because a whole thread transcript is sent in one request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-export-text-to-docx/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiExportTextToDocxRequest** | [**AiExportTextToDocxRequest**](AiExportTextToDocxRequest.md) |  | 

### Return type

[**AiExportTextToDocx202Response**](AiExportTextToDocx202Response.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let aiExportTextToDocxRequest = aiExportTextToDocx_request(title: "title_example", content: "content_example", folderId: aiExportTextToDocx_request_folderId()) // AiExportTextToDocxRequest | 

// Start markdown → docx export
AIExportAPIApi.aiExportTextToDocx(aiExportTextToDocxRequest: aiExportTextToDocxRequest) { (response, error) in
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

