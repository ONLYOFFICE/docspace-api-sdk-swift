# SsoSettingsDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**lastModified** | **Date** | The timestamp indicating when the settings were last modified. | [optional] 
**enableSso** | **Bool** | Specifies if the SSO settings are enabled or not. | [optional] 
**idpSettings** | [**SsoIdpSettingsDto**](SsoIdpSettingsDto.md) | The SSO IdP settings. | [optional] 
**idpCertificates** | [SsoCertificateDto] | The list of the IdP certificates. | [optional] 
**idpCertificateAdvanced** | [**SsoIdpCertificateAdvancedDto**](SsoIdpCertificateAdvancedDto.md) | The IdP advanced certificate. | [optional] 
**spLoginLabel** | **String** | The SP login label. | [optional] 
**spCertificates** | [SsoCertificateDto] | The list of the SP certificates. | [optional] 
**spCertificateAdvanced** | [**SsoSpCertificateAdvancedDto**](SsoSpCertificateAdvancedDto.md) | The SP advanced certificate. | [optional] 
**fieldMapping** | [**SsoFieldMappingDto**](SsoFieldMappingDto.md) | The SSO field mapping. | [optional] 
**hideAuthPage** | **Bool** | Specifies if the authentication page will be hidden or not. | [optional] 
**usersType** | **Int** | The user type. | [optional] 
**disableEmailVerification** | **Bool** | Specifies if the email verification is disabled or not. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


