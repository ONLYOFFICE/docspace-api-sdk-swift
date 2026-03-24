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
     Add a web plugin
     
     See also:
     REST API Reference for addWebPluginFromFile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/add-web-plugin-from-file/
     - parameter system: (query) Specifies whether to load the system plugins or not. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: WebPluginWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func addWebPluginFromFile(system: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> WebPluginWrapper {
        return try await addWebPluginFromFileWithRequestBuilder(system: system, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Add a web plugin
     
     See also:
     REST API Reference for addWebPluginFromFile Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/add-web-plugin-from-file/
     
     - POST /api/2.0/settings/webplugins
     - Adds a web plugin from a file to the current portal.
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
     - parameter system: (query) Specifies whether to load the system plugins or not. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<WebPluginWrapper> 
     */
    open class func addWebPluginFromFileWithRequestBuilder(system: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<WebPluginWrapper> {
        let localVariablePath = "/api/2.0/settings/webplugins"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "system": (wrappedValue: system?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<WebPluginWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Delete a web plugin
     
     See also:
     REST API Reference for deleteWebPlugin Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-web-plugin/
     - parameter name: (path) The web plugin name. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func deleteWebPlugin(name: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await deleteWebPluginWithRequestBuilder(name: name, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Delete a web plugin
     
     See also:
     REST API Reference for deleteWebPlugin Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-web-plugin/
     
     - DELETE /api/2.0/settings/webplugins/{name}
     - Deletes a web plugin by the name specified in the request.
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
     - parameter name: (path) The web plugin name. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func deleteWebPluginWithRequestBuilder(name: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<Void> {
        var localVariablePath = "/api/2.0/settings/webplugins/{name}"
        let namePreEscape = "\(APIHelper.mapValueToPathItem(name))"
        let namePostEscape = namePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{name}", with: namePostEscape, options: .literal, range: nil)
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
     Get a web plugin by name
     
     See also:
     REST API Reference for getWebPlugin Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-web-plugin/
     - parameter name: (path) The web plugin name. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: WebPluginWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getWebPlugin(name: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> WebPluginWrapper {
        return try await getWebPluginWithRequestBuilder(name: name, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get a web plugin by name
     
     See also:
     REST API Reference for getWebPlugin Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-web-plugin/
     
     - GET /api/2.0/settings/webplugins/{name}
     - Returns a web plugin by the name specified in the request.
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
     - parameter name: (path) The web plugin name. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<WebPluginWrapper> 
     */
    open class func getWebPluginWithRequestBuilder(name: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<WebPluginWrapper> {
        var localVariablePath = "/api/2.0/settings/webplugins/{name}"
        let namePreEscape = "\(APIHelper.mapValueToPathItem(name))"
        let namePostEscape = namePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{name}", with: namePostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<WebPluginWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get web plugins
     
     See also:
     REST API Reference for getWebPlugins Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-web-plugins/
     - parameter enabled: (query) The optional filter for the plugin enabled state. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: WebPluginArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getWebPlugins(enabled: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> WebPluginArrayWrapper {
        return try await getWebPluginsWithRequestBuilder(enabled: enabled, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get web plugins
     
     See also:
     REST API Reference for getWebPlugins Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-web-plugins/
     
     - GET /api/2.0/settings/webplugins
     - Returns the portal web plugins.
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
     - parameter enabled: (query) The optional filter for the plugin enabled state. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<WebPluginArrayWrapper> 
     */
    open class func getWebPluginsWithRequestBuilder(enabled: Bool? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<WebPluginArrayWrapper> {
        let localVariablePath = "/api/2.0/settings/webplugins"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "enabled": (wrappedValue: enabled?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<WebPluginArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Update a web plugin
     
     See also:
     REST API Reference for updateWebPlugin Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/update-web-plugin/
     - parameter name: (path) The web plugin name.      - parameter webPluginRequests: (body) The configuration settings for the web plugin instance. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func updateWebPlugin(name: String, webPluginRequests: WebPluginRequests, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await updateWebPluginWithRequestBuilder(name: name, webPluginRequests: webPluginRequests, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Update a web plugin
     
     See also:
     REST API Reference for updateWebPlugin Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/update-web-plugin/
     
     - PUT /api/2.0/settings/webplugins/{name}
     - Updates a web plugin with the parameters specified in the request.
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
     - parameter name: (path) The web plugin name. 
     - parameter webPluginRequests: (body) The configuration settings for the web plugin instance. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func updateWebPluginWithRequestBuilder(name: String, webPluginRequests: WebPluginRequests, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<Void> {
        var localVariablePath = "/api/2.0/settings/webplugins/{name}"
        let namePreEscape = "\(APIHelper.mapValueToPathItem(name))"
        let namePostEscape = namePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{name}", with: namePostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: webPluginRequests, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
