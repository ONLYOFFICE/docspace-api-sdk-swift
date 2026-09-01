# AiModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Model identifier as used by the provider API (e.g. `gpt-4o`, `claude-sonnet-4-20250514`). | 
**name** | **String** | Human-readable model name for display in the UI. | 
**provider** | [**AiProviderType**](AiProviderType.md) | Provider that offers this model. | 
**reasoning** | **Bool** | Whether this model supports extended thinking / chain-of-thought reasoning. | [optional] 
**capabilities** | **Double** | Bitmask of model capabilities (Chat, Image, Vision, Tools, etc.). Used to filter models per `ActionType`. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


