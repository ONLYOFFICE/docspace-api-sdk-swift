# CustomerMonthlyUsageDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**year** | **Int** | The year the month belongs to. Months are cut in the portal time zone, so a movement at the edge of a  month falls where the portal sees it and not where UTC does. | [optional] 
**month** | **Int** | The month itself, January being 1. Only months that had spending appear at all, so a gap in the list is a  month with nothing in it rather than missing data. | [optional] 
**currency** | **String** | The currency `totalAmount` is expressed in, as a three-letter ISO 4217 code - the accounting currency of  the wallet. | [optional] 
**totalAmount** | **Double** | What the month came to across every service, as a positive amount spent rather than a signed balance. | [optional] 
**operationCount** | **Int** | How many separate movements that total was added up from, for a client that wants to show the weight  behind a figure. The movements themselves are in `GET api/2.0/portal/payment/customer/operations`. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


