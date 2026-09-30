# SettingsStatisticsAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getSpaceUsageStatistics**](SettingsStatisticsAPI.md#getspaceusagestatistics) | **GET** /api/2.0/settings/statistics/spaceusage/{id} | Get the space usage statistics


# **getSpaceUsageStatistics**
```swift
    open class func getSpaceUsageStatistics(id: UUID, completion: @escaping (_ data: UsageSpaceStatItemArrayWrapper?, _ error: Error?) -> Void)
```

Returns the storage space used by one portal module, broken down per data category the module tracks (for  example per room type), together with a human-readable size and whether the category is disabled. Requires  Owner or DocSpaceAdmin (the EditPortalSettings permission). `id` identifies the module by the same GUID the  portal's module catalog uses; a module that does not exist, or one that does not report space usage at all,  returns an empty list rather than an error. This is a read-only, idempotent call, and the list is not  paginated. Sizes are already formatted as display strings (for example `1.5 GB`), not raw byte counts.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-space-usage-statistics/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **UUID** | The identifier of the object the operation acts on, as the listing operation of that kind of object reports  it. It has to match the shape the route declares - a GUID where the route is typed as one - since a value of  another shape does not match the route at all and is answered as not found. | 

### Return type

[**UsageSpaceStatItemArrayWrapper**](UsageSpaceStatItemArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // UUID | The identifier of the object the operation acts on, as the listing operation of that kind of object reports  it. It has to match the shape the route declares - a GUID where the route is typed as one - since a value of  another shape does not match the route at all and is answered as not found.

// Get the space usage statistics
SettingsStatisticsAPIApi.getSpaceUsageStatistics(id: id) { (response, error) in
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

