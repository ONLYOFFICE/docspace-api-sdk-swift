# SetWalletTopUpSettingsRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enabled** | **Bool** | Whether the payment method on file is charged automatically when the wallet balance runs low. | [optional] 
**minBalance** | **Int** | The balance below which a top-up is charged, in `currency`. | [optional] 
**upToBalance** | **Int** | The balance a top-up brings the wallet up to, in `currency`. | [optional] 
**currency** | **String** | The three-letter ISO 4217 code both amounts are expressed in; it has to be the currency of the wallet. | [optional] 
**lowBalanceThreshold** | **Int** | Accepted for compatibility with earlier clients and not read: the server keeps its own value. | [optional] 
**lowBalanceNotified** | **Bool** | Accepted for compatibility with earlier clients and not read: the server keeps its own value. | [optional] 
**lastModified** | **Date** | Accepted for compatibility with earlier clients and not read: the server keeps its own value. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


