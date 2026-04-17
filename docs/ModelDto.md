# ModelDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**providerId** | **Int** | The unique identifier of the AI provider that offers this model. | [optional] 
**providerTitle** | **String** | The human-readable display name of the AI provider (e.g., OpenAI, Anthropic). | 
**modelId** | **String** | The model identifier as recognized by the AI provider (e.g., gpt-4o, claude-sonnet-4-20250514). | 
**alias** | **String** | The display name for the model. | [optional] 
**capabilities** | [**AiModelCapabilities**](AiModelCapabilities.md) |  | [optional] 
**price** | [**AiChatPrice**](AiChatPrice.md) |  | [optional] 
**currency** | [**CurrencyInfo**](CurrencyInfo.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


