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
     Change the portal theme
     
     See also:
     REST API Reference for changePortalTheme Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/change-portal-theme/
     - parameter darkThemeSettingsRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: DarkThemeSettingsWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func changePortalTheme(darkThemeSettingsRequestDto: DarkThemeSettingsRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> DarkThemeSettingsWrapper {
        return try await changePortalThemeWithRequestBuilder(darkThemeSettingsRequestDto: darkThemeSettingsRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Change the portal theme
     
     See also:
     REST API Reference for changePortalTheme Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/change-portal-theme/
     
     - PUT /api/2.0/people/theme
     - Sets the interface theme of the calling account to `Base` for the light theme, `Dark` for the dark one, or  `System` to follow whatever the operating system asks for.  The setting belongs to the account and not to the portal, despite the name of the route, so it changes  nothing for anybody else and cannot be set on another account.  It needs no permission, takes effect at once and is idempotent - sending the theme that is already in use  changes nothing.  The answer echoes the theme that was stored, which is the value the request asked for.  The same value is reported as `theme` by `GET api/2.0/people/@self`.
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
     - parameter darkThemeSettingsRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<DarkThemeSettingsWrapper> 
     */
    open class func changePortalThemeWithRequestBuilder(darkThemeSettingsRequestDto: DarkThemeSettingsRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<DarkThemeSettingsWrapper> {
        let localVariablePath = "/api/2.0/people/theme"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: darkThemeSettingsRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<DarkThemeSettingsWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get the portal theme
     
     See also:
     REST API Reference for getPortalTheme Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-theme/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: DarkThemeSettingsWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getPortalTheme(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> DarkThemeSettingsWrapper {
        return try await getPortalThemeWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the portal theme
     
     See also:
     REST API Reference for getPortalTheme Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-theme/
     
     - GET /api/2.0/people/theme
     - Returns the interface theme the calling account has chosen: `Base` for the light theme, `Dark` for the dark  one, or `System` to follow whatever the operating system asks for.  The setting belongs to the account and not to the portal, despite the name of the route, so it describes the  caller alone and cannot be read for anybody else.  It needs no permission and is read-only.  A caller that has never chosen a theme gets the portal default rather than an empty answer.  The same value is also reported as `theme` by `GET api/2.0/people/@self`, so a client that reads the profile  on start-up does not need this operation as well.
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
     - returns: RequestBuilder<DarkThemeSettingsWrapper> 
     */
    open class func getPortalThemeWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<DarkThemeSettingsWrapper> {
        let localVariablePath = "/api/2.0/people/theme"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<DarkThemeSettingsWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
