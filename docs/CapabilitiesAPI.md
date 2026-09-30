# CapabilitiesAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getPortalCapabilities**](CapabilitiesAPI.md#getportalcapabilities) | **GET** /api/2.0/capabilities | Get portal capabilities


# **getPortalCapabilities**
```swift
    open class func getPortalCapabilities(completion: @escaping (_ data: CapabilitiesWrapper?, _ error: Error?) -> Void)
```

Returns the sign-in methods this portal offers, which a login client needs before anyone has signed in: LDAP  authentication and its domain, the external identity providers to show, the SAML single sign-on URL and its  label, and whether the built-in identity server is available. No token is needed and nothing has to be called  first - the operation is open to unauthenticated callers, answers even while the portal's payment has lapsed,  and is read-only and idempotent. `providers` holds provider keys such as `google` or `facebook`, ordered for  the country detected from the caller's IP address and reduced to the ones this installation has configured;  pass one of them as `provider` to `POST api/2.0/authentication`. An empty `providers` means external sign-in  is off and an empty `ssoUrl` means single sign-on is off; a capability whose settings cannot be read is  reported as disabled rather than failing the call, so a false flag means the method is not offered, not that  it is unknown. The answer describes the portal and never a user, and carries none of the configuration behind  these methods: an administrator reads that from `GET api/2.0/settings/ssov2` and  `GET api/2.0/settings/authservice`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-capabilities/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**CapabilitiesWrapper**](CapabilitiesWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get portal capabilities
CapabilitiesAPIApi.getPortalCapabilities() { (response, error) in
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

