# FileShareDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**access** | [**FileShare**](FileShare.md) |  | [optional] 
**sharedTo** | **JSONValue** | The user who has the access to the specified file. | [optional] 
**sharedToUser** | [**EmployeeFullDto**](EmployeeFullDto.md) |  | [optional] 
**sharedToGroup** | [**GroupSummaryDto**](GroupSummaryDto.md) |  | [optional] 
**sharedLink** | [**FileShareLink**](FileShareLink.md) |  | [optional] 
**isLocked** | **Bool** | Specifies if the access right is locked or not. | 
**isOwner** | **Bool** | Specifies if the user is an owner of the specified file or not. | 
**canEditAccess** | **Bool** | Specifies if the user can edit the access to the specified file or not. | 
**canEditInternal** | **Bool** | Indicates whether internal editing permissions are granted. | 
**canEditDenyDownload** | **Bool** | Determines whether the user has permission to modify the deny download setting for the file share. | 
**canEditExpirationDate** | **Bool** | Indicates whether the expiration date of access permissions can be edited. | 
**canRevoke** | **Bool** | Specifies whether the file sharing access can be revoked by the current user. | 
**subjectType** | [**SubjectType**](SubjectType.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


