# HistoryDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Int** | The unique identifier for the file history entry. | 
**action** | [**HistoryAction**](HistoryAction.md) | The action performed on the file. | 
**initiator** | [**EmployeeDto**](EmployeeDto.md) | The action initiator. | 
**date** | **Date** | The date and time when an action on the file was performed. | 
**data** | [**HistoryData**](HistoryData.md) | The history data. | 
**related** | [HistoryDto] | The list of related history. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


