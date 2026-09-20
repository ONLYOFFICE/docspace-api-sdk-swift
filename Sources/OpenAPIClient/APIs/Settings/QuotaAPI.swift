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
     Get the user quota settings
     
     See also:
     REST API Reference for getUserQuotaSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-user-quota-settings/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: TenantUserQuotaSettingsWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getUserQuotaSettings(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> TenantUserQuotaSettingsWrapper {
        return try await getUserQuotaSettingsWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the user quota settings
     
     See also:
     REST API Reference for getUserQuotaSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-user-quota-settings/
     
     - GET /api/2.0/settings/userquotasettings
     - Returns the portal's per-user default storage quota: whether it is enabled and, if so, its size in bytes.  Requires Owner or DocSpaceAdmin (the EditPortalSettings permission); every other authenticated role, and an  anonymous caller, is refused. This is a read-only, idempotent call. When `enableQuota` is false, the size  value is not enforced and users get unlimited personal storage regardless of what it holds. The response  supports conditional requests: send the standard If-Modified-Since header with the previous `lastModified`  value, and an unchanged response comes back empty instead of resending the settings.
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
     - returns: RequestBuilder<TenantUserQuotaSettingsWrapper> 
     */
    open class func getUserQuotaSettingsWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<TenantUserQuotaSettingsWrapper> {
        let localVariablePath = "/api/2.0/settings/userquotasettings"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<TenantUserQuotaSettingsWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Save the AI Agent quota settings
     
     See also:
     REST API Reference for saveAiAgentQuotaSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/save-ai-agent-quota-settings/
     - parameter quotaSettingsRequestsDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: TenantAiAgentQuotaSettingsWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func saveAiAgentQuotaSettings(quotaSettingsRequestsDto: QuotaSettingsRequestsDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> TenantAiAgentQuotaSettingsWrapper {
        return try await saveAiAgentQuotaSettingsWithRequestBuilder(quotaSettingsRequestsDto: quotaSettingsRequestsDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Save the AI Agent quota settings
     
     See also:
     REST API Reference for saveAiAgentQuotaSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/save-ai-agent-quota-settings/
     
     - POST /api/2.0/settings/aiagentquotasettings
     - Sets the portal's default storage quota for AI agents, applied as the starting limit for newly created agents.  Requires Owner or DocSpaceAdmin (the EditPortalSettings permission), and on a paid SaaS tenant the portal's  plan must include the statistics feature, or the call is rejected as not covered by the plan. The requested  size cannot exceed the portal's own total storage quota, nor, on a Standalone install with a portal-wide quota  enabled, that quota's size. Disable enforcement by passing `enableQuota=false`; the size is then ignored for  new agents. This is a mutating, idempotent call: sending the same body again leaves the quota unchanged. It  returns the saved settings, not any agent's current usage.
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
     - parameter quotaSettingsRequestsDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<TenantAiAgentQuotaSettingsWrapper> 
     */
    open class func saveAiAgentQuotaSettingsWithRequestBuilder(quotaSettingsRequestsDto: QuotaSettingsRequestsDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<TenantAiAgentQuotaSettingsWrapper> {
        let localVariablePath = "/api/2.0/settings/aiagentquotasettings"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: quotaSettingsRequestsDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<TenantAiAgentQuotaSettingsWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Save the room quota settings
     
     See also:
     REST API Reference for saveRoomQuotaSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/save-room-quota-settings/
     - parameter quotaSettingsRequestsDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: TenantRoomQuotaSettingsWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func saveRoomQuotaSettings(quotaSettingsRequestsDto: QuotaSettingsRequestsDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> TenantRoomQuotaSettingsWrapper {
        return try await saveRoomQuotaSettingsWithRequestBuilder(quotaSettingsRequestsDto: quotaSettingsRequestsDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Save the room quota settings
     
     See also:
     REST API Reference for saveRoomQuotaSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/save-room-quota-settings/
     
     - POST /api/2.0/settings/roomquotasettings
     - Sets the portal's default per-room storage quota, applied to newly created rooms as their starting limit.  Requires Owner or DocSpaceAdmin (the EditPortalSettings permission), and on a paid SaaS tenant the portal's  plan must include the statistics feature, or the call is rejected as not covered by the plan. The requested  size cannot exceed the portal's own total storage quota, nor, on a Standalone install with a portal-wide quota  enabled, that quota's size. Disable enforcement by passing `enableQuota=false`; the size is then ignored for  new rooms. This is a mutating, idempotent call: sending the same body again leaves the quota unchanged. It  returns the saved settings, not the individual rooms' current usage.
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
     - parameter quotaSettingsRequestsDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<TenantRoomQuotaSettingsWrapper> 
     */
    open class func saveRoomQuotaSettingsWithRequestBuilder(quotaSettingsRequestsDto: QuotaSettingsRequestsDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<TenantRoomQuotaSettingsWrapper> {
        let localVariablePath = "/api/2.0/settings/roomquotasettings"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: quotaSettingsRequestsDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<TenantRoomQuotaSettingsWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Save the tenant quota settings
     
     See also:
     REST API Reference for setTenantQuotaSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-tenant-quota-settings/
     - parameter tenantQuotaSettingsRequestsDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: TenantQuotaSettingsWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func setTenantQuotaSettings(tenantQuotaSettingsRequestsDto: TenantQuotaSettingsRequestsDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> TenantQuotaSettingsWrapper {
        return try await setTenantQuotaSettingsWithRequestBuilder(tenantQuotaSettingsRequestsDto: tenantQuotaSettingsRequestsDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Save the tenant quota settings
     
     See also:
     REST API Reference for setTenantQuotaSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-tenant-quota-settings/
     
     - PUT /api/2.0/settings/tenantquotasettings
     - Sets or removes the storage quota for a given tenant. Available only on a Standalone (self-hosted)  installation; on SaaS the call is always refused. Requires a DocSpace administrator, and the portal's plan  must include the statistics feature or the call is rejected as not covered by the plan. Pass a non-negative  `quota` in bytes to enable the limit for the tenant identified by `tenantId`, or a negative value to remove  any limit. This is a mutating, idempotent call: sending the same body again leaves the quota unchanged. It  returns the saved quota settings for that tenant, not its current usage.
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
     - parameter tenantQuotaSettingsRequestsDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<TenantQuotaSettingsWrapper> 
     */
    open class func setTenantQuotaSettingsWithRequestBuilder(tenantQuotaSettingsRequestsDto: TenantQuotaSettingsRequestsDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<TenantQuotaSettingsWrapper> {
        let localVariablePath = "/api/2.0/settings/tenantquotasettings"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: tenantQuotaSettingsRequestsDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<TenantQuotaSettingsWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
