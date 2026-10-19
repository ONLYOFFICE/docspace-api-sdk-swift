# EntryTemplateDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Int** | The template ID. | [optional] 
**name** | **String** | The template name. | [optional] 
**visible** | **Bool** | Specifies if the template is visible in the UI pickers. | [optional] 
**cascade** | **Bool** | Whether the template cascades from this entry to the folders and files below it. Only a folder or a room can  cascade; on a file the value is always false. | [optional] 
**conflictResolveType** | [**MetadataConflictResolveType**](MetadataConflictResolveType.md) | How the cascade of this entry treats a value an entry below already holds. Null while the template does not  cascade from this entry. | [optional] 
**fields** | [EntryFieldDto] | The template fields with their values on the entry. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


