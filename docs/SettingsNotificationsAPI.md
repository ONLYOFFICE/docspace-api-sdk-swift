# SettingsNotificationsAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getNotificationChannels**](SettingsNotificationsAPI.md#getnotificationchannels) | **GET** /api/2.0/settings/notification/channels | Get notification channels
[**getNotificationSettings**](SettingsNotificationsAPI.md#getnotificationsettings) | **GET** /api/2.0/settings/notification/{type} | Check notification availability
[**getRoomsNotificationSettings**](SettingsNotificationsAPI.md#getroomsnotificationsettings) | **GET** /api/2.0/settings/notification/rooms | Get room notification settings
[**setNotificationSettings**](SettingsNotificationsAPI.md#setnotificationsettings) | **POST** /api/2.0/settings/notification | Enable notifications
[**setRoomsNotificationStatus**](SettingsNotificationsAPI.md#setroomsnotificationstatus) | **POST** /api/2.0/settings/notification/rooms | Set room notification status


# **getNotificationChannels**
```swift
    open class func getNotificationChannels(completion: @escaping (_ data: NotificationChannelStatusWrapper?, _ error: Error?) -> Void)
```

Returns a list of notification channels.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-notification-channels/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**NotificationChannelStatusWrapper**](NotificationChannelStatusWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get notification channels
SettingsNotificationsAPIApi.getNotificationChannels() { (response, error) in
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

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNotificationSettings**
```swift
    open class func getNotificationSettings(type: NotificationType, completion: @escaping (_ data: NotificationSettingsWrapper?, _ error: Error?) -> Void)
```

Checks if the notification type specified in the request is enabled or not.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-notification-settings/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | [**NotificationType**](.md) | The type of notification to query, specified in the route. | 

### Return type

[**NotificationSettingsWrapper**](NotificationSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let type = NotificationType() // NotificationType | The type of notification to query, specified in the route.

// Check notification availability
SettingsNotificationsAPIApi.getNotificationSettings(type: type) { (response, error) in
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

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRoomsNotificationSettings**
```swift
    open class func getRoomsNotificationSettings(completion: @escaping (_ data: RoomsNotificationSettingsWrapper?, _ error: Error?) -> Void)
```

Returns a list of rooms with the disabled notifications.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-rooms-notification-settings/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**RoomsNotificationSettingsWrapper**](RoomsNotificationSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get room notification settings
SettingsNotificationsAPIApi.getRoomsNotificationSettings() { (response, error) in
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

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setNotificationSettings**
```swift
    open class func setNotificationSettings(notificationSettingsRequestsDto: NotificationSettingsRequestsDto? = nil, completion: @escaping (_ data: NotificationSettingsWrapper?, _ error: Error?) -> Void)
```

Enables the notification type specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-notification-settings/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **notificationSettingsRequestsDto** | [**NotificationSettingsRequestsDto**](NotificationSettingsRequestsDto.md) |  | [optional] 

### Return type

[**NotificationSettingsWrapper**](NotificationSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let notificationSettingsRequestsDto = NotificationSettingsRequestsDto(type: NotificationType(), isEnabled: true) // NotificationSettingsRequestsDto |  (optional)

// Enable notifications
SettingsNotificationsAPIApi.setNotificationSettings(notificationSettingsRequestsDto: notificationSettingsRequestsDto) { (response, error) in
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

# **setRoomsNotificationStatus**
```swift
    open class func setRoomsNotificationStatus(roomsNotificationsSettingsRequestDto: RoomsNotificationsSettingsRequestDto? = nil, completion: @escaping (_ data: RoomsNotificationSettingsWrapper?, _ error: Error?) -> Void)
```

Sets a notification status for a room with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-rooms-notification-status/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **roomsNotificationsSettingsRequestDto** | [**RoomsNotificationsSettingsRequestDto**](RoomsNotificationsSettingsRequestDto.md) |  | [optional] 

### Return type

[**RoomsNotificationSettingsWrapper**](RoomsNotificationSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let roomsNotificationsSettingsRequestDto = RoomsNotificationsSettingsRequestDto(roomsId: 123, mute: true) // RoomsNotificationsSettingsRequestDto |  (optional)

// Set room notification status
SettingsNotificationsAPIApi.setRoomsNotificationStatus(roomsNotificationsSettingsRequestDto: roomsNotificationsSettingsRequestDto) { (response, error) in
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

