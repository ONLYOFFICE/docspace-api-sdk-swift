# WebhookEnvelope

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**event** | [**WebhookEventInfo**](WebhookEventInfo.md) |  | [optional] 
**payload** | **JSONValue** | The user, group, file, folder, room, agent or form submission the event is about. Its schema follows from &#x60;event.trigger&#x60;: a user.* event carries a user, a file.* event a file, and so on. | [optional] 
**webhook** | [**WebhookConfigInfo**](WebhookConfigInfo.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


