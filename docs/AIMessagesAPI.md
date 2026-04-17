# AIMessagesAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**exportMessage**](AIMessagesAPI.md#exportmessage) | **POST** /api/2.0/ai/messages/{messageId}/export | Export a single AI message to a document


# **exportMessage**
```swift
    open class func exportMessage(messageId: Int, exportMessageRequestBody: ExportMessageRequestBody, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Exports a specific AI chat message as a document into the specified folder. The system verifies that the message exists  and belongs to a chat accessible by the current user, then publishes an asynchronous export task to the event bus.  The exported document will be created in the target folder with the given title once the background task completes.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/export-message/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **messageId** | **Int** | The unique identifier of the AI chat message to export. | 
 **exportMessageRequestBody** | [**ExportMessageRequestBody**](ExportMessageRequestBody.md) | The export parameters including destination folder and file title. | 

### Return type

Void (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let messageId = 987 // Int | The unique identifier of the AI chat message to export.
let exportMessageRequestBody = ExportMessageRequestBody(folderId: ExportChatRequestBody_folderId(), title: "title_example") // ExportMessageRequestBody | The export parameters including destination folder and file title.

// Export a single AI message to a document
AIMessagesAPIApi.exportMessage(messageId: messageId, exportMessageRequestBody: exportMessageRequestBody) { (response, error) in
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

