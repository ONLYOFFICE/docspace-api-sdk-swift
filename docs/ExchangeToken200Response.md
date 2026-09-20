# ExchangeToken200Response

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**accessToken** | **String** | The token to send as a Bearer credential when calling the portal on the user behalf. | [optional] 
**tokenType** | **String** | How the access token is to be presented. It is always Bearer. | [optional] 
**expiresIn** | **Int** | How many seconds the access token stays valid, counted from the moment it was issued. | [optional] 
**refreshToken** | **String** | The token that buys a new access token once the current one expires. It is present only when the client is registered for the refresh token grant. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


