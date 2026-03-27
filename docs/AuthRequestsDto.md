# AuthRequestsDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**userName** | **String** | The username or email used for authentication. | [optional] 
**password** | **String** | The password in plain text for user authentication. | [optional] 
**passwordHash** | **String** | The hashed password for secure verification. | [optional] 
**provider** | **String** | The type of authentication provider (e.g., internal, Google, Azure). | [optional] 
**accessToken** | **String** | The access token used for authentication with external providers. | [optional] 
**serializedProfile** | **String** | The serialized user profile data, if applicable. | [optional] 
**codeOAuth** | **String** | The authorization code used for obtaining OAuth tokens. | [optional] 
**session** | **Bool** | Specifies whether the authentication is session-based. | [optional] 
**confirmData** | [**ConfirmData**](ConfirmData.md) |  | [optional] 
**recaptchaType** | [**RecaptchaType**](RecaptchaType.md) |  | [optional] 
**recaptchaResponse** | **String** | The user's response to the CAPTCHA challenge. | [optional] 
**culture** | **String** | The culture code for localization during authentication. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


