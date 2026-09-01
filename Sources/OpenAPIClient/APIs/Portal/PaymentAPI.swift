//
//  Copyright (c) Ascensio System SIA 2026
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.

import Foundation

open class {{{{x-classname}}}} {

    /**
     Calculate the wallet payment amount
     
     See also:
     REST API Reference for calculateWalletPayment Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/calculate-wallet-payment/
     - parameter walletQuantityRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: PaymentCalculationWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func calculateWalletPayment(walletQuantityRequestDto: WalletQuantityRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> PaymentCalculationWrapper {
        return try await calculateWalletPaymentWithRequestBuilder(walletQuantityRequestDto: walletQuantityRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Calculate the wallet payment amount
     
     See also:
     REST API Reference for calculateWalletPayment Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/calculate-wallet-payment/
     
     - PUT /api/2.0/portal/payment/calculatewallet
     - Calculates an amount of the wallet payment with the parameters specified in the request.
     - BASIC:
       - type: http
       - name: Basic
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - API Key:
       - type: apiKey ApiKeyBearer (HEADER)
       - name: ApiKeyBearer
     - API Key:
       - type: apiKey asc_auth_key 
       - name: asc_auth_key
     - Bearer Token:
       - type: http
       - name: Bearer
     - :
       - type: openIdConnect
       - name: OpenId
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter walletQuantityRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<PaymentCalculationWrapper> 
     */
    open class func calculateWalletPaymentWithRequestBuilder(walletQuantityRequestDto: WalletQuantityRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<PaymentCalculationWrapper> {
        let localVariablePath = "/api/2.0/portal/payment/calculatewallet"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: walletQuantityRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<PaymentCalculationWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Change tenant wallet service state
     
     See also:
     REST API Reference for changeTenantWalletServiceState Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/change-tenant-wallet-service-state/
     - parameter changeWalletServiceStateRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: TenantWalletServiceSettingsWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func changeTenantWalletServiceState(changeWalletServiceStateRequestDto: ChangeWalletServiceStateRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> TenantWalletServiceSettingsWrapper {
        return try await changeTenantWalletServiceStateWithRequestBuilder(changeWalletServiceStateRequestDto: changeWalletServiceStateRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Change tenant wallet service state
     
     See also:
     REST API Reference for changeTenantWalletServiceState Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/change-tenant-wallet-service-state/
     
     - POST /api/2.0/portal/payment/servicestate
     - Changes the state of a wallet service for the current tenant.  Requires permission to edit portal settings and a configured tariff service.  Adds or removes the specified service from the enabled services list based on the enabled flag.
     - BASIC:
       - type: http
       - name: Basic
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - API Key:
       - type: apiKey ApiKeyBearer (HEADER)
       - name: ApiKeyBearer
     - API Key:
       - type: apiKey asc_auth_key 
       - name: asc_auth_key
     - Bearer Token:
       - type: http
       - name: Bearer
     - :
       - type: openIdConnect
       - name: OpenId
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter changeWalletServiceStateRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<TenantWalletServiceSettingsWrapper> 
     */
    open class func changeTenantWalletServiceStateWithRequestBuilder(changeWalletServiceStateRequestDto: ChangeWalletServiceStateRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<TenantWalletServiceSettingsWrapper> {
        let localVariablePath = "/api/2.0/portal/payment/servicestate"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: changeWalletServiceStateRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<TenantWalletServiceSettingsWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Start the customer monthly usage report generation
     
     See also:
     REST API Reference for createCustomerMonthlyUsageReport Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-customer-monthly-usage-report/
     - parameter customerMonthlyUsageReportRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: DocumentBuilderTaskWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func createCustomerMonthlyUsageReport(customerMonthlyUsageReportRequestDto: CustomerMonthlyUsageReportRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> DocumentBuilderTaskWrapper {
        return try await createCustomerMonthlyUsageReportWithRequestBuilder(customerMonthlyUsageReportRequestDto: customerMonthlyUsageReportRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Start the customer monthly usage report generation
     
     See also:
     REST API Reference for createCustomerMonthlyUsageReport Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-customer-monthly-usage-report/
     
     - POST /api/2.0/portal/payment/customer/usage/monthly/report
     - Starts generating a customer monthly usage report as an xlsx file and saves it in Documents.
     - BASIC:
       - type: http
       - name: Basic
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - API Key:
       - type: apiKey ApiKeyBearer (HEADER)
       - name: ApiKeyBearer
     - API Key:
       - type: apiKey asc_auth_key 
       - name: asc_auth_key
     - Bearer Token:
       - type: http
       - name: Bearer
     - :
       - type: openIdConnect
       - name: OpenId
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter customerMonthlyUsageReportRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<DocumentBuilderTaskWrapper> 
     */
    open class func createCustomerMonthlyUsageReportWithRequestBuilder(customerMonthlyUsageReportRequestDto: CustomerMonthlyUsageReportRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<DocumentBuilderTaskWrapper> {
        let localVariablePath = "/api/2.0/portal/payment/customer/usage/monthly/report"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: customerMonthlyUsageReportRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<DocumentBuilderTaskWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Start the customer operations report generation
     
     See also:
     REST API Reference for createCustomerOperationsReport Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-customer-operations-report/
     - parameter customerOperationsReportRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: DocumentBuilderTaskWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func createCustomerOperationsReport(customerOperationsReportRequestDto: CustomerOperationsReportRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> DocumentBuilderTaskWrapper {
        return try await createCustomerOperationsReportWithRequestBuilder(customerOperationsReportRequestDto: customerOperationsReportRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Start the customer operations report generation
     
     See also:
     REST API Reference for createCustomerOperationsReport Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-customer-operations-report/
     
     - POST /api/2.0/portal/payment/customer/operationsreport
     - Starts generating a customer operations report as an xlsx file and saves it in Documents.
     - BASIC:
       - type: http
       - name: Basic
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - API Key:
       - type: apiKey ApiKeyBearer (HEADER)
       - name: ApiKeyBearer
     - API Key:
       - type: apiKey asc_auth_key 
       - name: asc_auth_key
     - Bearer Token:
       - type: http
       - name: Bearer
     - :
       - type: openIdConnect
       - name: OpenId
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter customerOperationsReportRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<DocumentBuilderTaskWrapper> 
     */
    open class func createCustomerOperationsReportWithRequestBuilder(customerOperationsReportRequestDto: CustomerOperationsReportRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<DocumentBuilderTaskWrapper> {
        let localVariablePath = "/api/2.0/portal/payment/customer/operationsreport"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: customerOperationsReportRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<DocumentBuilderTaskWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Start the customer service usage report generation
     
     See also:
     REST API Reference for createCustomerServiceUsageReport Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-customer-service-usage-report/
     - parameter customerServiceUsageReportRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: DocumentBuilderTaskWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func createCustomerServiceUsageReport(customerServiceUsageReportRequestDto: CustomerServiceUsageReportRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> DocumentBuilderTaskWrapper {
        return try await createCustomerServiceUsageReportWithRequestBuilder(customerServiceUsageReportRequestDto: customerServiceUsageReportRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Start the customer service usage report generation
     
     See also:
     REST API Reference for createCustomerServiceUsageReport Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-customer-service-usage-report/
     
     - POST /api/2.0/portal/payment/customer/usage/report
     - Starts generating a customer service usage report as an xlsx file and saves it in Documents.
     - BASIC:
       - type: http
       - name: Basic
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - API Key:
       - type: apiKey ApiKeyBearer (HEADER)
       - name: ApiKeyBearer
     - API Key:
       - type: apiKey asc_auth_key 
       - name: asc_auth_key
     - Bearer Token:
       - type: http
       - name: Bearer
     - :
       - type: openIdConnect
       - name: OpenId
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter customerServiceUsageReportRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<DocumentBuilderTaskWrapper> 
     */
    open class func createCustomerServiceUsageReportWithRequestBuilder(customerServiceUsageReportRequestDto: CustomerServiceUsageReportRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<DocumentBuilderTaskWrapper> {
        let localVariablePath = "/api/2.0/portal/payment/customer/usage/report"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: customerServiceUsageReportRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<DocumentBuilderTaskWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get the active wallet services
     
     See also:
     REST API Reference for getActiveServices Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-active-services/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: ActiveServiceArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getActiveServices(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ActiveServiceArrayWrapper {
        return try await getActiveServicesWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the active wallet services
     
     See also:
     REST API Reference for getActiveServices Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-active-services/
     
     - GET /api/2.0/portal/payment/activeservices
     - Returns all the active wallet services (quotas) of the current portal: the active additional quotas  from the tariff, plus the services enabled manually via the wallet service settings.
     - BASIC:
       - type: http
       - name: Basic
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - API Key:
       - type: apiKey ApiKeyBearer (HEADER)
       - name: ApiKeyBearer
     - API Key:
       - type: apiKey asc_auth_key 
       - name: asc_auth_key
     - Bearer Token:
       - type: http
       - name: Bearer
     - :
       - type: openIdConnect
       - name: OpenId
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ActiveServiceArrayWrapper> 
     */
    open class func getActiveServicesWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ActiveServiceArrayWrapper> {
        let localVariablePath = "/api/2.0/portal/payment/activeservices"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ActiveServiceArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get AI model prices
     
     See also:
     REST API Reference for getAiPrices Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-ai-prices/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiPricesResponseWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getAiPrices(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiPricesResponseWrapper {
        return try await getAiPricesWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get AI model prices
     
     See also:
     REST API Reference for getAiPrices Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-ai-prices/
     
     - GET /api/2.0/portal/payment/ai-prices
     - Retrieves the pricing information for AI models including chat, embedding, and web search services.  The prices are returned in the configured currency and normalized per million tokens.  Requires administrator permissions to access.
     - BASIC:
       - type: http
       - name: Basic
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - API Key:
       - type: apiKey ApiKeyBearer (HEADER)
       - name: ApiKeyBearer
     - API Key:
       - type: apiKey asc_auth_key 
       - name: asc_auth_key
     - Bearer Token:
       - type: http
       - name: Bearer
     - :
       - type: openIdConnect
       - name: OpenId
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiPricesResponseWrapper> 
     */
    open class func getAiPricesWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiPricesResponseWrapper> {
        let localVariablePath = "/api/2.0/portal/payment/ai-prices"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiPricesResponseWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get the checkout setup page URL
     
     See also:
     REST API Reference for getCheckoutSetupUrl Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-checkout-setup-url/
     - parameter backUrl: (query) The URL where the user will be redirected after setup cancellation.      - parameter successUrl: (query) The URL where the user will be redirected after successful payment. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: StringWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getCheckoutSetupUrl(backUrl: String, successUrl: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> StringWrapper {
        return try await getCheckoutSetupUrlWithRequestBuilder(backUrl: backUrl, successUrl: successUrl, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the checkout setup page URL
     
     See also:
     REST API Reference for getCheckoutSetupUrl Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-checkout-setup-url/
     
     - GET /api/2.0/portal/payment/checkoutsetupurl
     - Returns the URL to the checkout setup page.
     - BASIC:
       - type: http
       - name: Basic
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - API Key:
       - type: apiKey ApiKeyBearer (HEADER)
       - name: ApiKeyBearer
     - API Key:
       - type: apiKey asc_auth_key 
       - name: asc_auth_key
     - Bearer Token:
       - type: http
       - name: Bearer
     - :
       - type: openIdConnect
       - name: OpenId
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter backUrl: (query) The URL where the user will be redirected after setup cancellation. 
     - parameter successUrl: (query) The URL where the user will be redirected after successful payment. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<StringWrapper> 
     */
    open class func getCheckoutSetupUrlWithRequestBuilder(backUrl: String, successUrl: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<StringWrapper> {
        let localVariablePath = "/api/2.0/portal/payment/checkoutsetupurl"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "BackUrl": (wrappedValue: backUrl.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "SuccessUrl": (wrappedValue: successUrl.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<StringWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get the customer balance
     
     See also:
     REST API Reference for getCustomerBalance Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-customer-balance/
     - parameter refresh: (query) Specifies whether to refresh the payment information cache or not. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: BalanceWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getCustomerBalance(refresh: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> BalanceWrapper {
        return try await getCustomerBalanceWithRequestBuilder(refresh: refresh, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the customer balance
     
     See also:
     REST API Reference for getCustomerBalance Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-customer-balance/
     
     - GET /api/2.0/portal/payment/customer/balance
     - Returns the customer balance from the accounting service.
     - BASIC:
       - type: http
       - name: Basic
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - API Key:
       - type: apiKey ApiKeyBearer (HEADER)
       - name: ApiKeyBearer
     - API Key:
       - type: apiKey asc_auth_key 
       - name: asc_auth_key
     - Bearer Token:
       - type: http
       - name: Bearer
     - :
       - type: openIdConnect
       - name: OpenId
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter refresh: (query) Specifies whether to refresh the payment information cache or not. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<BalanceWrapper> 
     */
    open class func getCustomerBalanceWithRequestBuilder(refresh: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<BalanceWrapper> {
        let localVariablePath = "/api/2.0/portal/payment/customer/balance"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "refresh": (wrappedValue: refresh?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BalanceWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get the customer information
     
     See also:
     REST API Reference for getCustomerInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-customer-info/
     - parameter refresh: (query) Specifies whether to refresh the payment information cache or not. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: CustomerInfoWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getCustomerInfo(refresh: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> CustomerInfoWrapper {
        return try await getCustomerInfoWithRequestBuilder(refresh: refresh, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the customer information
     
     See also:
     REST API Reference for getCustomerInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-customer-info/
     
     - GET /api/2.0/portal/payment/customerinfo
     - Returns the customer information.
     - BASIC:
       - type: http
       - name: Basic
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - API Key:
       - type: apiKey ApiKeyBearer (HEADER)
       - name: ApiKeyBearer
     - API Key:
       - type: apiKey asc_auth_key 
       - name: asc_auth_key
     - Bearer Token:
       - type: http
       - name: Bearer
     - :
       - type: openIdConnect
       - name: OpenId
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter refresh: (query) Specifies whether to refresh the payment information cache or not. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<CustomerInfoWrapper> 
     */
    open class func getCustomerInfoWithRequestBuilder(refresh: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<CustomerInfoWrapper> {
        let localVariablePath = "/api/2.0/portal/payment/customerinfo"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "refresh": (wrappedValue: refresh?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CustomerInfoWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get the customer monthly usage
     
     See also:
     REST API Reference for getCustomerMonthlyUsage Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-customer-monthly-usage/
     - parameter startDate: (query) Start of the period (inclusive). (optional)     - parameter endDate: (query) End of the period (inclusive). (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: CustomerMonthlyUsageArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getCustomerMonthlyUsage(startDate: Date? = nil, endDate: Date? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> CustomerMonthlyUsageArrayWrapper {
        return try await getCustomerMonthlyUsageWithRequestBuilder(startDate: startDate, endDate: endDate, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the customer monthly usage
     
     See also:
     REST API Reference for getCustomerMonthlyUsage Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-customer-monthly-usage/
     
     - GET /api/2.0/portal/payment/customer/usage/monthly
     - Returns the customer spending aggregated per calendar month from the accounting service.
     - BASIC:
       - type: http
       - name: Basic
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - API Key:
       - type: apiKey ApiKeyBearer (HEADER)
       - name: ApiKeyBearer
     - API Key:
       - type: apiKey asc_auth_key 
       - name: asc_auth_key
     - Bearer Token:
       - type: http
       - name: Bearer
     - :
       - type: openIdConnect
       - name: OpenId
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter startDate: (query) Start of the period (inclusive). (optional)
     - parameter endDate: (query) End of the period (inclusive). (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<CustomerMonthlyUsageArrayWrapper> 
     */
    open class func getCustomerMonthlyUsageWithRequestBuilder(startDate: Date? = nil, endDate: Date? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<CustomerMonthlyUsageArrayWrapper> {
        let localVariablePath = "/api/2.0/portal/payment/customer/usage/monthly"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "startDate": (wrappedValue: startDate?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "endDate": (wrappedValue: endDate?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CustomerMonthlyUsageArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get the status of the customer monthly usage report generation
     
     See also:
     REST API Reference for getCustomerMonthlyUsageReport Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-customer-monthly-usage-report/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: DocumentBuilderTaskWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getCustomerMonthlyUsageReport(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> DocumentBuilderTaskWrapper {
        return try await getCustomerMonthlyUsageReportWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the status of the customer monthly usage report generation
     
     See also:
     REST API Reference for getCustomerMonthlyUsageReport Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-customer-monthly-usage-report/
     
     - GET /api/2.0/portal/payment/customer/usage/monthly/report
     - Returns the status of generating a customer monthly usage report.
     - BASIC:
       - type: http
       - name: Basic
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - API Key:
       - type: apiKey ApiKeyBearer (HEADER)
       - name: ApiKeyBearer
     - API Key:
       - type: apiKey asc_auth_key 
       - name: asc_auth_key
     - Bearer Token:
       - type: http
       - name: Bearer
     - :
       - type: openIdConnect
       - name: OpenId
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<DocumentBuilderTaskWrapper> 
     */
    open class func getCustomerMonthlyUsageReportWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<DocumentBuilderTaskWrapper> {
        let localVariablePath = "/api/2.0/portal/payment/customer/usage/monthly/report"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<DocumentBuilderTaskWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get the customer operations
     
     See also:
     REST API Reference for getCustomerOperations Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-customer-operations/
     - parameter offset: (query) The number of items to skip for pagination. The default value is 0. (optional)     - parameter limit: (query) The maximum number of items to return for pagination. The default value is 25. (optional)     - parameter serviceName: (query) The service name list. A single string is also accepted for backward compatibility. (optional)     - parameter startDate: (query) The report start date. (optional)     - parameter endDate: (query) The report end date. (optional)     - parameter participantName: (query) The participant name. (optional)     - parameter credit: (query) Specifies whether to include credit operations in the report. (optional)     - parameter debit: (query) Specifies whether to include debit operations in the report. (optional)     - parameter type: (query) The operation type to filter by. (optional)     - parameter status: (query) The operation status to filter by. (optional)     - parameter orderBy: (query) The field to order by. (optional)     - parameter orderType: (query) Order direction: Ascending or Descending. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ReportWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getCustomerOperations(offset: Int? = nil, limit: Int? = nil, serviceName: [String]? = nil, startDate: Date? = nil, endDate: Date? = nil, participantName: String? = nil, credit: Bool? = nil, debit: Bool? = nil, type: OperationType? = nil, status: OperationStatus? = nil, orderBy: String? = nil, orderType: OperationOrderType? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ReportWrapper {
        return try await getCustomerOperationsWithRequestBuilder(offset: offset, limit: limit, serviceName: serviceName, startDate: startDate, endDate: endDate, participantName: participantName, credit: credit, debit: debit, type: type, status: status, orderBy: orderBy, orderType: orderType, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the customer operations
     
     See also:
     REST API Reference for getCustomerOperations Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-customer-operations/
     
     - GET /api/2.0/portal/payment/customer/operations
     - Returns the report of customer operations from the accounting service.
     - BASIC:
       - type: http
       - name: Basic
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - API Key:
       - type: apiKey ApiKeyBearer (HEADER)
       - name: ApiKeyBearer
     - API Key:
       - type: apiKey asc_auth_key 
       - name: asc_auth_key
     - Bearer Token:
       - type: http
       - name: Bearer
     - :
       - type: openIdConnect
       - name: OpenId
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter offset: (query) The number of items to skip for pagination. The default value is 0. (optional)
     - parameter limit: (query) The maximum number of items to return for pagination. The default value is 25. (optional)
     - parameter serviceName: (query) The service name list. A single string is also accepted for backward compatibility. (optional)
     - parameter startDate: (query) The report start date. (optional)
     - parameter endDate: (query) The report end date. (optional)
     - parameter participantName: (query) The participant name. (optional)
     - parameter credit: (query) Specifies whether to include credit operations in the report. (optional)
     - parameter debit: (query) Specifies whether to include debit operations in the report. (optional)
     - parameter type: (query) The operation type to filter by. (optional)
     - parameter status: (query) The operation status to filter by. (optional)
     - parameter orderBy: (query) The field to order by. (optional)
     - parameter orderType: (query) Order direction: Ascending or Descending. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ReportWrapper> 
     */
    open class func getCustomerOperationsWithRequestBuilder(offset: Int? = nil, limit: Int? = nil, serviceName: [String]? = nil, startDate: Date? = nil, endDate: Date? = nil, participantName: String? = nil, credit: Bool? = nil, debit: Bool? = nil, type: OperationType? = nil, status: OperationStatus? = nil, orderBy: String? = nil, orderType: OperationOrderType? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ReportWrapper> {
        let localVariablePath = "/api/2.0/portal/payment/customer/operations"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "offset": (wrappedValue: offset?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "limit": (wrappedValue: limit?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "ServiceName": (wrappedValue: serviceName?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "StartDate": (wrappedValue: startDate?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "EndDate": (wrappedValue: endDate?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "ParticipantName": (wrappedValue: participantName?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "Credit": (wrappedValue: credit?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "Debit": (wrappedValue: debit?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "Type": (wrappedValue: type?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "Status": (wrappedValue: status?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "OrderBy": (wrappedValue: orderBy?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "OrderType": (wrappedValue: orderType?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ReportWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get the status of the customer operations report generation
     
     See also:
     REST API Reference for getCustomerOperationsReport Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-customer-operations-report/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: DocumentBuilderTaskWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getCustomerOperationsReport(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> DocumentBuilderTaskWrapper {
        return try await getCustomerOperationsReportWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the status of the customer operations report generation
     
     See also:
     REST API Reference for getCustomerOperationsReport Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-customer-operations-report/
     
     - GET /api/2.0/portal/payment/customer/operationsreport
     - Returns the status of generating a customer operations report.
     - BASIC:
       - type: http
       - name: Basic
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - API Key:
       - type: apiKey ApiKeyBearer (HEADER)
       - name: ApiKeyBearer
     - API Key:
       - type: apiKey asc_auth_key 
       - name: asc_auth_key
     - Bearer Token:
       - type: http
       - name: Bearer
     - :
       - type: openIdConnect
       - name: OpenId
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<DocumentBuilderTaskWrapper> 
     */
    open class func getCustomerOperationsReportWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<DocumentBuilderTaskWrapper> {
        let localVariablePath = "/api/2.0/portal/payment/customer/operationsreport"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<DocumentBuilderTaskWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get the customer service usage
     
     See also:
     REST API Reference for getCustomerServiceUsage Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-customer-service-usage/
     - parameter serviceName: (query) The service name list. (optional)     - parameter participantName: (query) The participant name. (optional)     - parameter status: (query) The operation status to filter by. (optional)     - parameter startDate: (query) Start of the period (inclusive). (optional)     - parameter endDate: (query) End of the period (inclusive). (optional)     - parameter metadata: (query) Metadata key-value pairs to filter by. (optional)     - parameter offset: (query) The number of items to skip for pagination. The default value is 0. (optional)     - parameter limit: (query) The maximum number of items to return for pagination. The default value is 25. (optional)     - parameter orderBy: (query) The field to order by. (optional)     - parameter orderType: (query) Order direction: Ascending or Descending. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: CustomerServiceUsageReportWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getCustomerServiceUsage(serviceName: [String]? = nil, participantName: String? = nil, status: OperationStatus? = nil, startDate: Date? = nil, endDate: Date? = nil, metadata: [String: String?]? = nil, offset: Int? = nil, limit: Int? = nil, orderBy: String? = nil, orderType: OperationOrderType? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> CustomerServiceUsageReportWrapper {
        return try await getCustomerServiceUsageWithRequestBuilder(serviceName: serviceName, participantName: participantName, status: status, startDate: startDate, endDate: endDate, metadata: metadata, offset: offset, limit: limit, orderBy: orderBy, orderType: orderType, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the customer service usage
     
     See also:
     REST API Reference for getCustomerServiceUsage Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-customer-service-usage/
     
     - GET /api/2.0/portal/payment/customer/usage
     - Returns the customer usage statistics aggregated per service from the accounting service.
     - BASIC:
       - type: http
       - name: Basic
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - API Key:
       - type: apiKey ApiKeyBearer (HEADER)
       - name: ApiKeyBearer
     - API Key:
       - type: apiKey asc_auth_key 
       - name: asc_auth_key
     - Bearer Token:
       - type: http
       - name: Bearer
     - :
       - type: openIdConnect
       - name: OpenId
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter serviceName: (query) The service name list. (optional)
     - parameter participantName: (query) The participant name. (optional)
     - parameter status: (query) The operation status to filter by. (optional)
     - parameter startDate: (query) Start of the period (inclusive). (optional)
     - parameter endDate: (query) End of the period (inclusive). (optional)
     - parameter metadata: (query) Metadata key-value pairs to filter by. (optional)
     - parameter offset: (query) The number of items to skip for pagination. The default value is 0. (optional)
     - parameter limit: (query) The maximum number of items to return for pagination. The default value is 25. (optional)
     - parameter orderBy: (query) The field to order by. (optional)
     - parameter orderType: (query) Order direction: Ascending or Descending. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<CustomerServiceUsageReportWrapper> 
     */
    open class func getCustomerServiceUsageWithRequestBuilder(serviceName: [String]? = nil, participantName: String? = nil, status: OperationStatus? = nil, startDate: Date? = nil, endDate: Date? = nil, metadata: [String: String?]? = nil, offset: Int? = nil, limit: Int? = nil, orderBy: String? = nil, orderType: OperationOrderType? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<CustomerServiceUsageReportWrapper> {
        let localVariablePath = "/api/2.0/portal/payment/customer/usage"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "ServiceName": (wrappedValue: serviceName?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "ParticipantName": (wrappedValue: participantName?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "Status": (wrappedValue: status?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "StartDate": (wrappedValue: startDate?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "EndDate": (wrappedValue: endDate?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "Metadata": (wrappedValue: metadata?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "offset": (wrappedValue: offset?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "limit": (wrappedValue: limit?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "OrderBy": (wrappedValue: orderBy?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "OrderType": (wrappedValue: orderType?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CustomerServiceUsageReportWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get the status of the customer service usage report generation
     
     See also:
     REST API Reference for getCustomerServiceUsageReport Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-customer-service-usage-report/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: DocumentBuilderTaskWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getCustomerServiceUsageReport(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> DocumentBuilderTaskWrapper {
        return try await getCustomerServiceUsageReportWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the status of the customer service usage report generation
     
     See also:
     REST API Reference for getCustomerServiceUsageReport Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-customer-service-usage-report/
     
     - GET /api/2.0/portal/payment/customer/usage/report
     - Returns the status of generating a customer service usage report.
     - BASIC:
       - type: http
       - name: Basic
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - API Key:
       - type: apiKey ApiKeyBearer (HEADER)
       - name: ApiKeyBearer
     - API Key:
       - type: apiKey asc_auth_key 
       - name: asc_auth_key
     - Bearer Token:
       - type: http
       - name: Bearer
     - :
       - type: openIdConnect
       - name: OpenId
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<DocumentBuilderTaskWrapper> 
     */
    open class func getCustomerServiceUsageReportWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<DocumentBuilderTaskWrapper> {
        let localVariablePath = "/api/2.0/portal/payment/customer/usage/report"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<DocumentBuilderTaskWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get the payment account
     
     See also:
     REST API Reference for getPaymentAccount Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-payment-account/
     - parameter backUrl: (query) The URL where the user will be redirected after payment processing. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: StringWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getPaymentAccount(backUrl: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> StringWrapper {
        return try await getPaymentAccountWithRequestBuilder(backUrl: backUrl, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the payment account
     
     See also:
     REST API Reference for getPaymentAccount Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-payment-account/
     
     - GET /api/2.0/portal/payment/account
     - Returns the URL to the payment account.
     - BASIC:
       - type: http
       - name: Basic
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - API Key:
       - type: apiKey ApiKeyBearer (HEADER)
       - name: ApiKeyBearer
     - API Key:
       - type: apiKey asc_auth_key 
       - name: asc_auth_key
     - Bearer Token:
       - type: http
       - name: Bearer
     - :
       - type: openIdConnect
       - name: OpenId
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter backUrl: (query) The URL where the user will be redirected after payment processing. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<StringWrapper> 
     */
    open class func getPaymentAccountWithRequestBuilder(backUrl: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<StringWrapper> {
        let localVariablePath = "/api/2.0/portal/payment/account"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "backUrl": (wrappedValue: backUrl?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<StringWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get currencies
     
     See also:
     REST API Reference for getPaymentCurrencies Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-payment-currencies/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: CurrenciesArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getPaymentCurrencies(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> CurrenciesArrayWrapper {
        return try await getPaymentCurrenciesWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get currencies
     
     See also:
     REST API Reference for getPaymentCurrencies Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-payment-currencies/
     
     - GET /api/2.0/portal/payment/currencies
     - Returns the available portal currencies.
     - BASIC:
       - type: http
       - name: Basic
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - API Key:
       - type: apiKey ApiKeyBearer (HEADER)
       - name: ApiKeyBearer
     - API Key:
       - type: apiKey asc_auth_key 
       - name: asc_auth_key
     - Bearer Token:
       - type: http
       - name: Bearer
     - :
       - type: openIdConnect
       - name: OpenId
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<CurrenciesArrayWrapper> 
     */
    open class func getPaymentCurrenciesWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<CurrenciesArrayWrapper> {
        let localVariablePath = "/api/2.0/portal/payment/currencies"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CurrenciesArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get quotas
     
     See also:
     REST API Reference for getPaymentQuotas Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-payment-quotas/
     - parameter wallet: (query) Specifies whether to return the wallet quotas only. (optional)     - parameter additional: (query) Specifies whether to return additional quotas only. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: QuotaArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getPaymentQuotas(wallet: Bool? = nil, additional: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> QuotaArrayWrapper {
        return try await getPaymentQuotasWithRequestBuilder(wallet: wallet, additional: additional, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get quotas
     
     See also:
     REST API Reference for getPaymentQuotas Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-payment-quotas/
     
     - GET /api/2.0/portal/payment/quotas
     - Returns the available portal quotas.
     - BASIC:
       - type: http
       - name: Basic
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - API Key:
       - type: apiKey ApiKeyBearer (HEADER)
       - name: ApiKeyBearer
     - API Key:
       - type: apiKey asc_auth_key 
       - name: asc_auth_key
     - Bearer Token:
       - type: http
       - name: Bearer
     - :
       - type: openIdConnect
       - name: OpenId
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter wallet: (query) Specifies whether to return the wallet quotas only. (optional)
     - parameter additional: (query) Specifies whether to return additional quotas only. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<QuotaArrayWrapper> 
     */
    open class func getPaymentQuotasWithRequestBuilder(wallet: Bool? = nil, additional: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<QuotaArrayWrapper> {
        let localVariablePath = "/api/2.0/portal/payment/quotas"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "wallet": (wrappedValue: wallet?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "additional": (wrappedValue: additional?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<QuotaArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get the payment page URL
     
     See also:
     REST API Reference for getPaymentUrl Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-payment-url/
     - parameter paymentUrlRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: StringWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getPaymentUrl(paymentUrlRequestDto: PaymentUrlRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> StringWrapper {
        return try await getPaymentUrlWithRequestBuilder(paymentUrlRequestDto: paymentUrlRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the payment page URL
     
     See also:
     REST API Reference for getPaymentUrl Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-payment-url/
     
     - PUT /api/2.0/portal/payment/url
     - Returns the URL to the payment page.
     - BASIC:
       - type: http
       - name: Basic
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - API Key:
       - type: apiKey ApiKeyBearer (HEADER)
       - name: ApiKeyBearer
     - API Key:
       - type: apiKey asc_auth_key 
       - name: asc_auth_key
     - Bearer Token:
       - type: http
       - name: Bearer
     - :
       - type: openIdConnect
       - name: OpenId
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter paymentUrlRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<StringWrapper> 
     */
    open class func getPaymentUrlWithRequestBuilder(paymentUrlRequestDto: PaymentUrlRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<StringWrapper> {
        let localVariablePath = "/api/2.0/portal/payment/url"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: paymentUrlRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<StringWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get prices
     
     See also:
     REST API Reference for getPortalPrices Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-prices/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: GetPortalPrices200Response
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getPortalPrices(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> GetPortalPrices200Response {
        return try await getPortalPricesWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get prices
     
     See also:
     REST API Reference for getPortalPrices Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-prices/
     
     - GET /api/2.0/portal/payment/prices
     - Returns the available portal prices.
     - BASIC:
       - type: http
       - name: Basic
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - API Key:
       - type: apiKey ApiKeyBearer (HEADER)
       - name: ApiKeyBearer
     - API Key:
       - type: apiKey asc_auth_key 
       - name: asc_auth_key
     - Bearer Token:
       - type: http
       - name: Bearer
     - :
       - type: openIdConnect
       - name: OpenId
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<GetPortalPrices200Response> 
     */
    open class func getPortalPricesWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<GetPortalPrices200Response> {
        let localVariablePath = "/api/2.0/portal/payment/prices"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GetPortalPrices200Response>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get quota payment information
     
     See also:
     REST API Reference for getQuotaPaymentInformation Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-quota-payment-information/
     - parameter refresh: (query) Specifies whether to refresh the payment information cache or not. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: QuotaWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getQuotaPaymentInformation(refresh: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> QuotaWrapper {
        return try await getQuotaPaymentInformationWithRequestBuilder(refresh: refresh, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get quota payment information
     
     See also:
     REST API Reference for getQuotaPaymentInformation Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-quota-payment-information/
     
     - GET /api/2.0/portal/payment/quota
     - Returns the payment information about the current portal quota.
     - BASIC:
       - type: http
       - name: Basic
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - API Key:
       - type: apiKey ApiKeyBearer (HEADER)
       - name: ApiKeyBearer
     - API Key:
       - type: apiKey asc_auth_key 
       - name: asc_auth_key
     - Bearer Token:
       - type: http
       - name: Bearer
     - :
       - type: openIdConnect
       - name: OpenId
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter refresh: (query) Specifies whether to refresh the payment information cache or not. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<QuotaWrapper> 
     */
    open class func getQuotaPaymentInformationWithRequestBuilder(refresh: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<QuotaWrapper> {
        let localVariablePath = "/api/2.0/portal/payment/quota"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "refresh": (wrappedValue: refresh?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<QuotaWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get restricted AI models
     
     See also:
     REST API Reference for getRestrictedAiModels Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-restricted-ai-models/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: RestrictedModelsResponseWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getRestrictedAiModels(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> RestrictedModelsResponseWrapper {
        return try await getRestrictedAiModelsWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get restricted AI models
     
     See also:
     REST API Reference for getRestrictedAiModels Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-restricted-ai-models/
     
     - GET /api/2.0/portal/payment/ai-model/restrictions
     - Returns the list of AI chat model IDs that are restricted (disabled) for the current tenant.  Restricted models cannot be used for AI chat conversations by any user within the portal.  Only DocSpace administrators can access this endpoint.
     - BASIC:
       - type: http
       - name: Basic
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - API Key:
       - type: apiKey ApiKeyBearer (HEADER)
       - name: ApiKeyBearer
     - API Key:
       - type: apiKey asc_auth_key 
       - name: asc_auth_key
     - Bearer Token:
       - type: http
       - name: Bearer
     - :
       - type: openIdConnect
       - name: OpenId
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<RestrictedModelsResponseWrapper> 
     */
    open class func getRestrictedAiModelsWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<RestrictedModelsResponseWrapper> {
        let localVariablePath = "/api/2.0/portal/payment/ai-model/restrictions"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<RestrictedModelsResponseWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get the subscription balance information
     
     See also:
     REST API Reference for getSubscriptionBalanceInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-subscription-balance-info/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: SubscriptionBalanceInfoWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getSubscriptionBalanceInfo(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> SubscriptionBalanceInfoWrapper {
        return try await getSubscriptionBalanceInfoWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the subscription balance information
     
     See also:
     REST API Reference for getSubscriptionBalanceInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-subscription-balance-info/
     
     - GET /api/2.0/portal/payment/subscription/balance
     - Returns the information about the current subscription and its unused (prorated) balance.
     - BASIC:
       - type: http
       - name: Basic
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - API Key:
       - type: apiKey ApiKeyBearer (HEADER)
       - name: ApiKeyBearer
     - API Key:
       - type: apiKey asc_auth_key 
       - name: asc_auth_key
     - Bearer Token:
       - type: http
       - name: Bearer
     - :
       - type: openIdConnect
       - name: OpenId
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<SubscriptionBalanceInfoWrapper> 
     */
    open class func getSubscriptionBalanceInfoWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<SubscriptionBalanceInfoWrapper> {
        let localVariablePath = "/api/2.0/portal/payment/subscription/balance"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SubscriptionBalanceInfoWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Gets the wallet service settings for the tenant.
     
     See also:
     REST API Reference for getTenantWalletServiceSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tenant-wallet-service-settings/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: TenantWalletServiceSettingsWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getTenantWalletServiceSettings(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> TenantWalletServiceSettingsWrapper {
        return try await getTenantWalletServiceSettingsWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Gets the wallet service settings for the tenant.
     
     See also:
     REST API Reference for getTenantWalletServiceSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tenant-wallet-service-settings/
     
     - GET /api/2.0/portal/payment/servicessettings
     - Retrieves configuration settings related to the wallet service associated with the current tenant.
     - BASIC:
       - type: http
       - name: Basic
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - API Key:
       - type: apiKey ApiKeyBearer (HEADER)
       - name: ApiKeyBearer
     - API Key:
       - type: apiKey asc_auth_key 
       - name: asc_auth_key
     - Bearer Token:
       - type: http
       - name: Bearer
     - :
       - type: openIdConnect
       - name: OpenId
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<TenantWalletServiceSettingsWrapper> 
     */
    open class func getTenantWalletServiceSettingsWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<TenantWalletServiceSettingsWrapper> {
        let localVariablePath = "/api/2.0/portal/payment/servicessettings"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<TenantWalletServiceSettingsWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Gets the tenant wallet auto top up settings
     
     See also:
     REST API Reference for getTenantWalletSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tenant-wallet-settings/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: TenantWalletSettingsResponseWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getTenantWalletSettings(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> TenantWalletSettingsResponseWrapper {
        return try await getTenantWalletSettingsWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Gets the tenant wallet auto top up settings
     
     See also:
     REST API Reference for getTenantWalletSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tenant-wallet-settings/
     
     - GET /api/2.0/portal/payment/topupsettings
     - Returns the wallet auto top up settings for the current tenant.
     - BASIC:
       - type: http
       - name: Basic
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - API Key:
       - type: apiKey ApiKeyBearer (HEADER)
       - name: ApiKeyBearer
     - API Key:
       - type: apiKey asc_auth_key 
       - name: asc_auth_key
     - Bearer Token:
       - type: http
       - name: Bearer
     - :
       - type: openIdConnect
       - name: OpenId
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<TenantWalletSettingsResponseWrapper> 
     */
    open class func getTenantWalletSettingsWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<TenantWalletSettingsResponseWrapper> {
        let localVariablePath = "/api/2.0/portal/payment/topupsettings"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<TenantWalletSettingsResponseWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get wallet service
     
     See also:
     REST API Reference for getWalletService Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-wallet-service/
     - parameter service: (query) The wallet service type. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: WalletServiceWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getWalletService(service: TenantWalletService, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> WalletServiceWrapper {
        return try await getWalletServiceWithRequestBuilder(service: service, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get wallet service
     
     See also:
     REST API Reference for getWalletService Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-wallet-service/
     
     - GET /api/2.0/portal/payment/walletservice
     - Returns the specified wallet service.
     - BASIC:
       - type: http
       - name: Basic
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - API Key:
       - type: apiKey ApiKeyBearer (HEADER)
       - name: ApiKeyBearer
     - API Key:
       - type: apiKey asc_auth_key 
       - name: asc_auth_key
     - Bearer Token:
       - type: http
       - name: Bearer
     - :
       - type: openIdConnect
       - name: OpenId
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter service: (query) The wallet service type. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<WalletServiceWrapper> 
     */
    open class func getWalletServiceWithRequestBuilder(service: TenantWalletService, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<WalletServiceWrapper> {
        let localVariablePath = "/api/2.0/portal/payment/walletservice"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "service": (wrappedValue: service.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<WalletServiceWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get wallet services
     
     See also:
     REST API Reference for getWalletServices Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-wallet-services/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: WalletServiceArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getWalletServices(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> WalletServiceArrayWrapper {
        return try await getWalletServicesWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get wallet services
     
     See also:
     REST API Reference for getWalletServices Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-wallet-services/
     
     - GET /api/2.0/portal/payment/walletservices
     - Returns the available wallet services.
     - BASIC:
       - type: http
       - name: Basic
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - API Key:
       - type: apiKey ApiKeyBearer (HEADER)
       - name: ApiKeyBearer
     - API Key:
       - type: apiKey asc_auth_key 
       - name: asc_auth_key
     - Bearer Token:
       - type: http
       - name: Bearer
     - :
       - type: openIdConnect
       - name: OpenId
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<WalletServiceArrayWrapper> 
     */
    open class func getWalletServicesWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<WalletServiceArrayWrapper> {
        let localVariablePath = "/api/2.0/portal/payment/walletservices"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<WalletServiceArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Move the subscription balance to the wallet and purchase admins
     
     See also:
     REST API Reference for moveSubscriptionToWallet Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/move-subscription-to-wallet/
     - parameter quantityRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: BooleanWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func moveSubscriptionToWallet(quantityRequestDto: QuantityRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> BooleanWrapper {
        return try await moveSubscriptionToWalletWithRequestBuilder(quantityRequestDto: quantityRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Move the subscription balance to the wallet and purchase admins
     
     See also:
     REST API Reference for moveSubscriptionToWallet Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/move-subscription-to-wallet/
     
     - POST /api/2.0/portal/payment/subscription/movetowallet
     - Cancels the current subscription, moves its unused balance to the wallet, and purchases the requested number of  admins from the wallet. If the wallet balance is not enough, it is topped up for the missing amount first  (with several attempts, as the balance may be consumed concurrently).
     - BASIC:
       - type: http
       - name: Basic
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - API Key:
       - type: apiKey ApiKeyBearer (HEADER)
       - name: ApiKeyBearer
     - API Key:
       - type: apiKey asc_auth_key 
       - name: asc_auth_key
     - Bearer Token:
       - type: http
       - name: Bearer
     - :
       - type: openIdConnect
       - name: OpenId
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter quantityRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<BooleanWrapper> 
     */
    open class func moveSubscriptionToWalletWithRequestBuilder(quantityRequestDto: QuantityRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<BooleanWrapper> {
        let localVariablePath = "/api/2.0/portal/payment/subscription/movetowallet"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: quantityRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BooleanWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Send a payment request
     
     See also:
     REST API Reference for sendPaymentRequest Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/send-payment-request/
     - parameter salesRequestsDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func sendPaymentRequest(salesRequestsDto: SalesRequestsDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await sendPaymentRequestWithRequestBuilder(salesRequestsDto: salesRequestsDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Send a payment request
     
     See also:
     REST API Reference for sendPaymentRequest Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/send-payment-request/
     
     - POST /api/2.0/portal/payment/request
     - Sends a request for the portal payment.
     - BASIC:
       - type: http
       - name: Basic
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - API Key:
       - type: apiKey ApiKeyBearer (HEADER)
       - name: ApiKeyBearer
     - API Key:
       - type: apiKey asc_auth_key 
       - name: asc_auth_key
     - Bearer Token:
       - type: http
       - name: Bearer
     - :
       - type: openIdConnect
       - name: OpenId
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter salesRequestsDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func sendPaymentRequestWithRequestBuilder(salesRequestsDto: SalesRequestsDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<Void> {
        let localVariablePath = "/api/2.0/portal/payment/request"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: salesRequestsDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Set restricted AI models
     
     See also:
     REST API Reference for setRestrictedAiModels Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-restricted-ai-models/
     - parameter setRestrictedAiModelsRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RestrictedModelsResponseWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func setRestrictedAiModels(setRestrictedAiModelsRequestDto: SetRestrictedAiModelsRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> RestrictedModelsResponseWrapper {
        return try await setRestrictedAiModelsWithRequestBuilder(setRestrictedAiModelsRequestDto: setRestrictedAiModelsRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Set restricted AI models
     
     See also:
     REST API Reference for setRestrictedAiModels Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-restricted-ai-models/
     
     - PUT /api/2.0/portal/payment/ai-model/restrictions
     - Overwrites the entire set of restricted AI model IDs for the current tenant.  The request body must contain the complete desired set — to add a restriction, include the new model alongside existing ones;  to remove one, omit it. An empty set lifts all restrictions. Only portal administrators can perform this action.
     - BASIC:
       - type: http
       - name: Basic
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - API Key:
       - type: apiKey ApiKeyBearer (HEADER)
       - name: ApiKeyBearer
     - API Key:
       - type: apiKey asc_auth_key 
       - name: asc_auth_key
     - Bearer Token:
       - type: http
       - name: Bearer
     - :
       - type: openIdConnect
       - name: OpenId
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter setRestrictedAiModelsRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<RestrictedModelsResponseWrapper> 
     */
    open class func setRestrictedAiModelsWithRequestBuilder(setRestrictedAiModelsRequestDto: SetRestrictedAiModelsRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<RestrictedModelsResponseWrapper> {
        let localVariablePath = "/api/2.0/portal/payment/ai-model/restrictions"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: setRestrictedAiModelsRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<RestrictedModelsResponseWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Set the wallet auto top up settings
     
     See also:
     REST API Reference for setTenantWalletSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-tenant-wallet-settings/
     - parameter tenantWalletSettingsWrapper: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: TenantWalletSettingsResponseWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func setTenantWalletSettings(tenantWalletSettingsWrapper: TenantWalletSettingsWrapper? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> TenantWalletSettingsResponseWrapper {
        return try await setTenantWalletSettingsWithRequestBuilder(tenantWalletSettingsWrapper: tenantWalletSettingsWrapper, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Set the wallet auto top up settings
     
     See also:
     REST API Reference for setTenantWalletSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-tenant-wallet-settings/
     
     - POST /api/2.0/portal/payment/topupsettings
     - Updates the wallet auto top up settings for the current tenant.  Requires the tariff service to be configured and the user to be authorized as a payer.  Returns null if the tariff service is not configured or customer information/balance cannot be retrieved.
     - BASIC:
       - type: http
       - name: Basic
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - API Key:
       - type: apiKey ApiKeyBearer (HEADER)
       - name: ApiKeyBearer
     - API Key:
       - type: apiKey asc_auth_key 
       - name: asc_auth_key
     - Bearer Token:
       - type: http
       - name: Bearer
     - :
       - type: openIdConnect
       - name: OpenId
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter tenantWalletSettingsWrapper: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<TenantWalletSettingsResponseWrapper> 
     */
    open class func setTenantWalletSettingsWithRequestBuilder(tenantWalletSettingsWrapper: TenantWalletSettingsWrapper? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<TenantWalletSettingsResponseWrapper> {
        let localVariablePath = "/api/2.0/portal/payment/topupsettings"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: tenantWalletSettingsWrapper, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<TenantWalletSettingsResponseWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Terminate the customer monthly usage report generation
     
     See also:
     REST API Reference for terminateCustomerMonthlyUsageReport Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/terminate-customer-monthly-usage-report/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func terminateCustomerMonthlyUsageReport(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await terminateCustomerMonthlyUsageReportWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Terminate the customer monthly usage report generation
     
     See also:
     REST API Reference for terminateCustomerMonthlyUsageReport Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/terminate-customer-monthly-usage-report/
     
     - DELETE /api/2.0/portal/payment/customer/usage/monthly/report
     - Terminates generating a customer monthly usage report.
     - BASIC:
       - type: http
       - name: Basic
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - API Key:
       - type: apiKey ApiKeyBearer (HEADER)
       - name: ApiKeyBearer
     - API Key:
       - type: apiKey asc_auth_key 
       - name: asc_auth_key
     - Bearer Token:
       - type: http
       - name: Bearer
     - :
       - type: openIdConnect
       - name: OpenId
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func terminateCustomerMonthlyUsageReportWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<Void> {
        let localVariablePath = "/api/2.0/portal/payment/customer/usage/monthly/report"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Terminate the customer operations report generation
     
     See also:
     REST API Reference for terminateCustomerOperationsReport Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/terminate-customer-operations-report/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func terminateCustomerOperationsReport(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await terminateCustomerOperationsReportWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Terminate the customer operations report generation
     
     See also:
     REST API Reference for terminateCustomerOperationsReport Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/terminate-customer-operations-report/
     
     - DELETE /api/2.0/portal/payment/customer/operationsreport
     - Terminates generating a customer operations report.
     - BASIC:
       - type: http
       - name: Basic
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - API Key:
       - type: apiKey ApiKeyBearer (HEADER)
       - name: ApiKeyBearer
     - API Key:
       - type: apiKey asc_auth_key 
       - name: asc_auth_key
     - Bearer Token:
       - type: http
       - name: Bearer
     - :
       - type: openIdConnect
       - name: OpenId
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func terminateCustomerOperationsReportWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<Void> {
        let localVariablePath = "/api/2.0/portal/payment/customer/operationsreport"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Terminate the customer service usage report generation
     
     See also:
     REST API Reference for terminateCustomerServiceUsageReport Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/terminate-customer-service-usage-report/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func terminateCustomerServiceUsageReport(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await terminateCustomerServiceUsageReportWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Terminate the customer service usage report generation
     
     See also:
     REST API Reference for terminateCustomerServiceUsageReport Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/terminate-customer-service-usage-report/
     
     - DELETE /api/2.0/portal/payment/customer/usage/report
     - Terminates generating a customer service usage report.
     - BASIC:
       - type: http
       - name: Basic
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - API Key:
       - type: apiKey ApiKeyBearer (HEADER)
       - name: ApiKeyBearer
     - API Key:
       - type: apiKey asc_auth_key 
       - name: asc_auth_key
     - Bearer Token:
       - type: http
       - name: Bearer
     - :
       - type: openIdConnect
       - name: OpenId
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func terminateCustomerServiceUsageReportWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<Void> {
        let localVariablePath = "/api/2.0/portal/payment/customer/usage/report"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Put money on deposit
     
     See also:
     REST API Reference for topUpDeposit Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/top-up-deposit/
     - parameter topUpDepositRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: BooleanWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func topUpDeposit(topUpDepositRequestDto: TopUpDepositRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> BooleanWrapper {
        return try await topUpDepositWithRequestBuilder(topUpDepositRequestDto: topUpDepositRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Put money on deposit
     
     See also:
     REST API Reference for topUpDeposit Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/top-up-deposit/
     
     - POST /api/2.0/portal/payment/deposit
     - Returns the result of putting money on deposit.
     - BASIC:
       - type: http
       - name: Basic
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - API Key:
       - type: apiKey ApiKeyBearer (HEADER)
       - name: ApiKeyBearer
     - API Key:
       - type: apiKey asc_auth_key 
       - name: asc_auth_key
     - Bearer Token:
       - type: http
       - name: Bearer
     - :
       - type: openIdConnect
       - name: OpenId
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter topUpDepositRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<BooleanWrapper> 
     */
    open class func topUpDepositWithRequestBuilder(topUpDepositRequestDto: TopUpDepositRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<BooleanWrapper> {
        let localVariablePath = "/api/2.0/portal/payment/deposit"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: topUpDepositRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BooleanWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Update the payment quantity
     
     See also:
     REST API Reference for updatePayment Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/update-payment/
     - parameter quantityRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: BooleanWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func updatePayment(quantityRequestDto: QuantityRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> BooleanWrapper {
        return try await updatePaymentWithRequestBuilder(quantityRequestDto: quantityRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Update the payment quantity
     
     See also:
     REST API Reference for updatePayment Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/update-payment/
     
     - PUT /api/2.0/portal/payment/update
     - Updates the payment quantity with the parameters specified in the request.
     - BASIC:
       - type: http
       - name: Basic
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - API Key:
       - type: apiKey ApiKeyBearer (HEADER)
       - name: ApiKeyBearer
     - API Key:
       - type: apiKey asc_auth_key 
       - name: asc_auth_key
     - Bearer Token:
       - type: http
       - name: Bearer
     - :
       - type: openIdConnect
       - name: OpenId
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter quantityRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<BooleanWrapper> 
     */
    open class func updatePaymentWithRequestBuilder(quantityRequestDto: QuantityRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<BooleanWrapper> {
        let localVariablePath = "/api/2.0/portal/payment/update"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: quantityRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BooleanWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Update the wallet payment quantity
     
     See also:
     REST API Reference for updateWalletPayment Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/update-wallet-payment/
     - parameter walletQuantityRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: BooleanWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func updateWalletPayment(walletQuantityRequestDto: WalletQuantityRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> BooleanWrapper {
        return try await updateWalletPaymentWithRequestBuilder(walletQuantityRequestDto: walletQuantityRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Update the wallet payment quantity
     
     See also:
     REST API Reference for updateWalletPayment Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/update-wallet-payment/
     
     - PUT /api/2.0/portal/payment/updatewallet
     - Updates the wallet payment quantity with the parameters specified in the request.
     - BASIC:
       - type: http
       - name: Basic
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - API Key:
       - type: apiKey ApiKeyBearer (HEADER)
       - name: ApiKeyBearer
     - API Key:
       - type: apiKey asc_auth_key 
       - name: asc_auth_key
     - Bearer Token:
       - type: http
       - name: Bearer
     - :
       - type: openIdConnect
       - name: OpenId
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter walletQuantityRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<BooleanWrapper> 
     */
    open class func updateWalletPaymentWithRequestBuilder(walletQuantityRequestDto: WalletQuantityRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<BooleanWrapper> {
        let localVariablePath = "/api/2.0/portal/payment/updatewallet"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: walletQuantityRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BooleanWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
