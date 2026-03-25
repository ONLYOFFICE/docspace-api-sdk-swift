# SsoSettingsV2

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**lastModified** | **Date** | The timestamp indicating when the settings were last modified. | [optional] 
**enableSso** | **Bool** | Specifies if the SSO settings are enabled or not. | [optional] 
**idpSettings** | [**SsoIdpSettings**](SsoIdpSettings.md) |  | [optional] 
**idpCertificates** | [SsoCertificate] | The list of the IdP certificates. | [optional] 
**idpCertificateAdvanced** | [**SsoIdpCertificateAdvanced**](SsoIdpCertificateAdvanced.md) |  | [optional] 
**spLoginLabel** | **String** | The SP login label. | [optional] 
**spCertificates** | [SsoCertificate] | The list of the SP certificates. | [optional] 
**spCertificateAdvanced** | [**SsoSpCertificateAdvanced**](SsoSpCertificateAdvanced.md) |  | [optional] 
**fieldMapping** | [**SsoFieldMapping**](SsoFieldMapping.md) |  | [optional] 
**hideAuthPage** | **Bool** | Specifies if the authentication page will be hidden or not. | [optional] 
**usersType** | **Int** | The user type. | [optional] 
**disableEmailVerification** | **Bool** | Specifies if the email verification is disabled or not. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


