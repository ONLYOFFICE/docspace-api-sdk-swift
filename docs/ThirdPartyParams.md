# ThirdPartyParams

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**authData** | [**AuthData**](AuthData.md) | The stored credentials of the account. They are not filled in here: the portal does not give back credentials  once an account is saved. | [optional] 
**corporate** | **Bool** | Whether the account is attached to the legacy Common section, which is the case only for accounts inherited  from an older portal. | [optional] 
**roomsStorage** | **Bool** | Whether the account is attached to the Rooms section, room templates and the archive counted in. This is where  `POST api/2.0/files/thirdparty` puts every account it connects. | [optional] 
**customerTitle** | **String** | The name the account is shown under in the portal, as it was saved when the account was connected. | [optional] 
**providerId** | **Int** | The account ID to send to `DELETE api/2.0/files/thirdparty/{providerId}`, or as `providerId` to  re-authenticate the account. | [optional] 
**providerKey** | **String** | The storage service behind the account. `WebDav` stands for every WebDAV preset, so it does not tell which of  them was chosen when the account was connected. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


