# AIPromptsAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**aiPromptsCreate**](AIPromptsAPI.md#aipromptscreate) | **POST** /api/2.0/ai/prompts/create | Create
[**aiPromptsCreateFolder**](AIPromptsAPI.md#aipromptscreatefolder) | **POST** /api/2.0/ai/prompts/create-folder | Create folder
[**aiPromptsDelete**](AIPromptsAPI.md#aipromptsdelete) | **DELETE** /api/2.0/ai/prompts/delete | Delete
[**aiPromptsDeleteFolder**](AIPromptsAPI.md#aipromptsdeletefolder) | **DELETE** /api/2.0/ai/prompts/delete-folder | Delete folder
[**aiPromptsExport**](AIPromptsAPI.md#aipromptsexport) | **GET** /api/2.0/ai/prompts/export | Export
[**aiPromptsGetById**](AIPromptsAPI.md#aipromptsgetbyid) | **GET** /api/2.0/ai/prompts/get-by-id | Get by id
[**aiPromptsGetFolderById**](AIPromptsAPI.md#aipromptsgetfolderbyid) | **GET** /api/2.0/ai/prompts/get-folder-by-id | Get folder by id
[**aiPromptsImportBundle**](AIPromptsAPI.md#aipromptsimportbundle) | **POST** /api/2.0/ai/prompts/import-bundle | Import bundle
[**aiPromptsList**](AIPromptsAPI.md#aipromptslist) | **GET** /api/2.0/ai/prompts/list | List
[**aiPromptsListFolders**](AIPromptsAPI.md#aipromptslistfolders) | **GET** /api/2.0/ai/prompts/list-folders | List folders
[**aiPromptsMove**](AIPromptsAPI.md#aipromptsmove) | **PUT** /api/2.0/ai/prompts/move | Move
[**aiPromptsRenameFolder**](AIPromptsAPI.md#aipromptsrenamefolder) | **PUT** /api/2.0/ai/prompts/rename-folder | Rename folder
[**aiPromptsUpdate**](AIPromptsAPI.md#aipromptsupdate) | **PUT** /api/2.0/ai/prompts/update | Update


# **aiPromptsCreate**
```swift
    open class func aiPromptsCreate(aiCreatePromptInput: AiCreatePromptInput, completion: @escaping (_ data: AiPromptMutationResult?, _ error: Error?) -> Void)
```

Saves a new prompt. The name must be non-empty and unique inside its folder, and `folderId` must point at an existing folder - omit it for the root.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-create/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiCreatePromptInput** | [**AiCreatePromptInput**](AiCreatePromptInput.md) |  | 

### Return type

[**AiPromptMutationResult**](AiPromptMutationResult.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let aiCreatePromptInput = AiCreatePromptInput(name: "name_example", text: "text_example", folderId: "folderId_example") // AiCreatePromptInput | 

// Create
AIPromptsAPIApi.aiPromptsCreate(aiCreatePromptInput: aiCreatePromptInput) { (response, error) in
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

# **aiPromptsCreateFolder**
```swift
    open class func aiPromptsCreateFolder(body: String, completion: @escaping (_ data: AiFolderMutationResult?, _ error: Error?) -> Void)
```

Creates a prompt folder. The name must be non-empty and unique across the portal - prompt folders do not nest.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-create-folder/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **String** |  | 

### Return type

[**AiFolderMutationResult**](AiFolderMutationResult.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let body = "body_example" // String | 

// Create folder
AIPromptsAPIApi.aiPromptsCreateFolder(body: body) { (response, error) in
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

# **aiPromptsDelete**
```swift
    open class func aiPromptsDelete(body: String, completion: @escaping (_ data: AiSuccessResponse?, _ error: Error?) -> Void)
```

Deletes a saved prompt. Does nothing when it no longer exists.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-delete/).

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
AIPromptsAPIApi.aiPromptsDelete(body: body) { (response, error) in
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

# **aiPromptsDeleteFolder**
```swift
    open class func aiPromptsDeleteFolder(body: String, completion: @escaping (_ data: AiSuccessResponse?, _ error: Error?) -> Void)
```

Deletes a prompt folder together with the prompts inside it.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-delete-folder/).

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

// Delete folder
AIPromptsAPIApi.aiPromptsDeleteFolder(body: body) { (response, error) in
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

# **aiPromptsExport**
```swift
    open class func aiPromptsExport(completion: @escaping (_ data: AiPromptBundle?, _ error: Error?) -> Void)
```

Builds a self-contained, versioned bundle of every saved prompt and folder, ready for `import-bundle`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-export/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**AiPromptBundle**](AiPromptBundle.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Export
AIPromptsAPIApi.aiPromptsExport() { (response, error) in
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

# **aiPromptsGetById**
```swift
    open class func aiPromptsGetById(id: String, completion: @escaping (_ data: AiPrompt?, _ error: Error?) -> Void)
```

Returns one saved prompt, or an empty result when the identifier is unknown.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-get-by-id/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | The saved prompt identifier. | 

### Return type

[**AiPrompt**](AiPrompt.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The saved prompt identifier.

// Get by id
AIPromptsAPIApi.aiPromptsGetById(id: id) { (response, error) in
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

# **aiPromptsGetFolderById**
```swift
    open class func aiPromptsGetFolderById(id: String, completion: @escaping (_ data: AiPromptFolder?, _ error: Error?) -> Void)
```

Returns one prompt folder, or an empty result when the identifier is unknown.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-get-folder-by-id/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | The prompt folder identifier. | 

### Return type

[**AiPromptFolder**](AiPromptFolder.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The prompt folder identifier.

// Get folder by id
AIPromptsAPIApi.aiPromptsGetFolderById(id: id) { (response, error) in
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

# **aiPromptsImportBundle**
```swift
    open class func aiPromptsImportBundle(aiPromptsImportBundleRequest: AiPromptsImportBundleRequest, completion: @escaping (_ data: AiImportResult?, _ error: Error?) -> Void)
```

Restores a prompt bundle. `replace` wipes the current prompts and folders before writing the bundle, `merge` writes the bundle on top of what is already there; both validate the folder references inside the bundle before any write, so a corrupt bundle is rejected whole.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-import-bundle/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiPromptsImportBundleRequest** | [**AiPromptsImportBundleRequest**](AiPromptsImportBundleRequest.md) |  | 

### Return type

[**AiImportResult**](AiImportResult.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let aiPromptsImportBundleRequest = aiPromptsImportBundle_request(bundle: AiPromptBundle(version: 123, folders: [AiPromptFolder(id: "id_example", name: "name_example", createdAt: 123, updatedAt: 123)], prompts: [AiPrompt(id: "id_example", name: "name_example", text: "text_example", folderId: "folderId_example", createdAt: 123, updatedAt: 123)]), options: aiPromptsImportBundle_request_options(mode: AiImportMode())) // AiPromptsImportBundleRequest | 

// Import bundle
AIPromptsAPIApi.aiPromptsImportBundle(aiPromptsImportBundleRequest: aiPromptsImportBundleRequest) { (response, error) in
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

# **aiPromptsList**
```swift
    open class func aiPromptsList(folderId: String? = nil, completion: @escaping (_ data: [AiPrompt]?, _ error: Error?) -> Void)
```

Lists saved prompts. Scope the answer to one folder, ask for the root-level prompts only, or omit the folder to get every prompt newest first.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-list/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folderId** | **String** | The prompt folder identifier. Omit to list the prompts that sit outside any folder. | [optional] 

### Return type

[**[AiPrompt]**](AiPrompt.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let folderId = "folderId_example" // String | The prompt folder identifier. Omit to list the prompts that sit outside any folder. (optional)

// List
AIPromptsAPIApi.aiPromptsList(folderId: folderId) { (response, error) in
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

# **aiPromptsListFolders**
```swift
    open class func aiPromptsListFolders(completion: @escaping (_ data: [AiPromptFolder]?, _ error: Error?) -> Void)
```

Lists the prompt folders, newest first.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-list-folders/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**[AiPromptFolder]**](AiPromptFolder.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// List folders
AIPromptsAPIApi.aiPromptsListFolders() { (response, error) in
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

# **aiPromptsMove**
```swift
    open class func aiPromptsMove(aiPromptsMoveRequest: AiPromptsMoveRequest, completion: @escaping (_ data: AiPromptMutationResult?, _ error: Error?) -> Void)
```

Moves a saved prompt into another folder, or to the root. The name is re-validated in the target folder, so the move fails when a prompt of that name is already there.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-move/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiPromptsMoveRequest** | [**AiPromptsMoveRequest**](AiPromptsMoveRequest.md) |  | 

### Return type

[**AiPromptMutationResult**](AiPromptMutationResult.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let aiPromptsMoveRequest = aiPromptsMove_request(id: "id_example", folderId: "folderId_example") // AiPromptsMoveRequest | 

// Move
AIPromptsAPIApi.aiPromptsMove(aiPromptsMoveRequest: aiPromptsMoveRequest) { (response, error) in
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

# **aiPromptsRenameFolder**
```swift
    open class func aiPromptsRenameFolder(aiPromptsRenameFolderRequest: AiPromptsRenameFolderRequest, completion: @escaping (_ data: AiFolderMutationResult?, _ error: Error?) -> Void)
```

Renames a prompt folder, validating the new name against the existing folders.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-rename-folder/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiPromptsRenameFolderRequest** | [**AiPromptsRenameFolderRequest**](AiPromptsRenameFolderRequest.md) |  | 

### Return type

[**AiFolderMutationResult**](AiFolderMutationResult.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let aiPromptsRenameFolderRequest = aiPromptsRenameFolder_request(id: "id_example", name: "name_example") // AiPromptsRenameFolderRequest | 

// Rename folder
AIPromptsAPIApi.aiPromptsRenameFolder(aiPromptsRenameFolderRequest: aiPromptsRenameFolderRequest) { (response, error) in
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

# **aiPromptsUpdate**
```swift
    open class func aiPromptsUpdate(aiPromptsUpdateRequest: AiPromptsUpdateRequest, completion: @escaping (_ data: AiPromptMutationResult?, _ error: Error?) -> Void)
```

Updates a saved prompt. The name and the folder reference are re-validated whenever either of them changes.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-update/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiPromptsUpdateRequest** | [**AiPromptsUpdateRequest**](AiPromptsUpdateRequest.md) |  | 

### Return type

[**AiPromptMutationResult**](AiPromptMutationResult.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let aiPromptsUpdateRequest = aiPromptsUpdate_request(id: "id_example", updates: aiPromptsUpdate_request_updates(name: "name_example", text: "text_example", folderId: "folderId_example")) // AiPromptsUpdateRequest | 

// Update
AIPromptsAPIApi.aiPromptsUpdate(aiPromptsUpdateRequest: aiPromptsUpdateRequest) { (response, error) in
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

