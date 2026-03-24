# ApiKeyResponseDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** | The API key unique identifier. | 
**name** | **String** | The API key name. | 
**key** | **String** | The full API key value (only returned when creating a new key). | 
**keyPostfix** | **String** | The API key postfix (used for identification). | [optional] 
**permissions** | **[String]** | The list of permissions granted to the API key. | 
**lastUsed** | [**ApiDateTime**](ApiDateTime.md) |  | [optional] 
**createOn** | [**ApiDateTime**](ApiDateTime.md) |  | [optional] 
**createBy** | [**EmployeeDto**](EmployeeDto.md) |  | [optional] 
**expiresAt** | [**ApiDateTime**](ApiDateTime.md) |  | [optional] 
**isActive** | **Bool** | Indicates whether the API key is active or not. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


