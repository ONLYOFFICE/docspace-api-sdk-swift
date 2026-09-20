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
     Calculate the DocsCloudDevPack switch cost
     
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
     Calculate the DocsCloudDevPack switch cost
     
     See also:
     REST API Reference for calculateDevPack Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/calculate-dev-pack/
     
     - POST /api/2.0/settings/docscloud/calculatedevpack
     - Prices the upgrade of the paid DocsCloud subscription of the current portal to DocsCloudDevPack for  the requested number of users, without changing the subscription or charging anything. It applies the  same preconditions as the switch itself: the portal must hold an active DocsCloud subscription, must  not already hold a DocsCloudDevPack one, and its tariff must not be delayed or unpaid; the quotas and  the state of the current tariff are listed by `GET api/2.0/portal/tariff`. The caller must be a  DocSpace administrator of a portal registered with the billing service. The call is read-only and  idempotent, so it can be repeated for different quantities before any switch is made. It returns the  amount that switching would cost, the three-letter ISO 4217 currency of that amount, the quantity the  amount was calculated for, and the identifier of the billing operation; an empty result means the  billing service could not price the switch, which should then not be attempted. The switch itself is  performed by `POST api/2.0/settings/docscloud/switchtodevpack` with the same `quantity` and takes no  identifier from this response; to price a change in the number of users of a subscription the portal  already has, use `PUT api/2.0/portal/payment/calculatewallet` instead.
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
     Start the DocsCloud quota report
     
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
     Start the DocsCloud quota report
     
     See also:
     REST API Reference for createTenantQuotaReport Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-tenant-quota-report/
     
     - POST /api/2.0/settings/docscloud/tenant/quota/report
     - Queues a background job that renders the current DocsCloud user quota of the portal into an xlsx file and  saves that file in the My documents folder of the calling user; the report lists the editor and the viewer  users with the type and the expiration date of each, and summarizes the internal, external and remaining users  against the license limits. The file is not ready when the response arrives: poll  `GET api/2.0/settings/docscloud/tenant/quota/report` until `isCompleted` is true, then take the file from  `resultFileId` or `resultFileUrl`, and use `DELETE api/2.0/settings/docscloud/tenant/quota/report` to cancel a  job that is still running. The caller must be a portal administrator allowed to edit the portal settings. The  portal should have an activated DocsCloud tenant: this call does not check that, and without a tenant the job  itself fails and reports the reason in the `error` of the status response. One report per caller runs at a  time: while a report of this user is still being built, the call describes that running job and no second  generation is started, so a repeated call is safe. What comes back is the initial state of the job, with  `percentage` 0 and a created `status`, not the report; the report is a point-in-time snapshot and carries the  generation date in its file name. To read the same data as JSON, without building a file, use  `GET api/2.0/settings/docscloud/tenant/quota`.
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
     - parameter refresh: (query) Pass `true` to skip the cached copy and request the tenant from DocsCloud again, replacing the cached one; with the default `false` the answer may be up to an hour old, or up to a minute old while the portal has no tenant. (optional, default to false)
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
     - Returns the DocsCloud tenant of the current portal: the DocsCloud server assigned to the portal, with its  address, the date the tenant subscription ends and the payment the tenant was created for. A tenant exists  only after a DocsCloud subscription has been granted, by `POST api/2.0/settings/docscloud/trial` or by a  DocsCloud purchase, and only on an installation where the DocsCloud service is configured. The caller must  be a portal administrator allowed to edit the portal settings. The call is read-only and idempotent, and it  is served from a cache that keeps the tenant for an hour and the absence of a tenant for a minute, so pass  `refresh=true` right after a subscription change to read the current state from DocsCloud instead. In the  result, `address` is the absolute URL of the assigned server, `isActive` tells whether `endDate` is still in  the future, and the dates are in UTC. An empty result means the portal has no DocsCloud tenant yet, which is  the normal state before a subscription and not an error, so this is the operation to call to find out whether  DocsCloud is activated at all. The license and server details, the editing settings, the user quota and the  usage statistics are not part of it: they live in `GET api/2.0/settings/docscloud/tenant/info`,  `.../tenant/config`, `.../tenant/quota` and `.../tenant/usage`, each of which fails with 400 while the  portal has no activated tenant.
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
     - parameter refresh: (query) Pass `true` to skip the cached copy and request the tenant from DocsCloud again, replacing the cached one; with the default `false` the answer may be up to an hour old, or up to a minute old while the portal has no tenant. (optional, default to false)
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
     - parameter refresh: (query) Pass `true` to skip the cached copy and request the configuration from DocsCloud again, replacing the cached one; with the default `false` the answer may be up to an hour old. (optional, default to false)
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
     - Returns the configuration of the DocsCloud tenant of the current portal: its name, the security secret and  header name, the file size limit and anonymous access switch of the server, the WOPI switch and the IP filter  rules. The portal must have an activated DocsCloud tenant, granted by `POST api/2.0/settings/docscloud/trial`  or by a DocsCloud purchase: an empty result from `GET api/2.0/settings/docscloud/tenant` means there is none  and this call fails with 400. The caller must be a portal administrator allowed to edit the portal settings,  on an installation where the DocsCloud service is configured. The call is read-only, idempotent and cached for  an hour, so pass `refresh=true` to read the current state from DocsCloud; the same values are changed by  `PUT api/2.0/settings/docscloud/tenant/config`, which drops the cached copy itself, so no refresh is needed  after an update. In the result, `security.secret` is a credential, so the response should be treated as  sensitive; `server.fileSizeLimit` is in bytes and an update cannot raise it above 209715200 (200 MB); and an  empty or absent `ipFilter.rules` means no address restriction is configured. The license and server version,  the address of the assigned server, the per-user quota and the usage counters are not part of it: they live in  `.../tenant/info`, `.../tenant`, `.../tenant/quota` and `.../tenant/usage`.
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
     - parameter refresh: (query) Pass `true` to skip the cached copy and request the configuration from DocsCloud again, replacing the cached one; with the default `false` the answer may be up to an hour old. (optional, default to false)
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
     - parameter refresh: (query) Pass `true` to skip the cached copy and request the license, server and usage information from DocsCloud again, replacing the cached one; with the default `false` the answer may be up to a minute old. (optional, default to false)
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
     - Returns the DocsCloud license of the current portal, the DocsCloud server serving it, the user limits of  that license and the editor and viewer usage counted against them for the current period. The portal must  have an activated DocsCloud tenant, granted by `POST api/2.0/settings/docscloud/trial` or by a DocsCloud  purchase: an empty result from `GET api/2.0/settings/docscloud/tenant` means there is none and this call  fails with 400. The caller must be a portal administrator allowed to edit the portal settings, on an  installation where the DocsCloud service is configured. The call is read-only, idempotent and cached for a  minute, so pass `refresh=true` right after a subscription change to read the current state from DocsCloud.  In the result, `license.valid` is when the license expires and `license.trial` is reported as `false` once  the portal holds a paid DocsCloud or DocsCloudDevPack subscription, even when the license itself still says  trial; `usersLimit` caps the editors and the viewers allowed, `stats` counts the active, internal, external  and remaining users of each of those two kinds over the last `stats.periodDay` days, and the dates are in  UTC. The editing settings, the per-user quota lists and the address of the assigned server live in  `.../tenant/config`, `.../tenant/quota` and `.../tenant`, while `.../tenant/usage` gives one active-user  total instead of this per-role breakdown.
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
     - parameter refresh: (query) Pass `true` to skip the cached copy and request the license, server and usage information from DocsCloud again, replacing the cached one; with the default `false` the answer may be up to a minute old. (optional, default to false)
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
     - parameter refresh: (query) Pass `true` to skip the cached copy and request the user quota from DocsCloud again, replacing the cached one; with the default `false` the answer may be up to a minute old. (optional, default to false)
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
     - Returns the DocsCloud user quota of the current portal: the users who currently count as DocsCloud editors and  the users who count as viewers, each with the identifier DocsCloud knows them by and the date their quota entry  expires. The portal must have an activated DocsCloud tenant, granted by `POST api/2.0/settings/docscloud/trial`  or by a DocsCloud purchase: an empty result from `GET api/2.0/settings/docscloud/tenant` means there is none  and this call fails with 400. The caller must be a portal administrator allowed to edit the portal settings,  on an installation where the DocsCloud service is configured. The call is read-only, idempotent and cached for  a minute, so pass `refresh=true` to read the current state from DocsCloud. In the result, `users` holds the  editor entries and `usersView` the viewer entries, both unordered; `userId` is the DocSpace user ID for a  portal member and an identifier of DocsCloud's own for anyone else; `expire` is the date and time the entry  expires, as a UTC string; and empty lists mean no user has been counted yet. It lists the users themselves,  not the counters: the license limits with the per-role totals are in  `GET api/2.0/settings/docscloud/tenant/info`, a single active-user total is in `.../tenant/usage`, and the  same lists as a downloadable xlsx file are produced by  `POST api/2.0/settings/docscloud/tenant/quota/report`.
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
     - parameter refresh: (query) Pass `true` to skip the cached copy and request the user quota from DocsCloud again, replacing the cached one; with the default `false` the answer may be up to a minute old. (optional, default to false)
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
     Get the DocsCloud quota report status
     
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
     Get the DocsCloud quota report status
     
     See also:
     REST API Reference for getTenantQuotaReport Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tenant-quota-report/
     
     - GET /api/2.0/settings/docscloud/tenant/quota/report
     - Returns the state of the DocsCloud user quota report that the current user started with  `POST api/2.0/settings/docscloud/tenant/quota/report`, so that the caller can follow the generation and pick  up the resulting file. It reports the caller's own job only: a report started by another administrator is not  visible here, and an empty result means this user has no job, because none was started, because it was  terminated, or because a finished one has already been cleared (a job state is kept for a day, and starting a  new report drops the previous finished one); that is a normal state and not an error. The caller must be a  portal administrator allowed to edit the portal settings. The call is read-only and idempotent, and it is  meant to be polled while the job runs. In the result, `percentage` goes from 0 to 100 and `isCompleted`  becomes true both on success and on failure, so check `error`: it is empty when the report was built and  carries the failure message otherwise;  `resultFileId`, `resultFileName` and `resultFileUrl` are filled in only once the file exists, and that file  also stays in the My documents folder of the caller. Use the `POST` operation on this path to start a report  and the `DELETE` one to cancel it.
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
     - parameter refresh: (query) Pass `true` to skip the cached copy and request the usage statistics from DocsCloud again, replacing the cached one; with the default `false` the answer may be up to a minute old. (optional, default to false)
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
     - Returns the DocsCloud usage of the current portal: the number of users who have been active in DocsCloud in  the current period, and the moment that period is counted from. The portal must have an activated DocsCloud  tenant, granted by `POST api/2.0/settings/docscloud/trial` or by a DocsCloud purchase: an empty result from  `GET api/2.0/settings/docscloud/tenant` means there is none and this call fails with 400. The caller must be a  portal administrator allowed to edit the portal settings, on an installation where the DocsCloud service is  configured. The call is read-only, idempotent and cached for a minute, so pass `refresh=true` to read the  current state from DocsCloud. In the result, `activeCount` counts the users seen since `since`, which is in  UTC, and it is one total for the whole tenant, with no split by role and no limit to compare it against. For  the editor and viewer breakdown with the license limits use `GET api/2.0/settings/docscloud/tenant/info`, and  for the users counted one by one `GET api/2.0/settings/docscloud/tenant/quota`.
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
     - parameter refresh: (query) Pass `true` to skip the cached copy and request the usage statistics from DocsCloud again, replacing the cached one; with the default `false` the answer may be up to a minute old. (optional, default to false)
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
     - Activates the free DocsCloud trial subscription for the current portal, and, once a DocsCloud server is  assigned to the portal, allows the address of that server in the Content Security Policy settings.  The portal tariff must be in the trial or paid state (not delayed and not unpaid), and the portal must not  already hold a DocsCloud trial, DocsCloud or DocsCloudDevPack subscription: the quotas of the current  tariff are listed by `GET api/2.0/portal/tariff`. The caller must be a portal administrator allowed to edit  the portal settings, on an installation where the billing service is configured. The operation changes the  portal subscription and is not idempotent: repeating it after a successful activation fails with 400.  It returns `true` when the trial has been granted, and `false` when the billing service declines it  (for example, when this portal has already used its trial), in which case nothing is changed. It never buys  a paid plan: an existing paid DocsCloud subscription is moved to DocsCloudDevPack by  `POST api/2.0/settings/docscloud/switchtodevpack` instead.
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
     Switch DocsCloud to DocsCloudDevPack
     
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
     Switch DocsCloud to DocsCloudDevPack
     
     See also:
     REST API Reference for switchToDevPack Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/switch-to-dev-pack/
     
     - POST /api/2.0/settings/docscloud/switchtodevpack
     - Upgrades the paid DocsCloud subscription of the current portal to DocsCloudDevPack for the requested  number of users, charging the price difference to the portal wallet and moving the DocsCloud license  to the new product. The portal must hold an active DocsCloud subscription, must not already hold a  DocsCloudDevPack one, and its tariff must not be delayed or unpaid: the quotas and the state of the  current tariff are listed by `GET api/2.0/portal/tariff`, and the amount that will be charged is  returned by `POST api/2.0/settings/docscloud/calculatedevpack` for the same `quantity`. The caller  must be a DocSpace administrator of a portal registered with the billing service. The switch is  synchronous, mutating and not idempotent: repeating it after a successful call fails with 400, and  concurrent calls for one portal are serialized so that the wallet is charged only once. It returns  `true` when the subscription has been switched, and `false` when the billing service declines or  fails to perform the switch, in which case nothing is charged and the portal stays on DocsCloud.  Only the DocsCloud to DocsCloudDevPack direction is supported: to change the number of users of a  subscription the portal already has, or to schedule a reversion from DocsCloudDevPack back to  DocsCloud at the next billing period, use `PUT api/2.0/portal/payment/updatewallet` instead.
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
     Terminate the DocsCloud quota report
     
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
     Terminate the DocsCloud quota report
     
     See also:
     REST API Reference for terminateTenantQuotaReport Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/terminate-tenant-quota-report/
     
     - DELETE /api/2.0/settings/docscloud/tenant/quota/report
     - Cancels the DocsCloud user quota report that the current user started with  `POST api/2.0/settings/docscloud/tenant/quota/report` and removes its job, so that a new report can be started  right away. There is no precondition: the call is accepted even when this user has no report job at all, and  it affects the caller's own job only, never one started by another administrator. The caller must be a portal  administrator allowed to edit the portal settings. The cancellation is asynchronous and idempotent: 200 means  the request has been queued for the report worker, not that the job has already stopped, so poll  `GET api/2.0/settings/docscloud/tenant/quota/report` until it returns an empty result. Nothing is returned in  the body. A report file that has already been saved in the My documents folder of the caller is left there  and has to be deleted through the file operations if it is no longer wanted.
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
     - Replaces the configuration of the DocsCloud tenant of the current portal: its name, the security secret and  header name, the file size limit and anonymous access switch of the server, the WOPI switch and the IP filter  rules; it returns the configuration as DocsCloud stored it. The portal must have an activated DocsCloud tenant,  granted by `POST api/2.0/settings/docscloud/trial` or by a DocsCloud purchase: an empty result from  `GET api/2.0/settings/docscloud/tenant` means there is none and this call fails with 400. Read the current  values with `GET api/2.0/settings/docscloud/tenant/config` first and send back whole sections: the sections  left out of the request are not sent to DocsCloud at all, while a section that is present is sent with all of  its fields, so a field left unset inside it goes out as `0`, `false` or empty. The caller must be a portal  administrator allowed to edit the portal settings, on an installation where the DocsCloud service is  configured. The call is mutating,  synchronous and idempotent, it is recorded in the portal audit trail, and it drops the cached configuration  itself, so the next read returns the new values without `refresh=true`. The `tenantName`, `security.secret`,  `security.header` and every `ipFilter.rules` address are capped at 255 characters and `server.fileSizeLimit`  at 209715200 bytes (200 MB); a value outside those bounds is rejected with 400 before anything reaches  DocsCloud. It changes these settings only, never the subscription, the user quota or the license.
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
