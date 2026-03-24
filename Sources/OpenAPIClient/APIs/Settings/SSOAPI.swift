//
//  Copyright (c) Ascensio System SIA 2025
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
     Get the default SSO settings
     
     See also:
     REST API Reference for getDefaultSsoSettingsV2 Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-default-sso-settings-v2/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: SsoSettingsV2Wrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getDefaultSsoSettingsV2(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> SsoSettingsV2Wrapper {
        return try await getDefaultSsoSettingsV2WithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the default SSO settings
     
     See also:
     REST API Reference for getDefaultSsoSettingsV2 Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-default-sso-settings-v2/
     
     - GET /api/2.0/settings/ssov2/default
     - Returns the default portal SSO settings.
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
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<SsoSettingsV2Wrapper> 
     */
    open class func getDefaultSsoSettingsV2WithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<SsoSettingsV2Wrapper> {
        let localVariablePath = "/api/2.0/settings/ssov2/default"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SsoSettingsV2Wrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get the SSO settings
     
     See also:
     REST API Reference for getSsoSettingsV2 Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-sso-settings-v2/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: SsoSettingsV2Wrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getSsoSettingsV2(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> SsoSettingsV2Wrapper {
        return try await getSsoSettingsV2WithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the SSO settings
     
     See also:
     REST API Reference for getSsoSettingsV2 Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-sso-settings-v2/
     
     - GET /api/2.0/settings/ssov2
     - Returns the current portal SSO settings.
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<SsoSettingsV2Wrapper> 
     */
    open class func getSsoSettingsV2WithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<SsoSettingsV2Wrapper> {
        let localVariablePath = "/api/2.0/settings/ssov2"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SsoSettingsV2Wrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Get the SSO settings constants
     
     See also:
     REST API Reference for getSsoSettingsV2Constants Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-sso-settings-v2-constants/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: ObjectWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getSsoSettingsV2Constants(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ObjectWrapper {
        return try await getSsoSettingsV2ConstantsWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the SSO settings constants
     
     See also:
     REST API Reference for getSsoSettingsV2Constants Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-sso-settings-v2-constants/
     
     - GET /api/2.0/settings/ssov2/constants
     - Returns the SSO settings constants.
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
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ObjectWrapper> 
     */
    open class func getSsoSettingsV2ConstantsWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ObjectWrapper> {
        let localVariablePath = "/api/2.0/settings/ssov2/constants"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ObjectWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Reset the SSO settings
     
     See also:
     REST API Reference for resetSsoSettingsV2 Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/reset-sso-settings-v2/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: SsoSettingsV2Wrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func resetSsoSettingsV2(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> SsoSettingsV2Wrapper {
        return try await resetSsoSettingsV2WithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Reset the SSO settings
     
     See also:
     REST API Reference for resetSsoSettingsV2 Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/reset-sso-settings-v2/
     
     - DELETE /api/2.0/settings/ssov2
     - Resets the SSO settings of the current portal.
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
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<SsoSettingsV2Wrapper> 
     */
    open class func resetSsoSettingsV2WithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<SsoSettingsV2Wrapper> {
        let localVariablePath = "/api/2.0/settings/ssov2"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SsoSettingsV2Wrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Save the SSO settings
     
     See also:
     REST API Reference for saveSsoSettingsV2 Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/save-sso-settings-v2/
     - parameter ssoSettingsRequestsDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: SsoSettingsV2Wrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func saveSsoSettingsV2(ssoSettingsRequestsDto: SsoSettingsRequestsDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> SsoSettingsV2Wrapper {
        return try await saveSsoSettingsV2WithRequestBuilder(ssoSettingsRequestsDto: ssoSettingsRequestsDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Save the SSO settings
     
     See also:
     REST API Reference for saveSsoSettingsV2 Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/save-sso-settings-v2/
     
     - POST /api/2.0/settings/ssov2
     - Saves the SSO settings for the current portal.
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
     - parameter ssoSettingsRequestsDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<SsoSettingsV2Wrapper> 
     */
    open class func saveSsoSettingsV2WithRequestBuilder(ssoSettingsRequestsDto: SsoSettingsRequestsDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<SsoSettingsV2Wrapper> {
        let localVariablePath = "/api/2.0/settings/ssov2"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: ssoSettingsRequestsDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SsoSettingsV2Wrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
