# UpcomingPaymentDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Int** | The quota ID. | [optional] 
**name** | **String** | The quota name. | [optional] 
**title** | **String** | The quota title. | [optional] 
**unitOfMeasure** | **String** | The quota unit of measure. | [optional] 
**quantity** | **Int** | The quantity that will be charged (the next quantity if set, otherwise the current quantity). | [optional] 
**wallet** | **Bool** | The quota applies to the wallet or not. | [optional] 
**dueDate** | **Date** | The due date of the upcoming payment in the portal time zone. | [optional] 
**amount** | **Double** | The amount that will be charged (unit price multiplied by the quantity). | [optional] 
**currency** | **String** | The three-character ISO 4217 currency symbol of the amount. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


