# SaveAuthKeysRequestDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | The internal key of the provider, such as `google` or `box`. Take it from the `name` of  `GET api/2.0/settings/authservice`. | [optional] 
**title** | **String** | Accepted for compatibility with earlier clients and not read: the server keeps its own value. | [optional] 
**description** | **String** | Accepted for compatibility with earlier clients and not read: the server keeps its own value. | [optional] 
**instruction** | **String** | Accepted for compatibility with earlier clients and not read: the server keeps its own value. | [optional] 
**canSet** | **Bool** | Accepted for compatibility with earlier clients and not read: the server keeps its own value. | [optional] 
**paid** | **Bool** | Accepted for compatibility with earlier clients and not read: the server keeps its own value. | [optional] 
**props** | [AuthKeyRequest] | The keys of the provider with their new values, by the key names `GET api/2.0/settings/authservice` lists in  `props`. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


