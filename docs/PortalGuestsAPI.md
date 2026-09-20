# PortalGuestsAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getGuestSharingLink**](PortalGuestsAPI.md#getguestsharinglink) | **GET** /api/2.0/people/guests/{userid}/share | Get a guest sharing link


# **getGuestSharingLink**
```swift
    open class func getGuestSharingLink(userid: UUID, completion: @escaping (_ data: StringWrapper?, _ error: Error?) -> Void)
```

Builds a link that lets another member of the portal take over the caller's guest, so that the guest becomes  visible to them as well.  The account in the route has to exist and be a guest - any other type is rejected with 400 - and the caller  has to be able to see it and must not be a guest itself.  The call is read-only: it only mints the link and changes nothing, and it can be repeated as often as needed.  The answer is a shortened confirmation URL as plain text; hand it to the person who should get the guest, and  their client completes the hand-over with `POST api/2.0/people/guests/share/approve`.  The link carries a confirmation token and therefore expires, so mint it when it is about to be used rather  than storing it.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-guest-sharing-link/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userid** | **UUID** | The ID of the guest to be handed over, taken from the route. The account has to exist, has to be a guest, and  has to be one the caller can see. | 

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let userid = 987 // UUID | The ID of the guest to be handed over, taken from the route. The account has to exist, has to be a guest, and  has to be one the caller can see.

// Get a guest sharing link
PortalGuestsAPIApi.getGuestSharingLink(userid: userid) { (response, error) in
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

