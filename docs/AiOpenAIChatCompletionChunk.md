# AiOpenAIChatCompletionChunk

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The completion identifier, stable across every chunk of one response. | 
**object** | **String** | Always `chat.completion.chunk`. | 
**created** | **Double** | When the completion started, in Unix seconds. | 
**model** | **String** | The model that produced the completion - the resolved profile's model. | 
**choices** | [AiOpenAIChunkChoice] | The choices carried by this chunk. This service emits exactly one. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


