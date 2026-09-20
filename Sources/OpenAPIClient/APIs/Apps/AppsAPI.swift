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
     Get an app
     
     See also:
     REST API Reference for callGet Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/call-get/
     - parameter id: (path) The application to read, by the identifier `GET api/2.0/apps` reports - one of the feature modules the portal  can turn on, such as `ai-room` or `docs-cloud`. An identifier not declared in the installation configuration  answers 404, which is also how a caller learns that an application does not exist here. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AppWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func callGet(id: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AppWrapper {
        return try await callGetWithRequestBuilder(id: id, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get an app
     
     See also:
     REST API Reference for callGet Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/call-get/
     
     - GET /api/2.0/apps/{id}
     - Returns one portal application by its identifier - one of the feature modules the portal can turn on, such as  `ai-rooms` or `docs-cloud` - with the enabled state and the settings document stored for the current portal.  The identifier must be an application declared in the installation configuration: take it  from `GET api/2.0/apps`, because an unknown identifier is rejected instead of creating anything. Any  authenticated portal member may read it. The call is read-only and idempotent. The result carries the  identifier, the enabled flag of the current portal and the settings JSON document, which is empty while the  portal has never saved settings for this application. An application that is not configured on this  installation fails with 404, so this is also the way to find out whether an application exists here at all.  Use `GET api/2.0/apps` to read all applications in one call, or `GET api/2.0/apps/{id}/settings` when only the  settings document is needed.
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
     - parameter id: (path) The application to read, by the identifier `GET api/2.0/apps` reports - one of the feature modules the portal  can turn on, such as `ai-room` or `docs-cloud`. An identifier not declared in the installation configuration  answers 404, which is also how a caller learns that an application does not exist here. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AppWrapper> 
     */
    open class func callGetWithRequestBuilder(id: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AppWrapper> {
        var localVariablePath = "/api/2.0/apps/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get all apps
     
     See also:
     REST API Reference for getAll Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-all/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: AppArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getAll(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AppArrayWrapper {
        return try await getAllWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get all apps
     
     See also:
     REST API Reference for getAll Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-all/
     
     - GET /api/2.0/apps
     - Returns every portal application available on this installation, each with the state it has for the current  portal: the feature modules the portal can turn on and configure, such as `ai-rooms` or `docs-cloud`. The set  of applications and their initial enabled state come from the installation configuration and cannot be changed  through the API; only the enabled flag and the settings document are stored per portal, by  `PUT api/2.0/apps/{id}/enabled` and `PUT api/2.0/apps/{id}/settings`. Any authenticated portal member may read  the list. The call is read-only and idempotent. The list follows the order of the configuration, and every item  carries the application identifier, whether the application is enabled for the current portal, and the settings  JSON document saved for it, which is empty while the portal has never saved one. An empty list means that no  applications are configured on this installation, not that they are all disabled. There is neither paging nor  filtering here: to read a single application use `GET api/2.0/apps/{id}`.
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
     - returns: RequestBuilder<AppArrayWrapper> 
     */
    open class func getAllWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AppArrayWrapper> {
        let localVariablePath = "/api/2.0/apps"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get app settings
     
     See also:
     REST API Reference for getSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-settings/
     - parameter id: (path) The application to read, by the identifier `GET api/2.0/apps` reports - one of the feature modules the portal  can turn on, such as `ai-room` or `docs-cloud`. An identifier not declared in the installation configuration  answers 404, which is also how a caller learns that an application does not exist here. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: UnknownNullableWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getSettings(id: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> UnknownNullableWrapper {
        return try await getSettingsWithRequestBuilder(id: id, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get app settings
     
     See also:
     REST API Reference for getSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-settings/
     
     - GET /api/2.0/apps/{id}/settings
     - Returns only the settings document of one portal application, such as `ai-rooms` or `docs-cloud`: the JSON  that the current portal has saved for it through `PUT api/2.0/apps/{id}/settings`, with no wrapper around it.  The identifier must be an application declared in the installation configuration, as listed by  `GET api/2.0/apps`. Any authenticated portal member  may read it. The call is read-only and idempotent. The document comes back exactly as it was saved: its shape  is defined by the application itself and is not validated by the portal, and an empty result means that the  portal has never saved settings for this application, so the application uses its own defaults. The enabled  state is not part of the answer: read it from `GET api/2.0/apps/{id}`.
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
     - parameter id: (path) The application to read, by the identifier `GET api/2.0/apps` reports - one of the feature modules the portal  can turn on, such as `ai-room` or `docs-cloud`. An identifier not declared in the installation configuration  answers 404, which is also how a caller learns that an application does not exist here. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<UnknownNullableWrapper> 
     */
    open class func getSettingsWithRequestBuilder(id: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<UnknownNullableWrapper> {
        var localVariablePath = "/api/2.0/apps/{id}/settings"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<UnknownNullableWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Enable or disable an app
     
     See also:
     REST API Reference for setEnabled Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-enabled/
     - parameter id: (path) The application to switch, by the identifier `GET api/2.0/apps` reports. It has to be an application declared  in the installation configuration; an unknown identifier answers 404 rather than creating anything.      - parameter setAppEnabledBody: (body) The new state of the application. Only the enabled flag travels here; the settings document is changed  through `PUT api/2.0/apps/{id}/settings`. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AppWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func setEnabled(id: String, setAppEnabledBody: SetAppEnabledBody, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AppWrapper {
        return try await setEnabledWithRequestBuilder(id: id, setAppEnabledBody: setAppEnabledBody, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Enable or disable an app
     
     See also:
     REST API Reference for setEnabled Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-enabled/
     
     - PUT /api/2.0/apps/{id}/enabled
     - Turns one portal application on or off for the current portal, and notifies the clients connected to the portal  so that they can show or hide it without being reloaded. The identifier must be an application declared in the  installation configuration, as listed by `GET api/2.0/apps`. The caller must be a portal administrator allowed  to edit the portal settings. The call is mutating and idempotent: it stores the flag for this portal, overriding  the default that the configuration gives the application, and repeating it with the same value changes nothing.  Disabling an application does not delete its settings document, which stays saved and applies again as soon as  the application is enabled. The response is the application in its new state, including that settings document.  Only the enabled flag is affected here: to change the settings document use `PUT api/2.0/apps/{id}/settings`.
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
     - parameter id: (path) The application to switch, by the identifier `GET api/2.0/apps` reports. It has to be an application declared  in the installation configuration; an unknown identifier answers 404 rather than creating anything. 
     - parameter setAppEnabledBody: (body) The new state of the application. Only the enabled flag travels here; the settings document is changed  through `PUT api/2.0/apps/{id}/settings`. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AppWrapper> 
     */
    open class func setEnabledWithRequestBuilder(id: String, setAppEnabledBody: SetAppEnabledBody, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AppWrapper> {
        var localVariablePath = "/api/2.0/apps/{id}/enabled"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: setAppEnabledBody, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Save app settings
     
     See also:
     REST API Reference for setSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-settings/
     - parameter id: (path) The application whose configuration is stored, by the identifier `GET api/2.0/apps` reports. An identifier  not declared in the installation configuration answers 404.      - parameter setAppSettingsBody: (body) The configuration to store for this portal, replacing whatever was stored before. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AppWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func setSettings(id: String, setAppSettingsBody: SetAppSettingsBody, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AppWrapper {
        return try await setSettingsWithRequestBuilder(id: id, setAppSettingsBody: setAppSettingsBody, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Save app settings
     
     See also:
     REST API Reference for setSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-settings/
     
     - PUT /api/2.0/apps/{id}/settings
     - Stores the application-specific settings document of one portal application for the current portal. The  identifier must be an application declared in the installation configuration, as listed by `GET api/2.0/apps`.  The caller must be a portal administrator allowed to edit the portal settings. The call is mutating and  idempotent, and it replaces the whole document instead of merging into it: read the current one with  `GET api/2.0/apps/{id}/settings`, change it and send it back complete, or send `null` to drop the saved document  and let the application fall back to its own defaults. Any valid JSON value is accepted, since the content is  stored as it is and is interpreted by the application rather than by the portal, while a body that is not valid  JSON fails with 400 and stores nothing. The response is the application in its new state, with the stored  document echoed back. Unlike `PUT api/2.0/apps/{id}/enabled`, this operation sends no notification to the  connected clients, which pick the new settings up on their next read.
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
     - parameter id: (path) The application whose configuration is stored, by the identifier `GET api/2.0/apps` reports. An identifier  not declared in the installation configuration answers 404. 
     - parameter setAppSettingsBody: (body) The configuration to store for this portal, replacing whatever was stored before. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AppWrapper> 
     */
    open class func setSettingsWithRequestBuilder(id: String, setAppSettingsBody: SetAppSettingsBody, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AppWrapper> {
        var localVariablePath = "/api/2.0/apps/{id}/settings"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: setAppSettingsBody, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
