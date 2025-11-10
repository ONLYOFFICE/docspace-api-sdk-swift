# TfaSettingsDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The ID of the TFA configuration. | 
**title** | **String** | The display name or description of the TFA configuration. | 
**enabled** | **Bool** | Indicates whether the TFA configuration is currently active. | 
**avaliable** | **Bool** | Indicates whether the TFA configuration can be used. | 
**trustedIps** | **[String]** | The list of IP addresses that are exempt from TFA requirements. | [optional] 
**mandatoryUsers** | **[UUID]** | The list of user IDs that are required to use TFA. | [optional] 
**mandatoryGroups** | **[UUID]** | The list of group IDs whose members are required to use TFA. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


