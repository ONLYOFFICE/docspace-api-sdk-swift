# EncryptionKeyDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** | The identifier of the key pair. | [optional] 
**userId** | **UUID** | The identifier of the user the key pair belongs to. | [optional] 
**date** | **Date** | The date and time when the key pair was created. | [optional] 
**publicKey** | **String** | The public key of the pair, used to encrypt the file keys. | [optional] 
**privateKeyEnc** | **String** | The private key of the pair, encrypted with the user password. | [optional] 
**cryptoEngineId** | **String** | The identifier of the crypto engine the key pair was issued for. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


