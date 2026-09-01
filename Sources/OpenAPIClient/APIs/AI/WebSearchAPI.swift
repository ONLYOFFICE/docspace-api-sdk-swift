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
     Clear
     
     See also:
     REST API Reference for aiWebSearchClear Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-web-search-clear/
     - parameter body: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiSuccessResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiWebSearchClear(body: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiSuccessResponse {
        return try await aiWebSearchClearWithRequestBuilder(body: body, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Clear
     
     See also:
     REST API Reference for aiWebSearchClear Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-web-search-clear/
     
     - DELETE /api/2.0/ai/web-search/clear
     - Removes the web-search configuration of the scope. Does nothing when web search was not configured there.
     - parameter body: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiSuccessResponse> 
     */
    open class func aiWebSearchClearWithRequestBuilder(body: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiSuccessResponse> {
        let localVariablePath = "/api/2.0/ai/web-search/clear"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiSuccessResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Configure
     
     See also:
     REST API Reference for aiWebSearchConfigure Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-web-search-configure/
     - parameter aiWebSearchConfigureRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiWebSearchMutationResult
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiWebSearchConfigure(aiWebSearchConfigureRequest: AiWebSearchConfigureRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiWebSearchMutationResult {
        return try await aiWebSearchConfigureWithRequestBuilder(aiWebSearchConfigureRequest: aiWebSearchConfigureRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Configure
     
     See also:
     REST API Reference for aiWebSearchConfigure Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-web-search-configure/
     
     - PUT /api/2.0/ai/web-search/configure
     - Validates a web-search configuration against the live provider and stores it only when the provider answers, replacing the previous one in a single write.
     - parameter aiWebSearchConfigureRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiWebSearchMutationResult> 
     */
    open class func aiWebSearchConfigureWithRequestBuilder(aiWebSearchConfigureRequest: AiWebSearchConfigureRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiWebSearchMutationResult> {
        let localVariablePath = "/api/2.0/ai/web-search/configure"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: aiWebSearchConfigureRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiWebSearchMutationResult>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Get active config
     
     See also:
     REST API Reference for aiWebSearchGetActiveConfig Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-web-search-get-active-config/
     - parameter entityId: (query) The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiWebSearchConfig
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiWebSearchGetActiveConfig(entityId: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiWebSearchConfig {
        return try await aiWebSearchGetActiveConfigWithRequestBuilder(entityId: entityId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get active config
     
     See also:
     REST API Reference for aiWebSearchGetActiveConfig Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-web-search-get-active-config/
     
     - GET /api/2.0/ai/web-search/get-active-config
     - Returns the web-search configuration active in the scope, or an empty result when web search is not configured.
     - parameter entityId: (query) The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiWebSearchConfig> 
     */
    open class func aiWebSearchGetActiveConfigWithRequestBuilder(entityId: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiWebSearchConfig> {
        let localVariablePath = "/api/2.0/ai/web-search/get-active-config"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "entityId": (wrappedValue: entityId?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiWebSearchConfig>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Is configured
     
     See also:
     REST API Reference for aiWebSearchIsConfigured Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-web-search-is-configured/
     - parameter entityId: (query) The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Bool
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiWebSearchIsConfigured(entityId: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> Bool {
        return try await aiWebSearchIsConfiguredWithRequestBuilder(entityId: entityId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Is configured
     
     See also:
     REST API Reference for aiWebSearchIsConfigured Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-web-search-is-configured/
     
     - GET /api/2.0/ai/web-search/is-configured
     - Tells whether web search is configured in the scope.
     - parameter entityId: (query) The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Bool> 
     */
    open class func aiWebSearchIsConfiguredWithRequestBuilder(entityId: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<Bool> {
        let localVariablePath = "/api/2.0/ai/web-search/is-configured"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "entityId": (wrappedValue: entityId?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Bool>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Web page contents proxied to the portal's active web-search provider
     
     See also:
     REST API Reference for aiWebSearchPassthroughContents Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-web-search-passthrough-contents/
     - parameter requestBody: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiSuccessResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiWebSearchPassthroughContents(requestBody: [String: JSONValue], apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiSuccessResponse {
        return try await aiWebSearchPassthroughContentsWithRequestBuilder(requestBody: requestBody, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Web page contents proxied to the portal's active web-search provider
     
     See also:
     REST API Reference for aiWebSearchPassthroughContents Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-web-search-passthrough-contents/
     
     - POST /api/2.0/ai/websearch/v1/contents
     - Fetches web page contents on behalf of the document editor's AI plugin, against the portal's active web-search provider, the same way as the search passthrough.
     - parameter requestBody: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiSuccessResponse> 
     */
    open class func aiWebSearchPassthroughContentsWithRequestBuilder(requestBody: [String: JSONValue], apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiSuccessResponse> {
        let localVariablePath = "/api/2.0/ai/websearch/v1/contents"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: requestBody, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiSuccessResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Web search proxied to the portal's active web-search provider
     
     See also:
     REST API Reference for aiWebSearchPassthroughSearch Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-web-search-passthrough-search/
     - parameter requestBody: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiSuccessResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiWebSearchPassthroughSearch(requestBody: [String: JSONValue], apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiSuccessResponse {
        return try await aiWebSearchPassthroughSearchWithRequestBuilder(requestBody: requestBody, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Web search proxied to the portal's active web-search provider
     
     See also:
     REST API Reference for aiWebSearchPassthroughSearch Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-web-search-passthrough-search/
     
     - POST /api/2.0/ai/websearch/v1/search
     - Runs a web search on behalf of the document editor's AI plugin. The plugin only holds a placeholder configuration; the portal's active provider and its key are resolved here and never reach the browser.
     - parameter requestBody: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiSuccessResponse> 
     */
    open class func aiWebSearchPassthroughSearchWithRequestBuilder(requestBody: [String: JSONValue], apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiSuccessResponse> {
        let localVariablePath = "/api/2.0/ai/websearch/v1/search"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: requestBody, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiSuccessResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Set active config
     
     See also:
     REST API Reference for aiWebSearchSetActiveConfig Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-web-search-set-active-config/
     - parameter aiWebSearchConfigureRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiSuccessResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiWebSearchSetActiveConfig(aiWebSearchConfigureRequest: AiWebSearchConfigureRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiSuccessResponse {
        return try await aiWebSearchSetActiveConfigWithRequestBuilder(aiWebSearchConfigureRequest: aiWebSearchConfigureRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Set active config
     
     See also:
     REST API Reference for aiWebSearchSetActiveConfig Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-web-search-set-active-config/
     
     - PUT /api/2.0/ai/web-search/set-active-config
     - Stores a web-search configuration without contacting the provider first, for forms that validate locally.
     - parameter aiWebSearchConfigureRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiSuccessResponse> 
     */
    open class func aiWebSearchSetActiveConfigWithRequestBuilder(aiWebSearchConfigureRequest: AiWebSearchConfigureRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiSuccessResponse> {
        let localVariablePath = "/api/2.0/ai/web-search/set-active-config"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: aiWebSearchConfigureRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiSuccessResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Test connection
     
     See also:
     REST API Reference for aiWebSearchTestConnection Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-web-search-test-connection/
     - parameter aiWebSearchConfig: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiProfilesTestConnection200Response
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiWebSearchTestConnection(aiWebSearchConfig: AiWebSearchConfig, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiProfilesTestConnection200Response {
        return try await aiWebSearchTestConnectionWithRequestBuilder(aiWebSearchConfig: aiWebSearchConfig, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Test connection
     
     See also:
     REST API Reference for aiWebSearchTestConnection Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-web-search-test-connection/
     
     - POST /api/2.0/ai/web-search/test-connection
     - Checks a web-search configuration against the live provider without storing it - for a Test button that must not commit on success.
     - parameter aiWebSearchConfig: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiProfilesTestConnection200Response> 
     */
    open class func aiWebSearchTestConnectionWithRequestBuilder(aiWebSearchConfig: AiWebSearchConfig, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiProfilesTestConnection200Response> {
        let localVariablePath = "/api/2.0/ai/web-search/test-connection"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: aiWebSearchConfig, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiProfilesTestConnection200Response>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }
}
