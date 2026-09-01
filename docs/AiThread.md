# AiThread

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**threadId** | **String** | Unique thread identifier (UUID). | 
**title** | **String** | Optional thread title. Auto-generated from the first message if not set. | [optional] 
**lastEditDate** | **Double** | Timestamp (ms since epoch) of the last message in this thread. Used for sorting. | [optional] 
**provider** | [**AiTProvider**](AiTProvider.md) | Provider configuration at the time of last message. Used for thread-level provider display. | [optional] 
**model** | [**AiModel**](AiModel.md) | Model info at the time of last message. | [optional] 
**profileId** | **String** | ID of the profile used for this thread. Links to `Profile.id`. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


