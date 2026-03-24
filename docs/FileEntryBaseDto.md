# FileEntryBaseDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **String** | The file entry title. | [optional] 
**access** | [**FileShare**](FileShare.md) |  | [optional] 
**sharedBy** | [**EmployeeDto**](EmployeeDto.md) |  | [optional] 
**ownedBy** | [**EmployeeDto**](EmployeeDto.md) |  | [optional] 
**shared** | **Bool** | Specifies if the file entry is shared via link or not. | [optional] 
**sharedForUser** | **Bool** | Specifies if the file entry is shared for user or not. | [optional] 
**parentShared** | **Bool** | Indicates whether the parent entity is shared. | [optional] 
**shortWebUrl** | **String** | The short Web URL. | [optional] 
**created** | [**ApiDateTime**](ApiDateTime.md) |  | [optional] 
**createdBy** | [**EmployeeDto**](EmployeeDto.md) |  | [optional] 
**updated** | [**ApiDateTime**](ApiDateTime.md) |  | [optional] 
**autoDelete** | [**ApiDateTime**](ApiDateTime.md) |  | [optional] 
**rootFolderType** | [**FolderType**](FolderType.md) |  | [optional] 
**parentRoomType** | [**FolderType**](FolderType.md) |  | [optional] 
**updatedBy** | [**EmployeeDto**](EmployeeDto.md) |  | [optional] 
**providerItem** | **Bool** | Specifies if the file entry provider is specified or not. | [optional] 
**providerKey** | **String** | The provider key of the file entry. | [optional] 
**providerId** | **Int** | The provider ID of the file entry. | [optional] 
**order** | **String** | The order of the file entry. | [optional] 
**isFavorite** | **Bool** | Specifies if the file is a favorite or not. | [optional] 
**fileEntryType** | [**FileEntryType**](FileEntryType.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


