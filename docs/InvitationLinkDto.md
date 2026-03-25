# InvitationLinkDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** | The ID of the invitation link. | [optional] 
**employeeType** | [**EmployeeType**](EmployeeType.md) |  | 
**expiration** | [**ApiDateTime**](ApiDateTime.md) |  | [optional] 
**isExpired** | **Bool** | Indicates whether the invitation link has expired. | [optional] 
**maxUseCount** | **Int** | The maximum number of times the invitation link can be used. | [optional] 
**currentUseCount** | **Int** | The current number of times the invitation link has been used. | [optional] 
**url** | **String** | The URL of the invitation link. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


