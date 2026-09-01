# ApiKeyResponseDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** | The API key unique identifier. | 
**name** | **String** | The API key name. | 
**key** | **String** | The full API key value (only returned when creating a new key). | 
**keyPostfix** | **String** | The API key postfix (used for identification). | [optional] 
**permissions** | **[String]** | The list of permissions granted to the API key. | 
**lastUsed** | **Date** | The date and time when the API key was last used. | [optional] 
**createOn** | **Date** | The date and time when the API key was created. | [optional] 
**createBy** | [**EmployeeDto**](EmployeeDto.md) | The identifier of the user who created the API key. | [optional] 
**expiresAt** | **Date** | The date and time when the API key expires. | [optional] 
**isActive** | **Bool** | Indicates whether the API key is active or not. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


