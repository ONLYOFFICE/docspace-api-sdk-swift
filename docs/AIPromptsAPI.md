# AIPromptsAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**aiPromptsCreate**](AIPromptsAPI.md#aipromptscreate) | **POST** /api/2.0/ai/prompts/create | Save a prompt
[**aiPromptsCreateFolder**](AIPromptsAPI.md#aipromptscreatefolder) | **POST** /api/2.0/ai/prompts/create-folder | Create folder
[**aiPromptsDelete**](AIPromptsAPI.md#aipromptsdelete) | **DELETE** /api/2.0/ai/prompts/delete | Delete a saved prompt
[**aiPromptsDeleteFolder**](AIPromptsAPI.md#aipromptsdeletefolder) | **DELETE** /api/2.0/ai/prompts/delete-folder | Delete folder
[**aiPromptsExport**](AIPromptsAPI.md#aipromptsexport) | **GET** /api/2.0/ai/prompts/export | Export the prompt library
[**aiPromptsGetById**](AIPromptsAPI.md#aipromptsgetbyid) | **GET** /api/2.0/ai/prompts/get-by-id | Get a saved prompt
[**aiPromptsGetFolderById**](AIPromptsAPI.md#aipromptsgetfolderbyid) | **GET** /api/2.0/ai/prompts/get-folder-by-id | Get a prompt folder
[**aiPromptsImportBundle**](AIPromptsAPI.md#aipromptsimportbundle) | **POST** /api/2.0/ai/prompts/import-bundle | Import bundle
[**aiPromptsList**](AIPromptsAPI.md#aipromptslist) | **GET** /api/2.0/ai/prompts/list | List saved prompts
[**aiPromptsListFolders**](AIPromptsAPI.md#aipromptslistfolders) | **GET** /api/2.0/ai/prompts/list-folders | List folders
[**aiPromptsMove**](AIPromptsAPI.md#aipromptsmove) | **PUT** /api/2.0/ai/prompts/move | Move a prompt to a folder
[**aiPromptsRenameFolder**](AIPromptsAPI.md#aipromptsrenamefolder) | **PUT** /api/2.0/ai/prompts/rename-folder | Rename folder
[**aiPromptsUpdate**](AIPromptsAPI.md#aipromptsupdate) | **PUT** /api/2.0/ai/prompts/update | Update a saved prompt


# **aiPromptsCreate**
```swift
    open class func aiPromptsCreate(aiCreatePromptInput: AiCreatePromptInput, completion: @escaping (_ data: AiPromptMutationResult?, _ error: Error?) -> Void)
```

Saves a new prompt in the caller's own prompt library and returns it. The name has to be non-empty and unique inside its folder, and `folderId` has to name an existing folder - omit it to save the prompt at the root. Prompts are per-user: another user's library is never visible here, and no permission beyond having AI enabled is needed. The answer carries the stored prompt including the ID to use with the update, move and delete operations.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-create/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiCreatePromptInput** | [**AiCreatePromptInput**](AiCreatePromptInput.md) |  | 

### Return type

[**AiPromptMutationResult**](AiPromptMutationResult.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let aiCreatePromptInput = AiCreatePromptInput(name: "name_example", text: "text_example", folderId: "folderId_example") // AiCreatePromptInput | 

// Save a prompt
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

Creates a folder in the caller's prompt library and returns it. The name has to be non-empty and unique across that library. Folders do not nest: there is one flat level, so a folder cannot be created inside another. The answer carries the folder ID to use as `folderId` when saving or moving prompts.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-create-folder/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **String** | The name of the folder to create, as a bare JSON string. | 

### Return type

[**AiFolderMutationResult**](AiFolderMutationResult.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let body = "body_example" // String | The name of the folder to create, as a bare JSON string.

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

Deletes one saved prompt from the caller's library. The ID may be sent in the body or as a query parameter, and it is required. An ID that does not exist, or that belongs to another user, is not reported: the call answers success without deleting anything. The deletion is permanent.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-delete/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **String** | The ID of the prompt to delete, as a bare JSON string. | 

### Return type

[**AiSuccessResponse**](AiSuccessResponse.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let body = "body_example" // String | The ID of the prompt to delete, as a bare JSON string.

// Delete a saved prompt
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

Deletes a folder together with every prompt inside it, permanently. The ID is required and may be sent in the body or as a query parameter. Unlike deleting a prompt, this checks first: a folder that does not exist, and one that belongs to another user, both answer 404 - the two cases are deliberately indistinguishable, so a foreign folder cannot be probed. Move the prompts out with `PUT api/2.0/ai/prompts/move` first if they should survive.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-delete-folder/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **String** | The ID of the folder to delete, as a bare JSON string. | 

### Return type

[**AiSuccessResponse**](AiSuccessResponse.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let body = "body_example" // String | The ID of the folder to delete, as a bare JSON string.

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

Builds a versioned bundle of every prompt and folder in the caller's library and returns it, with no parameters. The bundle is self-contained: it carries its own format version so an older export can still be read back, and it is the input `POST api/2.0/ai/prompts/import-bundle` expects. This is also the only way to read the whole library at once, since listing is folder-scoped. Nothing is changed by the call.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-export/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**AiPromptBundle**](AiPromptBundle.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Export the prompt library
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

Returns one saved prompt by its ID. The ID is required and is read from the query. An ID that is unknown, or that belongs to another user, is not reported as 404: the answer is an empty body with status 200, so treat a missing payload as no such prompt. Prompt IDs come from `GET api/2.0/ai/prompts/list` or from the answer of the create operation.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-get-by-id/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | The saved prompt identifier. | 

### Return type

[**AiPrompt**](AiPrompt.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The saved prompt identifier.

// Get a saved prompt
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

Returns one folder of the caller's prompt library by its ID, without the prompts inside it. The ID is required and is read from the query. An unknown or foreign ID is not reported as 404: the answer is an empty body with status 200. This differs from the delete operation on the same ID, which does answer 404.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-get-folder-by-id/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | The prompt folder identifier. | 

### Return type

[**AiPromptFolder**](AiPromptFolder.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The prompt folder identifier.

// Get a prompt folder
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

Writes a bundle produced by `GET api/2.0/ai/prompts/export` back into the caller's library. `mode` decides how: `replace` deletes the current prompts and folders before writing, and `merge` writes the bundle on top of what is already there. The folder references inside the bundle are validated before anything is written, so a corrupt bundle is rejected whole rather than applied halfway. `replace` is destructive and cannot be undone - export first if the current library matters.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-import-bundle/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiPromptsImportBundleRequest** | [**AiPromptsImportBundleRequest**](AiPromptsImportBundleRequest.md) |  | 

### Return type

[**AiImportResult**](AiImportResult.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

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

Lists the caller's saved prompts, newest first. `folderId` scopes the answer to one folder, and omitting it - or sending it empty - lists the prompts that sit at the root rather than every prompt, because the client fetcher cannot tell an absent value from a null one. There is therefore no way to ask for the whole library in one call: walk the folders from `GET api/2.0/ai/prompts/list-folders`, or take everything at once with `GET api/2.0/ai/prompts/export`. The prompts of other users are never included.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-list/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folderId** | **String** | The prompt folder identifier. Omit to list the prompts that sit outside any folder. | [optional] 

### Return type

[**[AiPrompt]**](AiPrompt.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let folderId = "folderId_example" // String | The prompt folder identifier. Omit to list the prompts that sit outside any folder. (optional)

// List saved prompts
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

Lists every folder of the caller's prompt library, newest first, with no parameters and no pagination. Folders are flat, so the answer is a single list rather than a tree. The prompts inside them are not included - read those with `GET api/2.0/ai/prompts/list` per folder. Another user's folders are never listed.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-list-folders/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**[AiPromptFolder]**](AiPromptFolder.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

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

Moves a saved prompt into another folder, or to the root when `folderId` is omitted or null. The name is re-validated in the target folder, so the move fails when a prompt of that name already sits there - rename it first with `PUT api/2.0/ai/prompts/update`. Nothing about the prompt other than its folder changes. The answer carries the moved prompt.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-move/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiPromptsMoveRequest** | [**AiPromptsMoveRequest**](AiPromptsMoveRequest.md) |  | 

### Return type

[**AiPromptMutationResult**](AiPromptMutationResult.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let aiPromptsMoveRequest = aiPromptsMove_request(id: "id_example", folderId: "folderId_example") // AiPromptsMoveRequest | 

// Move a prompt to a folder
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

Renames a folder in the caller's prompt library, validating the new name against the folders already there. The prompts inside it are untouched and keep their IDs. The answer carries the renamed folder. A name that another folder already uses is rejected.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-rename-folder/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiPromptsRenameFolderRequest** | [**AiPromptsRenameFolderRequest**](AiPromptsRenameFolderRequest.md) |  | 

### Return type

[**AiFolderMutationResult**](AiFolderMutationResult.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

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

Changes a saved prompt and returns the stored result. Only the fields present in `updates` are written, so a partial object leaves the rest of the prompt alone. The name and the folder reference are re-validated whenever either changes, which means an update can fail on a name another prompt in the same folder already uses. Use `PUT api/2.0/ai/prompts/move` to change only the folder.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-update/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiPromptsUpdateRequest** | [**AiPromptsUpdateRequest**](AiPromptsUpdateRequest.md) |  | 

### Return type

[**AiPromptMutationResult**](AiPromptMutationResult.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let aiPromptsUpdateRequest = aiPromptsUpdate_request(id: "id_example", updates: aiPromptsUpdate_request_updates(name: "name_example", text: "text_example", folderId: "folderId_example")) // AiPromptsUpdateRequest | 

// Update a saved prompt
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

