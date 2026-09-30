# OperationTokenUsage

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**totalTokens** | **Int64** | All tokens of the request: prompt plus completion. | [optional] 
**promptTokens** | **Int64** | Tokens sent to the model, cached ones included. | [optional] 
**completionTokens** | **Int64** | Tokens the model generated, reasoning ones included. | [optional] 
**cachedTokens** | **Int64** | Part of the prompt tokens read from the provider cache. | [optional] 
**cacheWriteTokens** | **Int64** | Part of the prompt tokens written to the provider cache. | [optional] 
**reasoningTokens** | **Int64** | Part of the completion tokens the model spent on reasoning. | [optional] 
**imageTokens** | **Int64** | Tokens spent on images. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


