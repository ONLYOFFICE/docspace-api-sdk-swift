# FirebaseDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**apiKey** | **String** | The web API key of the project. Every field of this object is an empty string on an installation that  configures no Firebase project, and an empty `projectId` is the cheapest thing to test for before  initialising an SDK. None of these values is a secret - they are meant to be embedded in a client. | 
**authDomain** | **String** | The host the Firebase SDK performs its own authentication against. | 
**projectId** | **String** | The identifier of the Firebase project itself, which ties all the other fields together. | 
**storageBucket** | **String** | The Cloud Storage bucket of the project. The portal does not store portal files there; it is part of the  SDK configuration. | 
**messagingSenderId** | **String** | The sender ID that push messages of this project arrive under, which a client checks an incoming message  against. | 
**appId** | **String** | The identifier of the Firebase application registration this client is to use. | 
**measurementId** | **String** | The Google Analytics measurement ID of the project, empty when the project reports no analytics. | 
**databaseURL** | **String** | The Realtime Database endpoint of the project, empty when the project has no such database. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


