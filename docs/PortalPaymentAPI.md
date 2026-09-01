# PortalPaymentAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**calculateWalletPayment**](PortalPaymentAPI.md#calculatewalletpayment) | **PUT** /api/2.0/portal/payment/calculatewallet | Calculate the wallet payment amount
[**changeTenantWalletServiceState**](PortalPaymentAPI.md#changetenantwalletservicestate) | **POST** /api/2.0/portal/payment/servicestate | Change tenant wallet service state
[**createCustomerMonthlyUsageReport**](PortalPaymentAPI.md#createcustomermonthlyusagereport) | **POST** /api/2.0/portal/payment/customer/usage/monthly/report | Start the customer monthly usage report generation
[**createCustomerOperationsReport**](PortalPaymentAPI.md#createcustomeroperationsreport) | **POST** /api/2.0/portal/payment/customer/operationsreport | Start the customer operations report generation
[**createCustomerServiceUsageReport**](PortalPaymentAPI.md#createcustomerserviceusagereport) | **POST** /api/2.0/portal/payment/customer/usage/report | Start the customer service usage report generation
[**getActiveServices**](PortalPaymentAPI.md#getactiveservices) | **GET** /api/2.0/portal/payment/activeservices | Get the active wallet services
[**getAiPrices**](PortalPaymentAPI.md#getaiprices) | **GET** /api/2.0/portal/payment/ai-prices | Get AI model prices
[**getCheckoutSetupUrl**](PortalPaymentAPI.md#getcheckoutsetupurl) | **GET** /api/2.0/portal/payment/checkoutsetupurl | Get the checkout setup page URL
[**getCustomerBalance**](PortalPaymentAPI.md#getcustomerbalance) | **GET** /api/2.0/portal/payment/customer/balance | Get the customer balance
[**getCustomerInfo**](PortalPaymentAPI.md#getcustomerinfo) | **GET** /api/2.0/portal/payment/customerinfo | Get the customer information
[**getCustomerMonthlyUsage**](PortalPaymentAPI.md#getcustomermonthlyusage) | **GET** /api/2.0/portal/payment/customer/usage/monthly | Get the customer monthly usage
[**getCustomerMonthlyUsageReport**](PortalPaymentAPI.md#getcustomermonthlyusagereport) | **GET** /api/2.0/portal/payment/customer/usage/monthly/report | Get the status of the customer monthly usage report generation
[**getCustomerOperations**](PortalPaymentAPI.md#getcustomeroperations) | **GET** /api/2.0/portal/payment/customer/operations | Get the customer operations
[**getCustomerOperationsReport**](PortalPaymentAPI.md#getcustomeroperationsreport) | **GET** /api/2.0/portal/payment/customer/operationsreport | Get the status of the customer operations report generation
[**getCustomerServiceUsage**](PortalPaymentAPI.md#getcustomerserviceusage) | **GET** /api/2.0/portal/payment/customer/usage | Get the customer service usage
[**getCustomerServiceUsageReport**](PortalPaymentAPI.md#getcustomerserviceusagereport) | **GET** /api/2.0/portal/payment/customer/usage/report | Get the status of the customer service usage report generation
[**getPaymentAccount**](PortalPaymentAPI.md#getpaymentaccount) | **GET** /api/2.0/portal/payment/account | Get the payment account
[**getPaymentCurrencies**](PortalPaymentAPI.md#getpaymentcurrencies) | **GET** /api/2.0/portal/payment/currencies | Get currencies
[**getPaymentQuotas**](PortalPaymentAPI.md#getpaymentquotas) | **GET** /api/2.0/portal/payment/quotas | Get quotas
[**getPaymentUrl**](PortalPaymentAPI.md#getpaymenturl) | **PUT** /api/2.0/portal/payment/url | Get the payment page URL
[**getPortalPrices**](PortalPaymentAPI.md#getportalprices) | **GET** /api/2.0/portal/payment/prices | Get prices
[**getQuotaPaymentInformation**](PortalPaymentAPI.md#getquotapaymentinformation) | **GET** /api/2.0/portal/payment/quota | Get quota payment information
[**getRestrictedAiModels**](PortalPaymentAPI.md#getrestrictedaimodels) | **GET** /api/2.0/portal/payment/ai-model/restrictions | Get restricted AI models
[**getSubscriptionBalanceInfo**](PortalPaymentAPI.md#getsubscriptionbalanceinfo) | **GET** /api/2.0/portal/payment/subscription/balance | Get the subscription balance information
[**getTenantWalletServiceSettings**](PortalPaymentAPI.md#gettenantwalletservicesettings) | **GET** /api/2.0/portal/payment/servicessettings | Gets the wallet service settings for the tenant.
[**getTenantWalletSettings**](PortalPaymentAPI.md#gettenantwalletsettings) | **GET** /api/2.0/portal/payment/topupsettings | Gets the tenant wallet auto top up settings
[**getWalletService**](PortalPaymentAPI.md#getwalletservice) | **GET** /api/2.0/portal/payment/walletservice | Get wallet service
[**getWalletServices**](PortalPaymentAPI.md#getwalletservices) | **GET** /api/2.0/portal/payment/walletservices | Get wallet services
[**moveSubscriptionToWallet**](PortalPaymentAPI.md#movesubscriptiontowallet) | **POST** /api/2.0/portal/payment/subscription/movetowallet | Move the subscription balance to the wallet and purchase admins
[**sendPaymentRequest**](PortalPaymentAPI.md#sendpaymentrequest) | **POST** /api/2.0/portal/payment/request | Send a payment request
[**setRestrictedAiModels**](PortalPaymentAPI.md#setrestrictedaimodels) | **PUT** /api/2.0/portal/payment/ai-model/restrictions | Set restricted AI models
[**setTenantWalletSettings**](PortalPaymentAPI.md#settenantwalletsettings) | **POST** /api/2.0/portal/payment/topupsettings | Set the wallet auto top up settings
[**terminateCustomerMonthlyUsageReport**](PortalPaymentAPI.md#terminatecustomermonthlyusagereport) | **DELETE** /api/2.0/portal/payment/customer/usage/monthly/report | Terminate the customer monthly usage report generation
[**terminateCustomerOperationsReport**](PortalPaymentAPI.md#terminatecustomeroperationsreport) | **DELETE** /api/2.0/portal/payment/customer/operationsreport | Terminate the customer operations report generation
[**terminateCustomerServiceUsageReport**](PortalPaymentAPI.md#terminatecustomerserviceusagereport) | **DELETE** /api/2.0/portal/payment/customer/usage/report | Terminate the customer service usage report generation
[**topUpDeposit**](PortalPaymentAPI.md#topupdeposit) | **POST** /api/2.0/portal/payment/deposit | Put money on deposit
[**updatePayment**](PortalPaymentAPI.md#updatepayment) | **PUT** /api/2.0/portal/payment/update | Update the payment quantity
[**updateWalletPayment**](PortalPaymentAPI.md#updatewalletpayment) | **PUT** /api/2.0/portal/payment/updatewallet | Update the wallet payment quantity


# **calculateWalletPayment**
```swift
    open class func calculateWalletPayment(walletQuantityRequestDto: WalletQuantityRequestDto? = nil, completion: @escaping (_ data: PaymentCalculationWrapper?, _ error: Error?) -> Void)
```

Calculates an amount of the wallet payment with the parameters specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/calculate-wallet-payment/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **walletQuantityRequestDto** | [**WalletQuantityRequestDto**](WalletQuantityRequestDto.md) |  | [optional] 

### Return type

[**PaymentCalculationWrapper**](PaymentCalculationWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let walletQuantityRequestDto = WalletQuantityRequestDto(quantity: "TODO", productQuantityType: ProductQuantityType()) // WalletQuantityRequestDto |  (optional)

// Calculate the wallet payment amount
PortalPaymentAPIApi.calculateWalletPayment(walletQuantityRequestDto: walletQuantityRequestDto) { (response, error) in
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

# **changeTenantWalletServiceState**
```swift
    open class func changeTenantWalletServiceState(changeWalletServiceStateRequestDto: ChangeWalletServiceStateRequestDto? = nil, completion: @escaping (_ data: TenantWalletServiceSettingsWrapper?, _ error: Error?) -> Void)
```

Changes the state of a wallet service for the current tenant.  Requires permission to edit portal settings and a configured tariff service.  Adds or removes the specified service from the enabled services list based on the enabled flag.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/change-tenant-wallet-service-state/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **changeWalletServiceStateRequestDto** | [**ChangeWalletServiceStateRequestDto**](ChangeWalletServiceStateRequestDto.md) |  | [optional] 

### Return type

[**TenantWalletServiceSettingsWrapper**](TenantWalletServiceSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let changeWalletServiceStateRequestDto = ChangeWalletServiceStateRequestDto(service: TenantWalletService(), enabled: true) // ChangeWalletServiceStateRequestDto |  (optional)

// Change tenant wallet service state
PortalPaymentAPIApi.changeTenantWalletServiceState(changeWalletServiceStateRequestDto: changeWalletServiceStateRequestDto) { (response, error) in
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

# **createCustomerMonthlyUsageReport**
```swift
    open class func createCustomerMonthlyUsageReport(customerMonthlyUsageReportRequestDto: CustomerMonthlyUsageReportRequestDto? = nil, completion: @escaping (_ data: DocumentBuilderTaskWrapper?, _ error: Error?) -> Void)
```

Starts generating a customer monthly usage report as an xlsx file and saves it in Documents.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-customer-monthly-usage-report/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerMonthlyUsageReportRequestDto** | [**CustomerMonthlyUsageReportRequestDto**](CustomerMonthlyUsageReportRequestDto.md) |  | [optional] 

### Return type

[**DocumentBuilderTaskWrapper**](DocumentBuilderTaskWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let customerMonthlyUsageReportRequestDto = CustomerMonthlyUsageReportRequestDto(startDate: Date(), endDate: Date()) // CustomerMonthlyUsageReportRequestDto |  (optional)

// Start the customer monthly usage report generation
PortalPaymentAPIApi.createCustomerMonthlyUsageReport(customerMonthlyUsageReportRequestDto: customerMonthlyUsageReportRequestDto) { (response, error) in
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

# **createCustomerOperationsReport**
```swift
    open class func createCustomerOperationsReport(customerOperationsReportRequestDto: CustomerOperationsReportRequestDto? = nil, completion: @escaping (_ data: DocumentBuilderTaskWrapper?, _ error: Error?) -> Void)
```

Starts generating a customer operations report as an xlsx file and saves it in Documents.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-customer-operations-report/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerOperationsReportRequestDto** | [**CustomerOperationsReportRequestDto**](CustomerOperationsReportRequestDto.md) |  | [optional] 

### Return type

[**DocumentBuilderTaskWrapper**](DocumentBuilderTaskWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let customerOperationsReportRequestDto = CustomerOperationsReportRequestDto(serviceName: ["serviceName_example"], startDate: Date(), endDate: Date(), participantName: "participantName_example", credit: true, debit: false, type: OperationType(), status: OperationStatus(), orderBy: "orderBy_example", orderType: OperationOrderType()) // CustomerOperationsReportRequestDto |  (optional)

// Start the customer operations report generation
PortalPaymentAPIApi.createCustomerOperationsReport(customerOperationsReportRequestDto: customerOperationsReportRequestDto) { (response, error) in
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

# **createCustomerServiceUsageReport**
```swift
    open class func createCustomerServiceUsageReport(customerServiceUsageReportRequestDto: CustomerServiceUsageReportRequestDto? = nil, completion: @escaping (_ data: DocumentBuilderTaskWrapper?, _ error: Error?) -> Void)
```

Starts generating a customer service usage report as an xlsx file and saves it in Documents.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-customer-service-usage-report/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerServiceUsageReportRequestDto** | [**CustomerServiceUsageReportRequestDto**](CustomerServiceUsageReportRequestDto.md) |  | [optional] 

### Return type

[**DocumentBuilderTaskWrapper**](DocumentBuilderTaskWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let customerServiceUsageReportRequestDto = CustomerServiceUsageReportRequestDto(serviceName: ["serviceName_example"], startDate: Date(), endDate: Date(), participantName: "participantName_example", status: OperationStatus(), metadata: "TODO", orderBy: "orderBy_example", orderType: OperationOrderType()) // CustomerServiceUsageReportRequestDto |  (optional)

// Start the customer service usage report generation
PortalPaymentAPIApi.createCustomerServiceUsageReport(customerServiceUsageReportRequestDto: customerServiceUsageReportRequestDto) { (response, error) in
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

# **getActiveServices**
```swift
    open class func getActiveServices(completion: @escaping (_ data: ActiveServiceArrayWrapper?, _ error: Error?) -> Void)
```

Returns all the active wallet services (quotas) of the current portal: the active additional quotas  from the tariff, plus the services enabled manually via the wallet service settings.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-active-services/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**ActiveServiceArrayWrapper**](ActiveServiceArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get the active wallet services
PortalPaymentAPIApi.getActiveServices() { (response, error) in
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

# **getAiPrices**
```swift
    open class func getAiPrices(completion: @escaping (_ data: AiPricesResponseWrapper?, _ error: Error?) -> Void)
```

Retrieves the pricing information for AI models including chat, embedding, and web search services.  The prices are returned in the configured currency and normalized per million tokens.  Requires administrator permissions to access.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-ai-prices/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**AiPricesResponseWrapper**](AiPricesResponseWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get AI model prices
PortalPaymentAPIApi.getAiPrices() { (response, error) in
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

# **getCheckoutSetupUrl**
```swift
    open class func getCheckoutSetupUrl(backUrl: String, successUrl: String, completion: @escaping (_ data: StringWrapper?, _ error: Error?) -> Void)
```

Returns the URL to the checkout setup page.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-checkout-setup-url/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **backUrl** | **String** | The URL where the user will be redirected after setup cancellation. | 
 **successUrl** | **String** | The URL where the user will be redirected after successful payment. | 

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let backUrl = "backUrl_example" // String | The URL where the user will be redirected after setup cancellation.
let successUrl = "successUrl_example" // String | The URL where the user will be redirected after successful payment.

// Get the checkout setup page URL
PortalPaymentAPIApi.getCheckoutSetupUrl(backUrl: backUrl, successUrl: successUrl) { (response, error) in
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

# **getCustomerBalance**
```swift
    open class func getCustomerBalance(refresh: Bool? = nil, completion: @escaping (_ data: BalanceWrapper?, _ error: Error?) -> Void)
```

Returns the customer balance from the accounting service.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-customer-balance/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **refresh** | **Bool** | Specifies whether to refresh the payment information cache or not. | [optional] 

### Return type

[**BalanceWrapper**](BalanceWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let refresh = true // Bool | Specifies whether to refresh the payment information cache or not. (optional)

// Get the customer balance
PortalPaymentAPIApi.getCustomerBalance(refresh: refresh) { (response, error) in
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

# **getCustomerInfo**
```swift
    open class func getCustomerInfo(refresh: Bool? = nil, completion: @escaping (_ data: CustomerInfoWrapper?, _ error: Error?) -> Void)
```

Returns the customer information.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-customer-info/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **refresh** | **Bool** | Specifies whether to refresh the payment information cache or not. | [optional] 

### Return type

[**CustomerInfoWrapper**](CustomerInfoWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let refresh = true // Bool | Specifies whether to refresh the payment information cache or not. (optional)

// Get the customer information
PortalPaymentAPIApi.getCustomerInfo(refresh: refresh) { (response, error) in
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

# **getCustomerMonthlyUsage**
```swift
    open class func getCustomerMonthlyUsage(startDate: Date? = nil, endDate: Date? = nil, completion: @escaping (_ data: CustomerMonthlyUsageArrayWrapper?, _ error: Error?) -> Void)
```

Returns the customer spending aggregated per calendar month from the accounting service.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-customer-monthly-usage/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **Date** | Start of the period (inclusive). | [optional] 
 **endDate** | **Date** | End of the period (inclusive). | [optional] 

### Return type

[**CustomerMonthlyUsageArrayWrapper**](CustomerMonthlyUsageArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let startDate = Date() // Date | Start of the period (inclusive). (optional)
let endDate = Date() // Date | End of the period (inclusive). (optional)

// Get the customer monthly usage
PortalPaymentAPIApi.getCustomerMonthlyUsage(startDate: startDate, endDate: endDate) { (response, error) in
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

# **getCustomerMonthlyUsageReport**
```swift
    open class func getCustomerMonthlyUsageReport(completion: @escaping (_ data: DocumentBuilderTaskWrapper?, _ error: Error?) -> Void)
```

Returns the status of generating a customer monthly usage report.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-customer-monthly-usage-report/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**DocumentBuilderTaskWrapper**](DocumentBuilderTaskWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get the status of the customer monthly usage report generation
PortalPaymentAPIApi.getCustomerMonthlyUsageReport() { (response, error) in
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

# **getCustomerOperations**
```swift
    open class func getCustomerOperations(offset: Int? = nil, limit: Int? = nil, serviceName: [String]? = nil, startDate: Date? = nil, endDate: Date? = nil, participantName: String? = nil, credit: Bool? = nil, debit: Bool? = nil, type: OperationType? = nil, status: OperationStatus? = nil, orderBy: String? = nil, orderType: OperationOrderType? = nil, completion: @escaping (_ data: ReportWrapper?, _ error: Error?) -> Void)
```

Returns the report of customer operations from the accounting service.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-customer-operations/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **offset** | **Int** | The number of items to skip for pagination. The default value is 0. | [optional] 
 **limit** | **Int** | The maximum number of items to return for pagination. The default value is 25. | [optional] 
 **serviceName** | [**[String]**](String.md) | The service name list. A single string is also accepted for backward compatibility. | [optional] 
 **startDate** | **Date** | The report start date. | [optional] 
 **endDate** | **Date** | The report end date. | [optional] 
 **participantName** | **String** | The participant name. | [optional] 
 **credit** | **Bool** | Specifies whether to include credit operations in the report. | [optional] 
 **debit** | **Bool** | Specifies whether to include debit operations in the report. | [optional] 
 **type** | [**OperationType**](.md) | The operation type to filter by. | [optional] 
 **status** | [**OperationStatus**](.md) | The operation status to filter by. | [optional] 
 **orderBy** | **String** | The field to order by. | [optional] 
 **orderType** | [**OperationOrderType**](.md) | Order direction: Ascending or Descending. | [optional] 

### Return type

[**ReportWrapper**](ReportWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let offset = 987 // Int | The number of items to skip for pagination. The default value is 0. (optional)
let limit = 987 // Int | The maximum number of items to return for pagination. The default value is 25. (optional)
let serviceName = ["inner_example"] // [String] | The service name list. A single string is also accepted for backward compatibility. (optional)
let startDate = Date() // Date | The report start date. (optional)
let endDate = Date() // Date | The report end date. (optional)
let participantName = "participantName_example" // String | The participant name. (optional)
let credit = true // Bool | Specifies whether to include credit operations in the report. (optional)
let debit = false // Bool | Specifies whether to include debit operations in the report. (optional)
let type = OperationType() // OperationType | The operation type to filter by. (optional)
let status = OperationStatus() // OperationStatus | The operation status to filter by. (optional)
let orderBy = "orderBy_example" // String | The field to order by. (optional)
let orderType = OperationOrderType() // OperationOrderType | Order direction: Ascending or Descending. (optional)

// Get the customer operations
PortalPaymentAPIApi.getCustomerOperations(offset: offset, limit: limit, serviceName: serviceName, startDate: startDate, endDate: endDate, participantName: participantName, credit: credit, debit: debit, type: type, status: status, orderBy: orderBy, orderType: orderType) { (response, error) in
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

# **getCustomerOperationsReport**
```swift
    open class func getCustomerOperationsReport(completion: @escaping (_ data: DocumentBuilderTaskWrapper?, _ error: Error?) -> Void)
```

Returns the status of generating a customer operations report.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-customer-operations-report/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**DocumentBuilderTaskWrapper**](DocumentBuilderTaskWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get the status of the customer operations report generation
PortalPaymentAPIApi.getCustomerOperationsReport() { (response, error) in
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

# **getCustomerServiceUsage**
```swift
    open class func getCustomerServiceUsage(serviceName: [String]? = nil, participantName: String? = nil, status: OperationStatus? = nil, startDate: Date? = nil, endDate: Date? = nil, metadata: [String: String?]? = nil, offset: Int? = nil, limit: Int? = nil, orderBy: String? = nil, orderType: OperationOrderType? = nil, completion: @escaping (_ data: CustomerServiceUsageReportWrapper?, _ error: Error?) -> Void)
```

Returns the customer usage statistics aggregated per service from the accounting service.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-customer-service-usage/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **serviceName** | [**[String]**](String.md) | The service name list. | [optional] 
 **participantName** | **String** | The participant name. | [optional] 
 **status** | [**OperationStatus**](.md) | The operation status to filter by. | [optional] 
 **startDate** | **Date** | Start of the period (inclusive). | [optional] 
 **endDate** | **Date** | End of the period (inclusive). | [optional] 
 **metadata** | [**[String: String?]**](String.md) | Metadata key-value pairs to filter by. | [optional] 
 **offset** | **Int** | The number of items to skip for pagination. The default value is 0. | [optional] 
 **limit** | **Int** | The maximum number of items to return for pagination. The default value is 25. | [optional] 
 **orderBy** | **String** | The field to order by. | [optional] 
 **orderType** | [**OperationOrderType**](.md) | Order direction: Ascending or Descending. | [optional] 

### Return type

[**CustomerServiceUsageReportWrapper**](CustomerServiceUsageReportWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let serviceName = ["inner_example"] // [String] | The service name list. (optional)
let participantName = "participantName_example" // String | The participant name. (optional)
let status = OperationStatus() // OperationStatus | The operation status to filter by. (optional)
let startDate = Date() // Date | Start of the period (inclusive). (optional)
let endDate = Date() // Date | End of the period (inclusive). (optional)
let metadata = "TODO" // [String: String?] | Metadata key-value pairs to filter by. (optional)
let offset = 987 // Int | The number of items to skip for pagination. The default value is 0. (optional)
let limit = 987 // Int | The maximum number of items to return for pagination. The default value is 25. (optional)
let orderBy = "orderBy_example" // String | The field to order by. (optional)
let orderType = OperationOrderType() // OperationOrderType | Order direction: Ascending or Descending. (optional)

// Get the customer service usage
PortalPaymentAPIApi.getCustomerServiceUsage(serviceName: serviceName, participantName: participantName, status: status, startDate: startDate, endDate: endDate, metadata: metadata, offset: offset, limit: limit, orderBy: orderBy, orderType: orderType) { (response, error) in
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

# **getCustomerServiceUsageReport**
```swift
    open class func getCustomerServiceUsageReport(completion: @escaping (_ data: DocumentBuilderTaskWrapper?, _ error: Error?) -> Void)
```

Returns the status of generating a customer service usage report.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-customer-service-usage-report/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**DocumentBuilderTaskWrapper**](DocumentBuilderTaskWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get the status of the customer service usage report generation
PortalPaymentAPIApi.getCustomerServiceUsageReport() { (response, error) in
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

# **getPaymentAccount**
```swift
    open class func getPaymentAccount(backUrl: String? = nil, completion: @escaping (_ data: StringWrapper?, _ error: Error?) -> Void)
```

Returns the URL to the payment account.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-payment-account/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **backUrl** | **String** | The URL where the user will be redirected after payment processing. | [optional] 

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let backUrl = "backUrl_example" // String | The URL where the user will be redirected after payment processing. (optional)

// Get the payment account
PortalPaymentAPIApi.getPaymentAccount(backUrl: backUrl) { (response, error) in
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

# **getPaymentCurrencies**
```swift
    open class func getPaymentCurrencies(completion: @escaping (_ data: CurrenciesArrayWrapper?, _ error: Error?) -> Void)
```

Returns the available portal currencies.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-payment-currencies/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**CurrenciesArrayWrapper**](CurrenciesArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get currencies
PortalPaymentAPIApi.getPaymentCurrencies() { (response, error) in
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

# **getPaymentQuotas**
```swift
    open class func getPaymentQuotas(wallet: Bool? = nil, additional: Bool? = nil, completion: @escaping (_ data: QuotaArrayWrapper?, _ error: Error?) -> Void)
```

Returns the available portal quotas.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-payment-quotas/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wallet** | **Bool** | Specifies whether to return the wallet quotas only. | [optional] 
 **additional** | **Bool** | Specifies whether to return additional quotas only. | [optional] 

### Return type

[**QuotaArrayWrapper**](QuotaArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let wallet = true // Bool | Specifies whether to return the wallet quotas only. (optional)
let additional = true // Bool | Specifies whether to return additional quotas only. (optional)

// Get quotas
PortalPaymentAPIApi.getPaymentQuotas(wallet: wallet, additional: additional) { (response, error) in
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

# **getPaymentUrl**
```swift
    open class func getPaymentUrl(paymentUrlRequestDto: PaymentUrlRequestDto? = nil, completion: @escaping (_ data: StringWrapper?, _ error: Error?) -> Void)
```

Returns the URL to the payment page.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-payment-url/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **paymentUrlRequestDto** | [**PaymentUrlRequestDto**](PaymentUrlRequestDto.md) |  | [optional] 

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let paymentUrlRequestDto = PaymentUrlRequestDto(backUrl: "backUrl_example", successUrl: "successUrl_example", quantity: "TODO") // PaymentUrlRequestDto |  (optional)

// Get the payment page URL
PortalPaymentAPIApi.getPaymentUrl(paymentUrlRequestDto: paymentUrlRequestDto) { (response, error) in
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

# **getPortalPrices**
```swift
    open class func getPortalPrices(completion: @escaping (_ data: GetPortalPrices200Response?, _ error: Error?) -> Void)
```

Returns the available portal prices.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-prices/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetPortalPrices200Response**](GetPortalPrices200Response.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get prices
PortalPaymentAPIApi.getPortalPrices() { (response, error) in
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

# **getQuotaPaymentInformation**
```swift
    open class func getQuotaPaymentInformation(refresh: Bool? = nil, completion: @escaping (_ data: QuotaWrapper?, _ error: Error?) -> Void)
```

Returns the payment information about the current portal quota.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-quota-payment-information/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **refresh** | **Bool** | Specifies whether to refresh the payment information cache or not. | [optional] 

### Return type

[**QuotaWrapper**](QuotaWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let refresh = true // Bool | Specifies whether to refresh the payment information cache or not. (optional)

// Get quota payment information
PortalPaymentAPIApi.getQuotaPaymentInformation(refresh: refresh) { (response, error) in
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

# **getRestrictedAiModels**
```swift
    open class func getRestrictedAiModels(completion: @escaping (_ data: RestrictedModelsResponseWrapper?, _ error: Error?) -> Void)
```

Returns the list of AI chat model IDs that are restricted (disabled) for the current tenant.  Restricted models cannot be used for AI chat conversations by any user within the portal.  Only DocSpace administrators can access this endpoint.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-restricted-ai-models/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**RestrictedModelsResponseWrapper**](RestrictedModelsResponseWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get restricted AI models
PortalPaymentAPIApi.getRestrictedAiModels() { (response, error) in
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

# **getSubscriptionBalanceInfo**
```swift
    open class func getSubscriptionBalanceInfo(completion: @escaping (_ data: SubscriptionBalanceInfoWrapper?, _ error: Error?) -> Void)
```

Returns the information about the current subscription and its unused (prorated) balance.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-subscription-balance-info/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**SubscriptionBalanceInfoWrapper**](SubscriptionBalanceInfoWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get the subscription balance information
PortalPaymentAPIApi.getSubscriptionBalanceInfo() { (response, error) in
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

# **getTenantWalletServiceSettings**
```swift
    open class func getTenantWalletServiceSettings(completion: @escaping (_ data: TenantWalletServiceSettingsWrapper?, _ error: Error?) -> Void)
```

Retrieves configuration settings related to the wallet service associated with the current tenant.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tenant-wallet-service-settings/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**TenantWalletServiceSettingsWrapper**](TenantWalletServiceSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Gets the wallet service settings for the tenant.
PortalPaymentAPIApi.getTenantWalletServiceSettings() { (response, error) in
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

# **getTenantWalletSettings**
```swift
    open class func getTenantWalletSettings(completion: @escaping (_ data: TenantWalletSettingsResponseWrapper?, _ error: Error?) -> Void)
```

Returns the wallet auto top up settings for the current tenant.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tenant-wallet-settings/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**TenantWalletSettingsResponseWrapper**](TenantWalletSettingsResponseWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Gets the tenant wallet auto top up settings
PortalPaymentAPIApi.getTenantWalletSettings() { (response, error) in
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

# **getWalletService**
```swift
    open class func getWalletService(service: TenantWalletService, completion: @escaping (_ data: WalletServiceWrapper?, _ error: Error?) -> Void)
```

Returns the specified wallet service.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-wallet-service/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service** | [**TenantWalletService**](.md) | The wallet service type. | 

### Return type

[**WalletServiceWrapper**](WalletServiceWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let service = TenantWalletService() // TenantWalletService | The wallet service type.

// Get wallet service
PortalPaymentAPIApi.getWalletService(service: service) { (response, error) in
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

# **getWalletServices**
```swift
    open class func getWalletServices(completion: @escaping (_ data: WalletServiceArrayWrapper?, _ error: Error?) -> Void)
```

Returns the available wallet services.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-wallet-services/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**WalletServiceArrayWrapper**](WalletServiceArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get wallet services
PortalPaymentAPIApi.getWalletServices() { (response, error) in
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

# **moveSubscriptionToWallet**
```swift
    open class func moveSubscriptionToWallet(quantityRequestDto: QuantityRequestDto? = nil, completion: @escaping (_ data: BooleanWrapper?, _ error: Error?) -> Void)
```

Cancels the current subscription, moves its unused balance to the wallet, and purchases the requested number of  admins from the wallet. If the wallet balance is not enough, it is topped up for the missing amount first  (with several attempts, as the balance may be consumed concurrently).

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/move-subscription-to-wallet/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **quantityRequestDto** | [**QuantityRequestDto**](QuantityRequestDto.md) |  | [optional] 

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let quantityRequestDto = QuantityRequestDto(quantity: "TODO") // QuantityRequestDto |  (optional)

// Move the subscription balance to the wallet and purchase admins
PortalPaymentAPIApi.moveSubscriptionToWallet(quantityRequestDto: quantityRequestDto) { (response, error) in
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

# **sendPaymentRequest**
```swift
    open class func sendPaymentRequest(salesRequestsDto: SalesRequestsDto? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Sends a request for the portal payment.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/send-payment-request/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **salesRequestsDto** | [**SalesRequestsDto**](SalesRequestsDto.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let salesRequestsDto = SalesRequestsDto(userName: "userName_example", email: "email_example", message: "message_example") // SalesRequestsDto |  (optional)

// Send a payment request
PortalPaymentAPIApi.sendPaymentRequest(salesRequestsDto: salesRequestsDto) { (response, error) in
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

# **setRestrictedAiModels**
```swift
    open class func setRestrictedAiModels(setRestrictedAiModelsRequestDto: SetRestrictedAiModelsRequestDto? = nil, completion: @escaping (_ data: RestrictedModelsResponseWrapper?, _ error: Error?) -> Void)
```

Overwrites the entire set of restricted AI model IDs for the current tenant.  The request body must contain the complete desired set — to add a restriction, include the new model alongside existing ones;  to remove one, omit it. An empty set lifts all restrictions. Only portal administrators can perform this action.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-restricted-ai-models/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **setRestrictedAiModelsRequestDto** | [**SetRestrictedAiModelsRequestDto**](SetRestrictedAiModelsRequestDto.md) |  | [optional] 

### Return type

[**RestrictedModelsResponseWrapper**](RestrictedModelsResponseWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let setRestrictedAiModelsRequestDto = SetRestrictedAiModelsRequestDto(models: ["models_example"]) // SetRestrictedAiModelsRequestDto |  (optional)

// Set restricted AI models
PortalPaymentAPIApi.setRestrictedAiModels(setRestrictedAiModelsRequestDto: setRestrictedAiModelsRequestDto) { (response, error) in
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

# **setTenantWalletSettings**
```swift
    open class func setTenantWalletSettings(tenantWalletSettingsWrapper: TenantWalletSettingsWrapper? = nil, completion: @escaping (_ data: TenantWalletSettingsResponseWrapper?, _ error: Error?) -> Void)
```

Updates the wallet auto top up settings for the current tenant.  Requires the tariff service to be configured and the user to be authorized as a payer.  Returns null if the tariff service is not configured or customer information/balance cannot be retrieved.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-tenant-wallet-settings/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantWalletSettingsWrapper** | [**TenantWalletSettingsWrapper**](TenantWalletSettingsWrapper.md) |  | [optional] 

### Return type

[**TenantWalletSettingsResponseWrapper**](TenantWalletSettingsResponseWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let tenantWalletSettingsWrapper = TenantWalletSettingsWrapper(settings: TenantWalletSettings(enabled: true, minBalance: 123, upToBalance: 123, currency: "currency_example", lowBalanceThreshold: 123, lowBalanceNotified: false, lastModified: Date())) // TenantWalletSettingsWrapper |  (optional)

// Set the wallet auto top up settings
PortalPaymentAPIApi.setTenantWalletSettings(tenantWalletSettingsWrapper: tenantWalletSettingsWrapper) { (response, error) in
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

# **terminateCustomerMonthlyUsageReport**
```swift
    open class func terminateCustomerMonthlyUsageReport(completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Terminates generating a customer monthly usage report.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/terminate-customer-monthly-usage-report/).

### Parameters
This endpoint does not need any parameter.

### Return type

Void (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Terminate the customer monthly usage report generation
PortalPaymentAPIApi.terminateCustomerMonthlyUsageReport() { (response, error) in
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

# **terminateCustomerOperationsReport**
```swift
    open class func terminateCustomerOperationsReport(completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Terminates generating a customer operations report.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/terminate-customer-operations-report/).

### Parameters
This endpoint does not need any parameter.

### Return type

Void (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Terminate the customer operations report generation
PortalPaymentAPIApi.terminateCustomerOperationsReport() { (response, error) in
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

# **terminateCustomerServiceUsageReport**
```swift
    open class func terminateCustomerServiceUsageReport(completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Terminates generating a customer service usage report.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/terminate-customer-service-usage-report/).

### Parameters
This endpoint does not need any parameter.

### Return type

Void (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Terminate the customer service usage report generation
PortalPaymentAPIApi.terminateCustomerServiceUsageReport() { (response, error) in
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

# **topUpDeposit**
```swift
    open class func topUpDeposit(topUpDepositRequestDto: TopUpDepositRequestDto? = nil, completion: @escaping (_ data: BooleanWrapper?, _ error: Error?) -> Void)
```

Returns the result of putting money on deposit.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/top-up-deposit/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **topUpDepositRequestDto** | [**TopUpDepositRequestDto**](TopUpDepositRequestDto.md) |  | [optional] 

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let topUpDepositRequestDto = TopUpDepositRequestDto(amount: 123, currency: "currency_example") // TopUpDepositRequestDto |  (optional)

// Put money on deposit
PortalPaymentAPIApi.topUpDeposit(topUpDepositRequestDto: topUpDepositRequestDto) { (response, error) in
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

# **updatePayment**
```swift
    open class func updatePayment(quantityRequestDto: QuantityRequestDto? = nil, completion: @escaping (_ data: BooleanWrapper?, _ error: Error?) -> Void)
```

Updates the payment quantity with the parameters specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-payment/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **quantityRequestDto** | [**QuantityRequestDto**](QuantityRequestDto.md) |  | [optional] 

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let quantityRequestDto = QuantityRequestDto(quantity: "TODO") // QuantityRequestDto |  (optional)

// Update the payment quantity
PortalPaymentAPIApi.updatePayment(quantityRequestDto: quantityRequestDto) { (response, error) in
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

# **updateWalletPayment**
```swift
    open class func updateWalletPayment(walletQuantityRequestDto: WalletQuantityRequestDto? = nil, completion: @escaping (_ data: BooleanWrapper?, _ error: Error?) -> Void)
```

Updates the wallet payment quantity with the parameters specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-wallet-payment/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **walletQuantityRequestDto** | [**WalletQuantityRequestDto**](WalletQuantityRequestDto.md) |  | [optional] 

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let walletQuantityRequestDto = WalletQuantityRequestDto(quantity: "TODO", productQuantityType: ProductQuantityType()) // WalletQuantityRequestDto |  (optional)

// Update the wallet payment quantity
PortalPaymentAPIApi.updateWalletPayment(walletQuantityRequestDto: walletQuantityRequestDto) { (response, error) in
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

