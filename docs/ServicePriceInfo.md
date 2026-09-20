# ServicePriceInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Int** | The price unique identifier. | [optional] 
**accountNumber** | **Int** | The account number. | [optional] 
**serviceId** | **Int** | The service ID. | [optional] 
**timeUnit** | [**PriceTimeUnit**](PriceTimeUnit.md) | The time unit the price is bound to. | [optional] 
**costPrice** | **Double** | The cost price. | [optional] 
**extraCharge** | **Double** | The extra charge added to the cost price. | [optional] 
**servicePrice** | **Double** | The resulting service price. | [optional] 
**quota** | **Double** | The quota the price is set for. | [optional] 
**timeBound** | [**TimeBound**](TimeBound.md) | The period the price is effective in. | [optional] 
**status** | [**PriceStatus**](PriceStatus.md) | The price status. | [optional] 
**created** | **Date** | The date and time when the price was created. | [optional] 
**discountCategoryId** | **Int** | The discount category ID. | [optional] 
**discountCategory** | [**DiscountCategory**](DiscountCategory.md) | The discount category. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


