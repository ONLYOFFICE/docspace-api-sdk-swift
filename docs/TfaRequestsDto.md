# TfaRequestsDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | [**TfaRequestsDtoType**](TfaRequestsDtoType.md) |  | [optional] 
**id** | **UUID** | The ID of the user for whom the TFA settings are being configured. | [optional] 
**trustedIps** | **[String]** | The list of IP addresses that bypass TFA verification. | [optional] 
**mandatoryUsers** | **[UUID]** | The list of user IDs for whom TFA is mandatory. | [optional] 
**mandatoryGroups** | **[UUID]** | The list group IDs whose members must use TFA. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


