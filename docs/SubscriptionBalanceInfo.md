# SubscriptionBalanceInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**totalCost** | **Double** | The total cost of the current billing period (the sum across all subscription items). | [optional] 
**currency** | **String** | The three-character ISO 4217 currency symbol of the subscription. | [optional] 
**periodStart** | **Date** | The start of the current billing period. | [optional] 
**periodEnd** | **Date** | The end of the current billing period. | [optional] 
**periodUsedUntil** | **Date** | The boundary of the used part of the period (the moment of the request). | [optional] 
**daysElapsed** | **Int** | The number of days elapsed since the start of the period (inclusive). | [optional] 
**remainingBalance** | **Double** | The unused balance of the subscription, in the subscription currency. | [optional] 
**remainingBalanceInWalletCurrency** | **Double** | The unused balance of the subscription, converted to the wallet currency. | [optional] 
**walletCurrency** | **String** | The three-character ISO 4217 currency symbol of the wallet. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


