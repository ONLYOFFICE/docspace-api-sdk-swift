# BatchRequestDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**returnSingleOperation** | **Bool** | Specifies whether to return only the current operation | [optional] 
**folderIds** | [BatchRequestDtoAllOfFolderIds] | The list of folder IDs to be copied/moved. | [optional] 
**fileIds** | [BatchRequestDtoAllOfFileIds] | The list of file IDs to be copied/moved. | [optional] 
**destFolderId** | [**BatchRequestDtoAllOfDestFolderId**](BatchRequestDtoAllOfDestFolderId.md) |  | [optional] 
**conflictResolveType** | [**FileConflictResolveType**](FileConflictResolveType.md) |  | [optional] 
**deleteAfter** | **Bool** | Specifies whether to delete the source files/folders after they are moved or copied to the destination folder. | [optional] 
**content** | **Bool** | Specifies whether to copy or move the folder content or not. | [optional] 
**toFillOut** | **Bool** | Specifies whether the file is copied for filling out | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


