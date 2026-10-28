# AiWebSearchConfig

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**provider** | **String** | Provider identifier (e.g. `exa`). | 
**key** | **String** | API key for the provider. Optional for self-hosted or keyless setups. | [optional] 
**baseUrl** | **String** | Optional override for the provider's base URL. | [optional] 
**isCloudProvider** | **Bool** | Whether this provider is cloud-hosted (vs. self-hosted). | [optional] 
**headers** | **[String: String]** | Extra HTTP headers sent with each request to the ONLYOFFICE / cloud backend (e.g. `X-Tenant`). Merged after the derived `Authorization` header, so a custom header of the same name wins. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


