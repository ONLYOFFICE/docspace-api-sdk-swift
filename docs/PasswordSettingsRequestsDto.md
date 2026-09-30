# PasswordSettingsRequestsDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**minLength** | **Int** | The shortest password the portal will accept. It has to sit between the floor the installation is configured  with, 8 characters unless it was changed, and the ceiling of 30; a value outside that is refused with 400. | 
**upperCase** | **Bool** | Whether a password must contain at least one uppercase letter. There is no partial update on this body, so  leaving the flag out stores it as `false` and drops the requirement. | [optional] 
**digits** | **Bool** | Whether a password must contain at least one digit. Leaving the flag out stores it as `false` and drops the  requirement. | [optional] 
**specSymbols** | **Bool** | Whether a password must contain at least one special symbol. Leaving the flag out stores it as `false` and  drops the requirement. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


