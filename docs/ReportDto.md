# ReportDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**collection** | [OperationDto] | The movements on this page - top-ups, charges, refunds and corrections alike, newest first. It is empty  for a page past the end of the report as well as for a period in which nothing happened. | [optional] 
**offset** | **Int** | How many movements were skipped before this page, echoed from the request so a client need not remember  what it asked for. | [optional] 
**limit** | **Int** | How many movements one page may hold, echoed from the request; it is 25 unless another value was asked  for. A full page is not proof that more exist - compare `currentPage` with `totalPage`. | [optional] 
**totalQuantity** | **Int64** | How many movements match the filters in total, across every page. | [optional] 
**totalPage** | **Int** | How many pages those movements come to at the current `limit`. | [optional] 
**currentPage** | **Int** | Which of those pages this one is, as the billing service numbers them. Page through by advancing `offset`  rather than this value, which nothing accepts as an argument. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


