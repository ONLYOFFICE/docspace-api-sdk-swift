# FileKeys

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**userId** | **UUID** | The identifier of the user the file key was issued to. | [optional] 
**publicKeyId** | **UUID** | The identifier of the key pair the file key is encrypted for. | [optional] 
**privateKeyEnc** | **String** | The file key, encrypted with the public key of the pair. | [optional] 
**tenantId** | **Int** | The identifier of the portal the file belongs to. | [optional] 
**fileId** | **Int** | The identifier of the file the key unlocks. | [optional] 
**createOn** | **Date** | The date and time when the file key was issued. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


