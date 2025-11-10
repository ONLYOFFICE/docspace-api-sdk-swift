# UpdateWebhooksConfigRequestsDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | The human-readable name of the webhook configuration. | 
**uri** | **String** | The destination URL where the webhook events will be sent. | 
**secretKey** | **String** | The webhook secret key used to sign the webhook payloads for the security verification. | [optional] 
**enabled** | **Bool** | Specifies whether the webhook configuration is active or not. | [optional] 
**ssl** | **Bool** | Specifies whether the SSL certificate verification is required or not. | [optional] 
**triggers** | [**WebhookTrigger**](WebhookTrigger.md) |  | [optional] 
**targetId** | **String** | Target ID | [optional] 
**id** | **Int** | The webhook configuration ID. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


