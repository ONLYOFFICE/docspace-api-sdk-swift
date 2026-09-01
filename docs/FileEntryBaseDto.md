# FileEntryBaseDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **String** | The file entry title. | [optional] 
**access** | [**FileShare**](FileShare.md) | The access rights to the file entry. | [optional] 
**sharedBy** | [**EmployeeDto**](EmployeeDto.md) | Provides information about the employee who shared the file or folder. | [optional] 
**ownedBy** | [**EmployeeDto**](EmployeeDto.md) | The information about the employee who owns the file entry. | [optional] 
**shared** | **Bool** | Specifies if the file entry is shared via link or not. | [optional] 
**sharedForUser** | **Bool** | Specifies if the file entry is shared for user or not. | [optional] 
**sharedExternal** | **Bool** | Specifies if the file entry is shared via a public (non-internal) external link. | [optional] 
**parentShared** | **Bool** | Indicates whether the parent entity is shared. | [optional] 
**shortWebUrl** | **String** | The short Web URL. | [optional] 
**created** | **Date** | The creation date and time of the file entry. | [optional] 
**createdBy** | [**EmployeeDto**](EmployeeDto.md) | The file entry author. | [optional] 
**updated** | **Date** | The last date and time when the file entry was updated. | [optional] 
**autoDelete** | **Date** | The date and time when the file entry will be automatically deleted. | [optional] 
**rootFolderType** | [**FolderType**](FolderType.md) | The root folder type of the file entry. | [optional] 
**parentRoomType** | [**FolderType**](FolderType.md) | The parent room type of the file entry. | [optional] 
**updatedBy** | [**EmployeeDto**](EmployeeDto.md) | The user who updated the file entry. | [optional] 
**providerItem** | **Bool** | Specifies if the file entry provider is specified or not. | [optional] 
**providerKey** | **String** | The provider key of the file entry. | [optional] 
**providerId** | **Int** | The provider ID of the file entry. | [optional] 
**order** | **String** | The order of the file entry. | [optional] 
**isFavorite** | **Bool** | Specifies if the file is a favorite or not. | [optional] 
**fileEntryType** | [**FileEntryType**](FileEntryType.md) | The file entry type. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


