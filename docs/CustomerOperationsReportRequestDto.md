# CustomerOperationsReportRequestDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**serviceName** | **String** | The service name. | [optional] 
**writeOffServiceQuota** | **Bool** | Write-off of the quota for the service | [optional] 
**startDate** | **Date** | The report start date. | [optional] 
**endDate** | **Date** | The report end date. | [optional] 
**participantName** | **String** | The participant name. | [optional] 
**credit** | **Bool** | Specifies whether to include credit operations in the report. | [optional] 
**debit** | **Bool** | Specifies whether to include debit operations in the report. | [optional] 
**types** | [**OperationType**](OperationType.md) |  | [optional] 
**status** | [**OperationStatus**](OperationStatus.md) |  | [optional] 
**orderBy** | **String** | The field to order by. | [optional] 
**orderType** | [**OperationOrderType**](OperationOrderType.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


