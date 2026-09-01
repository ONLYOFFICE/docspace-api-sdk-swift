# AuditEventDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Int** | The audit event ID. | [optional] 
**date** | **Date** | The audit event date. | [optional] 
**user** | **String** | The name of the user who triggered the audit event. | [optional] 
**userId** | **UUID** | The ID of the user who triggered the audit event. | [optional] 
**action** | **String** | The audit event action. | [optional] 
**actionId** | [**MessageAction**](MessageAction.md) | The specific action that occurred within the audit event. | [optional] 
**ip** | **String** | The audit event IP. | [optional] 
**country** | **String** | The audit event country. | [optional] 
**city** | **String** | The audit event city. | [optional] 
**browser** | **String** | The audit event browser. | [optional] 
**platform** | **String** | The audit event platform. | [optional] 
**page** | **String** | The audit event page. | [optional] 
**actionType** | [**ActionType**](ActionType.md) | The type of action performed in the audit event (e.g., Create, Update, Delete). | [optional] 
**product** | [**ProductType**](ProductType.md) | The type of product related to the audit event. | [optional] 
**location** | [**LocationType**](LocationType.md) | The location where the audit event occurred. | [optional] 
**target** | **[String]** | The list of target objects affected by the audit event (e.g., document ID, user account). | [optional] 
**entries** | [EntryType] | The list of audit entry types (e.g., Folder, User, File). | [optional] 
**context** | **String** | The audit event context. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


