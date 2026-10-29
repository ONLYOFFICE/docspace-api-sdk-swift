# ServiceLimitReportDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**collection** | [ServiceLimitDto] | The limits of this page, one per user; empty when no limit applies to any user or the page is past the end. | [optional] 
**offset** | **Int** | The number of limits skipped before this page. | [optional] 
**limit** | **Int** | The page size the page was read with. | [optional] 
**totalPage** | **Int** | The number of pages the whole list takes at this page size. | [optional] 
**currentPage** | **Int** | The number of this page, starting from 1. | [optional] 
**totalQuantity** | **Int** | The number of users with a limit in force across all pages. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


