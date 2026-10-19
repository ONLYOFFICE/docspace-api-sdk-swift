# AIPreferencesAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**aiPreferencesClearDeepMode**](AIPreferencesAPI.md#aipreferencescleardeepmode) | **DELETE** /api/2.0/ai/preferences/clear-deep-mode | Clear deep mode
[**aiPreferencesGetDeepMode**](AIPreferencesAPI.md#aipreferencesgetdeepmode) | **GET** /api/2.0/ai/preferences/get-deep-mode | Get deep mode
[**aiPreferencesGetReasoningLevel**](AIPreferencesAPI.md#aipreferencesgetreasoninglevel) | **GET** /api/2.0/ai/preferences/get-reasoning-level | Get reasoning level
[**aiPreferencesGetToolPermissionMode**](AIPreferencesAPI.md#aipreferencesgettoolpermissionmode) | **GET** /api/2.0/ai/preferences/get-tool-permission-mode | Get tool permission mode
[**aiPreferencesIsDeepModeSet**](AIPreferencesAPI.md#aipreferencesisdeepmodeset) | **GET** /api/2.0/ai/preferences/is-deep-mode-set | Is deep mode set
[**aiPreferencesSetDeepMode**](AIPreferencesAPI.md#aipreferencessetdeepmode) | **PUT** /api/2.0/ai/preferences/set-deep-mode | Set deep mode
[**aiPreferencesSetReasoningLevel**](AIPreferencesAPI.md#aipreferencessetreasoninglevel) | **PUT** /api/2.0/ai/preferences/set-reasoning-level | Set reasoning level
[**aiPreferencesSetToolPermissionMode**](AIPreferencesAPI.md#aipreferencessettoolpermissionmode) | **PUT** /api/2.0/ai/preferences/set-tool-permission-mode | Set tool permission mode


# **aiPreferencesClearDeepMode**
```swift
    open class func aiPreferencesClearDeepMode(aiPreferencesClearDeepModeRequest: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiSuccessResponse
```

Removes the stored extended-thinking setting of a scope (the depth and, with it, the deep-mode toggle), after which reads fall back to the configured default rather than to false. `entityId` picks a room and omitting it clears the portal-wide preference. Clearing a scope that has no stored value is not an error. This differs from storing false, which is an explicit choice a later read reports as set.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-preferences-clear-deep-mode/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiPreferencesClearDeepModeRequest** | **String** | The ID of the room whose preference is cleared, as a bare JSON string. Send an empty body to clear the portal-wide preference. | 

### Return type

[**AiSuccessResponse**](AiSuccessResponse.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let aiPreferencesClearDeepModeRequest = "aiPreferencesClearDeepModeRequest_example" // String | The ID of the room whose preference is cleared, as a bare JSON string. Send an empty body to clear the portal-wide preference.

// Clear deep mode
do {
    let response = try await AIPreferencesAPIApi.aiPreferencesClearDeepMode(aiPreferencesClearDeepModeRequest: aiPreferencesClearDeepModeRequest)
    dump(response)
} catch {
    print(error)
}
```

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **aiPreferencesGetDeepMode**
```swift
    open class func aiPreferencesGetDeepMode(entityId: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> Bool
```

Returns the deep-mode toggle of a scope, as a bare boolean: whether the stored extended-thinking depth is above `off`. `entityId` picks a room and omitting it reads the portal-wide preference; a value that is not a room ID is refused with 400, as it is on the write. A scope that has never had a value stored falls back to the configured default, so the answer never distinguishes off from unset - ask `GET api/2.0/ai/preferences/is-deep-mode-set` for that. This is a read-only operation.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-preferences-get-deep-mode/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityId** | **String** | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. | [optional] 

### Return type

**Bool**

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let entityId = "entityId_example" // String | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. (optional)

// Get deep mode
do {
    let response = try await AIPreferencesAPIApi.aiPreferencesGetDeepMode(entityId: entityId)
    dump(response)
} catch {
    print(error)
}
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **aiPreferencesGetReasoningLevel**
```swift
    open class func aiPreferencesGetReasoningLevel(entityId: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiReasoningLevel
```

Returns the effective extended-thinking depth of the scope: `off` while deep mode is off, otherwise the persisted depth (`low`, `medium`, `high`, `max`), falling back to the default depth (`medium`) when none has been stored. `entityId` picks a room and omitting it reads the portal-wide preference; a value that is not a room ID is refused with 400. Providers clamp the depth to what the model accepts.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-preferences-get-reasoning-level/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityId** | **String** | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. | [optional] 

### Return type

[**AiReasoningLevel**](AiReasoningLevel.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let entityId = "entityId_example" // String | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. (optional)

// Get reasoning level
do {
    let response = try await AIPreferencesAPIApi.aiPreferencesGetReasoningLevel(entityId: entityId)
    dump(response)
} catch {
    print(error)
}
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **aiPreferencesGetToolPermissionMode**
```swift
    open class func aiPreferencesGetToolPermissionMode(entityId: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiChatToolPermissionMode
```

Returns how a tool call the model makes is approved for the calling user, in the chat library's spelling: `ask` prompts for every call bar the tools pinned as always allowed, `auto` also runs a tool that opted out of approval itself or is annotated read-only / non-destructive, `allow` runs everything without asking. The mode is one value per user, stored in the user's AI settings (the same value `GET api/2.0/ai/config/tool-mode` reports as the AI service's enum); `entityId` is accepted for symmetry with the depth routes and ignored, though a value that is not a room ID is still refused with 400. The AI service's default is `auto`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-preferences-get-tool-permission-mode/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityId** | **String** | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. | [optional] 

### Return type

[**AiChatToolPermissionMode**](AiChatToolPermissionMode.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let entityId = "entityId_example" // String | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. (optional)

// Get tool permission mode
do {
    let response = try await AIPreferencesAPIApi.aiPreferencesGetToolPermissionMode(entityId: entityId)
    dump(response)
} catch {
    print(error)
}
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **aiPreferencesIsDeepModeSet**
```swift
    open class func aiPreferencesIsDeepModeSet(entityId: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> Bool
```

Tells whether a scope has an explicitly persisted extended-thinking setting of its own, as opposed to inheriting the configured default. `entityId` picks a room and omitting it asks about the portal-wide preference; a value that is not a room ID is refused with 400. A true answer means a value was stored, whether that value is on or off - read the value itself with `GET api/2.0/ai/preferences/get-deep-mode`. This is the check a settings screen uses to show an explicit override rather than an inherited state.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-preferences-is-deep-mode-set/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityId** | **String** | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. | [optional] 

### Return type

**Bool**

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let entityId = "entityId_example" // String | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. (optional)

// Is deep mode set
do {
    let response = try await AIPreferencesAPIApi.aiPreferencesIsDeepModeSet(entityId: entityId)
    dump(response)
} catch {
    print(error)
}
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **aiPreferencesSetDeepMode**
```swift
    open class func aiPreferencesSetDeepMode(aiPreferencesSetDeepModeRequest: AiPreferencesSetDeepModeRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiSuccessResponse
```

Stores the deep-mode toggle of a scope. `false` stores the `off` depth; `true` keeps the depth already stored and falls back to the default depth (`medium`) when none is. `value` has to be a real boolean: a string, a number or an absent value is rejected rather than coerced, so the string false cannot silently switch the setting on and an empty request cannot silently switch it off. `entityId` picks a room and omitting it writes the portal-wide preference. It is idempotent, so there is no need to read the current value first.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-preferences-set-deep-mode/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiPreferencesSetDeepModeRequest** | [**AiPreferencesSetDeepModeRequest**](AiPreferencesSetDeepModeRequest.md) |  | 

### Return type

[**AiSuccessResponse**](AiSuccessResponse.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let aiPreferencesSetDeepModeRequest = AiPreferencesSetDeepModeRequest(value: false, entityId: "entityId_example") // AiPreferencesSetDeepModeRequest | 

// Set deep mode
do {
    let response = try await AIPreferencesAPIApi.aiPreferencesSetDeepMode(aiPreferencesSetDeepModeRequest: aiPreferencesSetDeepModeRequest)
    dump(response)
} catch {
    print(error)
}
```

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **aiPreferencesSetReasoningLevel**
```swift
    open class func aiPreferencesSetReasoningLevel(aiPreferencesSetReasoningLevelRequest: AiPreferencesSetReasoningLevelRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiSuccessResponse
```

Persists the extended-thinking depth of the scope as its single stored value: a depth turns deep mode on at that depth, `off` turns it off and replaces the stored depth (a later deep-mode `true` without a depth lands on `medium`). `entityId` picks a room and omitting it writes the portal-wide preference. Idempotent.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-preferences-set-reasoning-level/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiPreferencesSetReasoningLevelRequest** | [**AiPreferencesSetReasoningLevelRequest**](AiPreferencesSetReasoningLevelRequest.md) |  | 

### Return type

[**AiSuccessResponse**](AiSuccessResponse.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let aiPreferencesSetReasoningLevelRequest = AiPreferencesSetReasoningLevelRequest(value: AiReasoningLevel(), entityId: "entityId_example") // AiPreferencesSetReasoningLevelRequest | 

// Set reasoning level
do {
    let response = try await AIPreferencesAPIApi.aiPreferencesSetReasoningLevel(aiPreferencesSetReasoningLevelRequest: aiPreferencesSetReasoningLevelRequest)
    dump(response)
} catch {
    print(error)
}
```

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **aiPreferencesSetToolPermissionMode**
```swift
    open class func aiPreferencesSetToolPermissionMode(aiPreferencesSetToolPermissionModeRequest: AiPreferencesSetToolPermissionModeRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiSuccessResponse
```

Persists the tool permission mode of the calling user. `value` has to be one of `ask`, `auto`, `allow`: anything else is rejected rather than coerced, so an absent or mistyped value can never overwrite the stored mode. `entityId` is validated like on the other writes and otherwise ignored - the mode applies to every chat of the user. Idempotent.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-preferences-set-tool-permission-mode/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiPreferencesSetToolPermissionModeRequest** | [**AiPreferencesSetToolPermissionModeRequest**](AiPreferencesSetToolPermissionModeRequest.md) |  | 

### Return type

[**AiSuccessResponse**](AiSuccessResponse.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let aiPreferencesSetToolPermissionModeRequest = AiPreferencesSetToolPermissionModeRequest(value: AiChatToolPermissionMode(), entityId: "entityId_example") // AiPreferencesSetToolPermissionModeRequest | 

// Set tool permission mode
do {
    let response = try await AIPreferencesAPIApi.aiPreferencesSetToolPermissionMode(aiPreferencesSetToolPermissionModeRequest: aiPreferencesSetToolPermissionModeRequest)
    dump(response)
} catch {
    print(error)
}
```

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

