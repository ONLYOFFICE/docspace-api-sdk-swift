# SecurityFirebaseAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**docRegisterPusnNotificationDevice**](SecurityFirebaseAPI.md#docregisterpusnnotificationdevice) | **POST** /api/2.0/settings/push/docregisterdevice | Save the Documents Firebase device token
[**subscribeDocumentsPushNotification**](SecurityFirebaseAPI.md#subscribedocumentspushnotification) | **PUT** /api/2.0/settings/push/docsubscribe | Subscribe to Documents push notification


# **docRegisterPusnNotificationDevice**
```swift
    open class func docRegisterPusnNotificationDevice(firebaseRequestsDto: FirebaseRequestsDto? = nil, completion: @escaping (_ data: FireBaseUserWrapper?, _ error: Error?) -> Void)
```

Saves the Firebase device token specified in the request for the Documents application.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/doc-register-pusn-notification-device/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **firebaseRequestsDto** | [**FirebaseRequestsDto**](FirebaseRequestsDto.md) |  | [optional] 

### Return type

[**FireBaseUserWrapper**](FireBaseUserWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let firebaseRequestsDto = FirebaseRequestsDto(firebaseDeviceToken: "firebaseDeviceToken_example", isSubscribed: true) // FirebaseRequestsDto |  (optional)

// Save the Documents Firebase device token
SecurityFirebaseAPIApi.docRegisterPusnNotificationDevice(firebaseRequestsDto: firebaseRequestsDto) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **subscribeDocumentsPushNotification**
```swift
    open class func subscribeDocumentsPushNotification(firebaseRequestsDto: FirebaseRequestsDto? = nil, completion: @escaping (_ data: FireBaseUserWrapper?, _ error: Error?) -> Void)
```

Subscribes to the Documents push notification.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/subscribe-documents-push-notification/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **firebaseRequestsDto** | [**FirebaseRequestsDto**](FirebaseRequestsDto.md) |  | [optional] 

### Return type

[**FireBaseUserWrapper**](FireBaseUserWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let firebaseRequestsDto = FirebaseRequestsDto(firebaseDeviceToken: "firebaseDeviceToken_example", isSubscribed: true) // FirebaseRequestsDto |  (optional)

// Subscribe to Documents push notification
SecurityFirebaseAPIApi.subscribeDocumentsPushNotification(firebaseRequestsDto: firebaseRequestsDto) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

