# AiChatErrorPayload

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **String** | Stable machine-readable code. One of a canonical set — `auth`, `model_not_found`, `rate_limit`, `timeout`, `network`, `bad_request`, `server`, `not_found`, `insufficient_funds`, `aborted`, `unknown` — or a provider-specific string when the SDK supplies one verbatim. | 
**message** | **String** | Human-readable, end-user-safe message. | 
**cause** | [**AiChatErrorPayload**](AiChatErrorPayload.md) | Optional nested cause, normalized through the same helper. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


