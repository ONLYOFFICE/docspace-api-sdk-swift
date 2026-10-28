# AccessRequestKeyDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**userId** | **UUID** | The account that is to open the file with this key; it has to have read access to the file. | [optional] 
**publicKeyId** | **UUID** | The public key the file key was encrypted with, as reported for that account by  `GET api/2.0/files/file/{fileId}/publickeys`. | [optional] 
**privateKeyEnc** | **String** | The key of the file itself, encrypted by the client with that public key, so that the plain key never reaches  the portal. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


