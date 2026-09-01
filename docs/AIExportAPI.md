# AIExportAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**aiExportTextToDocx**](AIExportAPI.md#aiexporttexttodocx) | **POST** /api/2.0/ai/text-to-docx | Start markdown → docx export


# **aiExportTextToDocx**
```swift
    open class func aiExportTextToDocx(aiExportTextToDocxRequest: AiExportTextToDocxRequest, completion: @escaping (_ data: AiExportTextToDocx200Response?, _ error: Error?) -> Void)
```

Starts an asynchronous markdown-to-docx export. The response only acknowledges the task: the AI Worker converts the content and saves the .docx into the target folder (an agent room resolves to its result-storage subfolder), and completion reaches the client as the usual folder-modified socket event.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-export-text-to-docx/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiExportTextToDocxRequest** | [**AiExportTextToDocxRequest**](AiExportTextToDocxRequest.md) |  | 

### Return type

[**AiExportTextToDocx200Response**](AiExportTextToDocx200Response.md)

### Authorization

No authorization required

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

