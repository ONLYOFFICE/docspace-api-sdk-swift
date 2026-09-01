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
     Calculate the DocsCloud subscription switch cost
     
     See also:
     REST API Reference for calculateDevPack Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/calculate-dev-pack/
     - parameter docsCloudDevPackRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: PaymentCalculationWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func calculateDevPack(docsCloudDevPackRequestDto: DocsCloudDevPackRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> PaymentCalculationWrapper {
        return try await calculateDevPackWithRequestBuilder(docsCloudDevPackRequestDto: docsCloudDevPackRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Calculate the DocsCloud subscription switch cost
     
     See also:
     REST API Reference for calculateDevPack Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/calculate-dev-pack/
     
     - POST /api/2.0/settings/docscloud/calculatedevpack
     - Calculates the top-up cost of switching the current DocsCloud subscription to DocsCloudDevPack,  without making any changes. The quantity is taken from the currently purchased DocsCloud quota.  Only the portal payer can perform this action.
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
     - parameter docsCloudDevPackRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<PaymentCalculationWrapper> 
     */
    open class func calculateDevPackWithRequestBuilder(docsCloudDevPackRequestDto: DocsCloudDevPackRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<PaymentCalculationWrapper> {
        let localVariablePath = "/api/2.0/settings/docscloud/calculatedevpack"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: docsCloudDevPackRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<PaymentCalculationWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Start the DocsCloud tenant quota report generation
     
     See also:
     REST API Reference for createTenantQuotaReport Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-tenant-quota-report/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: DocumentBuilderTaskWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func createTenantQuotaReport(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> DocumentBuilderTaskWrapper {
        return try await createTenantQuotaReportWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Start the DocsCloud tenant quota report generation
     
     See also:
     REST API Reference for createTenantQuotaReport Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-tenant-quota-report/
     
     - POST /api/2.0/settings/docscloud/tenant/quota/report
     - Starts generating the DocsCloud user quota report as an xlsx file and saves it in My Documents.
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
    open class func createTenantQuotaReportWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<DocumentBuilderTaskWrapper> {
        let localVariablePath = "/api/2.0/settings/docscloud/tenant/quota/report"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<DocumentBuilderTaskWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get the DocsCloud tenant
     
     See also:
     REST API Reference for getTenant Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tenant/
     - parameter refresh: (query) Specifies whether to bypass the cache and request the tenant from DocsCloud again. (optional, default to false)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: DocsCloudTenantWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getTenant(refresh: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> DocsCloudTenantWrapper {
        return try await getTenantWithRequestBuilder(refresh: refresh, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the DocsCloud tenant
     
     See also:
     REST API Reference for getTenant Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tenant/
     
     - GET /api/2.0/settings/docscloud/tenant
     - Returns the DocsCloud tenant of the current portal.
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
     - parameter refresh: (query) Specifies whether to bypass the cache and request the tenant from DocsCloud again. (optional, default to false)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<DocsCloudTenantWrapper> 
     */
    open class func getTenantWithRequestBuilder(refresh: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<DocsCloudTenantWrapper> {
        let localVariablePath = "/api/2.0/settings/docscloud/tenant"
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

        let localVariableRequestBuilder: RequestBuilder<DocsCloudTenantWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get the DocsCloud tenant configuration
     
     See also:
     REST API Reference for getTenantConfig Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tenant-config/
     - parameter refresh: (query) Specifies whether to bypass the cache and request the tenant configuration from DocsCloud again. (optional, default to false)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: DocsCloudConfigWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getTenantConfig(refresh: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> DocsCloudConfigWrapper {
        return try await getTenantConfigWithRequestBuilder(refresh: refresh, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the DocsCloud tenant configuration
     
     See also:
     REST API Reference for getTenantConfig Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tenant-config/
     
     - GET /api/2.0/settings/docscloud/tenant/config
     - Returns the DocsCloud tenant configuration of the current portal.
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
     - parameter refresh: (query) Specifies whether to bypass the cache and request the tenant configuration from DocsCloud again. (optional, default to false)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<DocsCloudConfigWrapper> 
     */
    open class func getTenantConfigWithRequestBuilder(refresh: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<DocsCloudConfigWrapper> {
        let localVariablePath = "/api/2.0/settings/docscloud/tenant/config"
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

        let localVariableRequestBuilder: RequestBuilder<DocsCloudConfigWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get the DocsCloud tenant information
     
     See also:
     REST API Reference for getTenantInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tenant-info/
     - parameter refresh: (query) Specifies whether to bypass the cache and request the tenant information from DocsCloud again. (optional, default to false)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: DocsCloudTenantInfoWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getTenantInfo(refresh: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> DocsCloudTenantInfoWrapper {
        return try await getTenantInfoWithRequestBuilder(refresh: refresh, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the DocsCloud tenant information
     
     See also:
     REST API Reference for getTenantInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tenant-info/
     
     - GET /api/2.0/settings/docscloud/tenant/info
     - Returns the DocsCloud license and server information with usage statistics of the current portal.
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
     - parameter refresh: (query) Specifies whether to bypass the cache and request the tenant information from DocsCloud again. (optional, default to false)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<DocsCloudTenantInfoWrapper> 
     */
    open class func getTenantInfoWithRequestBuilder(refresh: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<DocsCloudTenantInfoWrapper> {
        let localVariablePath = "/api/2.0/settings/docscloud/tenant/info"
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

        let localVariableRequestBuilder: RequestBuilder<DocsCloudTenantInfoWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get the DocsCloud tenant quota
     
     See also:
     REST API Reference for getTenantQuota Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tenant-quota/
     - parameter refresh: (query) Specifies whether to bypass the cache and request the user quota from DocsCloud again. (optional, default to false)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: DocsCloudQuotaWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getTenantQuota(refresh: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> DocsCloudQuotaWrapper {
        return try await getTenantQuotaWithRequestBuilder(refresh: refresh, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the DocsCloud tenant quota
     
     See also:
     REST API Reference for getTenantQuota Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tenant-quota/
     
     - GET /api/2.0/settings/docscloud/tenant/quota
     - Returns the DocsCloud user quota (active users) of the current portal.
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
     - parameter refresh: (query) Specifies whether to bypass the cache and request the user quota from DocsCloud again. (optional, default to false)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<DocsCloudQuotaWrapper> 
     */
    open class func getTenantQuotaWithRequestBuilder(refresh: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<DocsCloudQuotaWrapper> {
        let localVariablePath = "/api/2.0/settings/docscloud/tenant/quota"
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

        let localVariableRequestBuilder: RequestBuilder<DocsCloudQuotaWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get the status of the DocsCloud tenant quota report generation
     
     See also:
     REST API Reference for getTenantQuotaReport Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tenant-quota-report/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: DocumentBuilderTaskWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getTenantQuotaReport(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> DocumentBuilderTaskWrapper {
        return try await getTenantQuotaReportWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the status of the DocsCloud tenant quota report generation
     
     See also:
     REST API Reference for getTenantQuotaReport Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tenant-quota-report/
     
     - GET /api/2.0/settings/docscloud/tenant/quota/report
     - Returns the status of generating the DocsCloud user quota report.
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
    open class func getTenantQuotaReportWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<DocumentBuilderTaskWrapper> {
        let localVariablePath = "/api/2.0/settings/docscloud/tenant/quota/report"
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
     Get the DocsCloud tenant usage
     
     See also:
     REST API Reference for getTenantUsage Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tenant-usage/
     - parameter refresh: (query) Specifies whether to bypass the cache and request the usage statistics from DocsCloud again. (optional, default to false)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: DocsCloudUsageWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getTenantUsage(refresh: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> DocsCloudUsageWrapper {
        return try await getTenantUsageWithRequestBuilder(refresh: refresh, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the DocsCloud tenant usage
     
     See also:
     REST API Reference for getTenantUsage Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tenant-usage/
     
     - GET /api/2.0/settings/docscloud/tenant/usage
     - Returns the DocsCloud usage statistics of the current portal.
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
     - parameter refresh: (query) Specifies whether to bypass the cache and request the usage statistics from DocsCloud again. (optional, default to false)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<DocsCloudUsageWrapper> 
     */
    open class func getTenantUsageWithRequestBuilder(refresh: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<DocsCloudUsageWrapper> {
        let localVariablePath = "/api/2.0/settings/docscloud/tenant/usage"
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

        let localVariableRequestBuilder: RequestBuilder<DocsCloudUsageWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Start the DocsCloud trial
     
     See also:
     REST API Reference for startDocsCloudTrial Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/start-docs-cloud-trial/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: BooleanWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func startDocsCloudTrial(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> BooleanWrapper {
        return try await startDocsCloudTrialWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Start the DocsCloud trial
     
     See also:
     REST API Reference for startDocsCloudTrial Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/start-docs-cloud-trial/
     
     - POST /api/2.0/settings/docscloud/trial
     - Starts the DocsCloud trial.
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
     - returns: RequestBuilder<BooleanWrapper> 
     */
    open class func startDocsCloudTrialWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<BooleanWrapper> {
        let localVariablePath = "/api/2.0/settings/docscloud/trial"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BooleanWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Switch the DocsCloud subscription to DocsCloudDevPack
     
     See also:
     REST API Reference for switchToDevPack Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/switch-to-dev-pack/
     - parameter docsCloudDevPackRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: BooleanWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func switchToDevPack(docsCloudDevPackRequestDto: DocsCloudDevPackRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> BooleanWrapper {
        return try await switchToDevPackWithRequestBuilder(docsCloudDevPackRequestDto: docsCloudDevPackRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Switch the DocsCloud subscription to DocsCloudDevPack
     
     See also:
     REST API Reference for switchToDevPack Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/switch-to-dev-pack/
     
     - POST /api/2.0/settings/docscloud/switchtodevpack
     - Switches the current DocsCloud subscription to DocsCloudDevPack: charges the price difference  from the wallet and transfers the subscription (with its license) to the target product.  The quantity is taken from the currently purchased DocsCloud quota.  Only the portal payer can perform this action.
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
     - parameter docsCloudDevPackRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<BooleanWrapper> 
     */
    open class func switchToDevPackWithRequestBuilder(docsCloudDevPackRequestDto: DocsCloudDevPackRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<BooleanWrapper> {
        let localVariablePath = "/api/2.0/settings/docscloud/switchtodevpack"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: docsCloudDevPackRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BooleanWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Terminate the DocsCloud tenant quota report generation
     
     See also:
     REST API Reference for terminateTenantQuotaReport Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/terminate-tenant-quota-report/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func terminateTenantQuotaReport(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await terminateTenantQuotaReportWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Terminate the DocsCloud tenant quota report generation
     
     See also:
     REST API Reference for terminateTenantQuotaReport Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/terminate-tenant-quota-report/
     
     - DELETE /api/2.0/settings/docscloud/tenant/quota/report
     - Terminates generating the DocsCloud user quota report.
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
    open class func terminateTenantQuotaReportWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<Void> {
        let localVariablePath = "/api/2.0/settings/docscloud/tenant/quota/report"
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
     Update the DocsCloud tenant configuration
     
     See also:
     REST API Reference for updateTenantConfig Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/update-tenant-config/
     - parameter docsCloudConfig: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: DocsCloudConfigWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func updateTenantConfig(docsCloudConfig: DocsCloudConfig? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> DocsCloudConfigWrapper {
        return try await updateTenantConfigWithRequestBuilder(docsCloudConfig: docsCloudConfig, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Update the DocsCloud tenant configuration
     
     See also:
     REST API Reference for updateTenantConfig Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/update-tenant-config/
     
     - PUT /api/2.0/settings/docscloud/tenant/config
     - Updates the DocsCloud tenant configuration of the current portal with the parameters specified in the request.
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
     - parameter docsCloudConfig: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<DocsCloudConfigWrapper> 
     */
    open class func updateTenantConfigWithRequestBuilder(docsCloudConfig: DocsCloudConfig? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<DocsCloudConfigWrapper> {
        let localVariablePath = "/api/2.0/settings/docscloud/tenant/config"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: docsCloudConfig, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<DocsCloudConfigWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
