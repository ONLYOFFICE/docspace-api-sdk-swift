# UpdateMemberRequestDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**userId** | **String** | The user ID. | [optional] 
**disable** | **Bool** | Specifies whether to disable a user or not. | [optional] 
**email** | **String** | The user email address. | [optional] 
**isUser** | **Bool** | Specifies if this is a guest or a user. | [optional] 
**firstName** | **String** | The user first name. | [optional] 
**lastName** | **String** | The user last name. | [optional] 
**department** | **[UUID]** | The list of the user departments. | [optional] 
**title** | **String** | The user title. | [optional] 
**location** | **String** | The user location. | [optional] 
**sex** | [**SexEnum**](SexEnum.md) |  | [optional] 
**birthday** | [**ApiDateTime**](ApiDateTime.md) |  | [optional] 
**worksfrom** | [**ApiDateTime**](ApiDateTime.md) |  | [optional] 
**comment** | **String** | The user comment. | [optional] 
**contacts** | [Contact] | The list of the user contacts. | [optional] 
**files** | **String** | The user avatar photo URL. | [optional] 
**spam** | **Bool** | Specifies if tips, updates and offers are allowed to be sent to the user or not. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


