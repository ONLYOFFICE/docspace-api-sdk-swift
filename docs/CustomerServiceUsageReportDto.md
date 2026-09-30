# CustomerServiceUsageReportDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**collection** | [CustomerServiceUsageDto] | The services on this page, one entry per service rather than per charge. It is empty for a period in  which nothing was consumed as well as for a page past the end of the report. | [optional] 
**offset** | **Int** | How many entries were skipped before this page, echoed from the request. | [optional] 
**limit** | **Int** | How many entries one page may hold, echoed from the request; it is 25 unless another value was asked for. | [optional] 
**totalQuantity** | **Int64** | How many services match the filters in total, across every page - services, not charges. | [optional] 
**totalPage** | **Int** | How many pages those entries come to at the current `limit`. | [optional] 
**currentPage** | **Int** | Which of those pages this one is, as the billing service numbers them. Page through by advancing `offset`  rather than this value, which nothing accepts as an argument. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


