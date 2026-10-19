# FirebaseDeviceDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Int** | The id of the registration. | [optional] 
**userId** | **UUID** | The account the device belongs to; always the caller. | [optional] 
**tenantId** | **Int** | The portal the registration belongs to; always the current one. | [optional] 
**firebaseDeviceToken** | **String** | The Firebase token the device was issued, as it was sent at registration. | [optional] 
**application** | **String** | The application the registration is for; `doc` for the Documents application. | [optional] 
**isSubscribed** | **Bool** | Whether the device is currently sent push notifications. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


