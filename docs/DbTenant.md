# DbTenant

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Int** | The tenant ID. | [optional] 
**name** | **String** | The tenant name. | [optional] 
**alias** | **String** | The tenant alias. | [optional] 
**mappedDomain** | **String** | Mapped domain | [optional] 
**version** | **Int** | The tenant version. | [optional] 
**versionChanged** | **Date** | The Version_changed field. | [optional] 
**versionChanged** | **Date** | The date and time when the version was changed. | [optional] 
**language** | **String** | The tenant language. | [optional] 
**timeZone** | **String** | The tenant time zone. | [optional] 
**trustedDomainsRaw** | **String** | The tenant trusted domains raw. | [optional] 
**trustedDomainsEnabled** | [**TenantTrustedDomainsType**](TenantTrustedDomainsType.md) | The type of the tenant trusted domains. | [optional] 
**status** | [**TenantStatus**](TenantStatus.md) | The tenant status. | [optional] 
**statusChanged** | **Date** | The date and time when the tenant status was changed. | [optional] 
**statusChangedHack** | **Date** | The hacked date and time when the tenant status was changed. | [optional] 
**creationDateTime** | **Date** | The tenant creation date. | [optional] 
**ownerId** | **UUID** | The tenant owner ID. | [optional] 
**paymentId** | **String** | The tenant payment ID. | [optional] 
**industry** | [**TenantIndustry**](TenantIndustry.md) | The tenant industry. | [optional] 
**lastModified** | **Date** | The date and time when the tenant was last modified. | [optional] 
**calls** | **Bool** | Specifies if the calls are available for the current tenant or not. | [optional] 
**partner** | [**DbTenantPartner**](DbTenantPartner.md) | The database tenant partner parameters. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


