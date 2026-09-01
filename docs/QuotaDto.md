# QuotaDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Int** | The quota ID. | 
**title** | **String** | The quota title. | [optional] 
**price** | [**PriceDto**](PriceDto.md) | The price parameters. | 
**nonProfit** | **Bool** | Specifies if the quota is nonprofit or not. | 
**free** | **Bool** | Specifies if the quota is free or not. | 
**trial** | **Bool** | Specifies if the quota is trial or not. | 
**features** | [TenantQuotaFeatureDto] | The list of tenant quota features. | 
**usersQuota** | [**TenantEntityQuotaSettings**](TenantEntityQuotaSettings.md) | The user quota. | [optional] 
**roomsQuota** | [**TenantEntityQuotaSettings**](TenantEntityQuotaSettings.md) | The room quota. | [optional] 
**aiAgentsQuota** | [**TenantEntityQuotaSettings**](TenantEntityQuotaSettings.md) | The ai agent quota. | [optional] 
**tenantCustomQuota** | [**TenantQuotaSettings**](TenantQuotaSettings.md) | The tenant custom quota. | [optional] 
**dueDate** | **Date** | The due date. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


