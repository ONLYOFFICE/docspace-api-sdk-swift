# AiSuggestedQuestionsResult

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **String** | `ready` - the questions are there; `pending` - they are being generated and arrive over the socket, ask again later; `unavailable` - the attachment is not a form that can have any. | 
**questions** | [AiSuggestedQuestion] | The questions; empty unless `status` is `ready`. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


