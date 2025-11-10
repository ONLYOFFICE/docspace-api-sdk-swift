# WebhooksConfigDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Int** | The webhook ID. | 
**name** | **String** | The webhook name. | [optional] 
**uri** | **String** | The webhook URI. | [optional] 
**enabled** | **Bool** | Specifies if the webhooks are enabled or not. | [optional] 
**ssl** | **Bool** | The webhook SSL verification (enabled or not). | [optional] 
**triggers** | [**WebhookTrigger**](WebhookTrigger.md) |  | [optional] 
**targetId** | **String** | The webhook target ID. | [optional] 
**createdBy** | [**EmployeeDto**](EmployeeDto.md) |  | [optional] 
**createdOn** | **Date** | The date and time when the webhook was created. | [optional] 
**modifiedBy** | [**EmployeeDto**](EmployeeDto.md) |  | [optional] 
**modifiedOn** | **Date** | The date and time when the webhook was modified. | [optional] 
**lastFailureOn** | **Date** | The date and time of the webhook last failure. | [optional] 
**lastFailureContent** | **String** | The webhook last failure content. | [optional] 
**lastSuccessOn** | **Date** | The date and time of the webhook last success. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


