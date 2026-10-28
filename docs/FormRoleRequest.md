# FormRoleRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**roomId** | **Int** | The ID of the room the form is in. It is stored with the role as sent, so pass the room the form lives in. | [optional] 
**roleName** | **String** | The name of a role the form defines, such as the one the form author gave a group of fields. | [optional] 
**roleColor** | **String** | The color the editor marks the fields of this role with, as a hex code. | [optional] 
**userId** | **UUID** | The account that fills this role. It is notified once filling starts, unless it is the caller. | [optional] 
**sequence** | **Int** | Accepted for compatibility and ignored: the position of the role in the list sets the filling order. | [optional] 
**submitted** | **Bool** | Whether this role counts as already submitted. It is stored as sent; send false when filling starts. | [optional] 
**openedAt** | **Date** | Accepted for compatibility and ignored: the portal records when the role is opened. | [optional] 
**submissionDate** | **Date** | Accepted for compatibility and ignored: the portal records when the role is submitted. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


