# CustomerOperationsReportRequestDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**serviceName** | **[String]** | The service name list. A single string is also accepted for backward compatibility. | [optional] 
**startDate** | **Date** | The report start date. | [optional] 
**endDate** | **Date** | The report end date. | [optional] 
**participantName** | **String** | The participant name. | [optional] 
**credit** | **Bool** | Specifies whether to include credit operations in the report. | [optional] 
**debit** | **Bool** | Specifies whether to include debit operations in the report. | [optional] 
**type** | [**OperationType**](OperationType.md) | The operation type to filter by. | [optional] 
**status** | [**OperationStatus**](OperationStatus.md) | The operation status to filter by. | [optional] 
**orderBy** | **String** | The field to order by. | [optional] 
**orderType** | [**OperationOrderType**](OperationOrderType.md) | Order direction: Ascending or Descending. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


