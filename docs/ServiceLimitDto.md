# ServiceLimitDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Int** | The service limit ID, used to read, change, switch off or delete the limit. In the list of the users the same  ID repeats for every user the limit for every user applies to. | [optional] 
**serviceGroupName** | **String** | The limited service group; the AI services are `ai-services`. | [optional] 
**customerAccountNumber** | **Int** | The number of the billing account of the portal the limit belongs to. | [optional] 
**scope** | [**ServiceLimitScope**](ServiceLimitScope.md) | Whom the limit applies to. | [optional] 
**userId** | **UUID** | The ID of the portal user the limit applies to: the user of a personal limit, or, in the list of the users, the  user a limit for every user applies to. Null for a limit of the portal as a whole, and for a limit for every  user read on its own. | [optional] 
**amountValue** | **Double** | The most money the AI services may cost per period, in `currency`; null when the limit has no money threshold. | [optional] 
**currency** | **String** | The currency `amountValue` is expressed in; null when the limit has no money threshold. | [optional] 
**quantityValue** | **Int** | The largest quantity the AI services may consume per period, in `serviceUnit`; null when the limit has no  quantity threshold. | [optional] 
**serviceUnit** | **String** | The unit `quantityValue` is expressed in; null when the limit has no quantity threshold. | [optional] 
**period** | [**ServiceLimitPeriod**](ServiceLimitPeriod.md) | The window the thresholds apply to. A day, week or month resets at the start of the next one in UTC (a week on  Monday), not a fixed time after the first charge; a lifetime limit never resets. | [optional] 
**periodEnd** | **Date** | The last moment of the current period, in UTC, after which the spending starts over from zero; null for a  lifetime limit, which never resets. Filled for every limit, the limit for every user included, whose spending is  counted per user. | [optional] 
**usageFrom** | **Date** | The moment a lifetime limit counts from, in UTC; null for the other periods. | [optional] 
**enabled** | **Bool** | Whether the limit is in force. A switched-off limit no longer restricts the AI services and can be switched  back on. | [optional] 
**created** | **Date** | The date and time when the limit was created, in UTC. | [optional] 
**modified** | **Date** | The date and time when the limit was last changed, in UTC. | [optional] 
**usage** | [**ServiceLimitUsageDto**](ServiceLimitUsageDto.md) | What was spent against the limit in its current period and what is left. Filled for the limit of the portal as  a whole and in the list of the users; null where the spending is not read, such as for a limit read by its ID  or the limit for every user, whose spending is counted per user. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


