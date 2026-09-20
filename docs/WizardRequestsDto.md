# WizardRequestsDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email** | **String** | The address the portal owner account is created with, which is also the address every administrative letter  goes to afterwards. It has to be a well-formed email address; a malformed one leaves the wizard unfinished. | 
**passwordHash** | **String** | The owner password, already hashed in the client rather than sent in the clear. Hash it with the `salt`,  iteration count and hash size that `GET api/2.0/settings?withpassword=true` publishes, so the portal can  recognise it later; an empty value leaves the wizard unfinished. | 
**lng** | **String** | The portal interface language, as a culture name such as `en-US`. It has to be one of the cultures enabled  for the installation, and an unknown one leaves the shipped default in place instead of failing the wizard. | [optional] 
**timeZone** | **String** | The time zone every portal date is rendered in, as an IANA identifier such as `Europe/Riga`. A value that  matches nothing falls back to UTC rather than failing the wizard. | [optional] 
**amiId** | **String** | The identifier of the Amazon Machine Image the portal was launched from, for an installation started from an  AWS image. It is recorded for the installation record only and changes nothing about the portal; leave it out  anywhere else. | [optional] 
**subscribeFromSite** | **Bool** | Whether the owner agrees to receive product news at the address in `email`. It is a mailing consent and has  no bearing on the portal notifications, which are subscribed separately. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


