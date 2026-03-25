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
     Set the banners visibility
     
     See also:
     REST API Reference for setTenantBannerSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-tenant-banner-settings/
     - parameter tenantBannerSettingsDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: TenantBannerSettingsWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func setTenantBannerSettings(tenantBannerSettingsDto: TenantBannerSettingsDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> TenantBannerSettingsWrapper {
        return try await setTenantBannerSettingsWithRequestBuilder(tenantBannerSettingsDto: tenantBannerSettingsDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Set the banners visibility
     
     See also:
     REST API Reference for setTenantBannerSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-tenant-banner-settings/
     
     - POST /api/2.0/settings/banner
     - Sets the visibility settings of the promotional banners in the portal.
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
     - parameter tenantBannerSettingsDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<TenantBannerSettingsWrapper> 
     */
    open class func setTenantBannerSettingsWithRequestBuilder(tenantBannerSettingsDto: TenantBannerSettingsDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<TenantBannerSettingsWrapper> {
        let localVariablePath = "/api/2.0/settings/banner"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: tenantBannerSettingsDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<TenantBannerSettingsWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
