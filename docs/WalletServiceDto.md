# WalletServiceDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Int** | The quota ID. | 
**title** | **String** | The quota title. | 
**price** | [**PriceDto**](PriceDto.md) |  | 
**nonProfit** | **Bool** | Specifies if the quota is nonprofit or not. | 
**free** | **Bool** | Specifies if the quota is free or not. | 
**trial** | **Bool** | Specifies if the quota is trial or not. | 
**features** | [TenantQuotaFeatureDto] | The list of tenant quota features. | 
**usersQuota** | [**TenantEntityQuotaSettings**](TenantEntityQuotaSettings.md) |  | [optional] 
**roomsQuota** | [**TenantEntityQuotaSettings**](TenantEntityQuotaSettings.md) |  | [optional] 
**aiAgentsQuota** | [**TenantEntityQuotaSettings**](TenantEntityQuotaSettings.md) |  | [optional] 
**tenantCustomQuota** | [**TenantQuotaSettings**](TenantQuotaSettings.md) |  | [optional] 
**dueDate** | **Date** | The due date. | [optional] 
**innerServices** | [WalletServiceDto] | The list of inner services. | [optional] 
**serviceName** | **String** | The service name. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


