# ServiceLimitUsageDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**periodStart** | **Date** | The start of the current period, in UTC. | [optional] 
**periodEnd** | **Date** | The end of the current period, in UTC: the moment the spending starts again from zero. Null for a lifetime  limit, which never resets. | [optional] 
**amountConsumed** | **Double** | The money charged in the current period, in the currency of the limit. | [optional] 
**amountAvailable** | **Double** | The money still available in the current period: the threshold less what was charged and what is reserved for  operations in progress, never below zero. Null when the limit has no money threshold. | [optional] 
**quantityConsumed** | **Int** | The quantity consumed in the current period, in the unit of the limit. | [optional] 
**quantityAvailable** | **Int** | The quantity still available in the current period, never below zero; null when the limit has no quantity  threshold. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


