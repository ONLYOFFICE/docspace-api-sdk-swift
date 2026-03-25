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
     Get AI settings
     
     See also:
     REST API Reference for getAiSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-ai-settings/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiSettingsWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getAiSettings(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiSettingsWrapper {
        return try await getAiSettingsWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get AI settings
     
     See also:
     REST API Reference for getAiSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-ai-settings/
     
     - GET /api/2.0/ai/config
     - Retrieves the combined AI configuration for the current portal, including the status of web search,  vectorization, and AI readiness, along with tool names and the portal MCP server identifier.
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
     - returns: RequestBuilder<AiSettingsWrapper> 
     */
    open class func getAiSettingsWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiSettingsWrapper> {
        let localVariablePath = "/api/2.0/ai/config"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiSettingsWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get vectorization settings
     
     See also:
     REST API Reference for getVectorizationSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-vectorization-settings/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: VectorizationSettingsWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getVectorizationSettings(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> VectorizationSettingsWrapper {
        return try await getVectorizationSettingsWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get vectorization settings
     
     See also:
     REST API Reference for getVectorizationSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-vectorization-settings/
     
     - GET /api/2.0/ai/config/vectorization
     - Retrieves the current embedding provider settings used for document vectorization,  including the configured provider type and whether the API key needs to be reset.
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
     - returns: RequestBuilder<VectorizationSettingsWrapper> 
     */
    open class func getVectorizationSettingsWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<VectorizationSettingsWrapper> {
        let localVariablePath = "/api/2.0/ai/config/vectorization"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<VectorizationSettingsWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get web search settings
     
     See also:
     REST API Reference for getWebSearchSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-web-search-settings/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: WebSearchSettingsWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getWebSearchSettings(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> WebSearchSettingsWrapper {
        return try await getWebSearchSettingsWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get web search settings
     
     See also:
     REST API Reference for getWebSearchSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-web-search-settings/
     
     - GET /api/2.0/ai/config/web-search
     - Retrieves the current web search integration settings for AI chat sessions,  including whether web search is enabled, the configured search engine type, and whether the API key needs to be reset.
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
     - returns: RequestBuilder<WebSearchSettingsWrapper> 
     */
    open class func getWebSearchSettingsWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<WebSearchSettingsWrapper> {
        let localVariablePath = "/api/2.0/ai/config/web-search"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<WebSearchSettingsWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Update vectorization settings
     
     See also:
     REST API Reference for setVectorizationSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-vectorization-settings/
     - parameter setEmbeddingConfigRequestBody: (body) The embedding provider configuration parameters. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: VectorizationSettingsWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func setVectorizationSettings(setEmbeddingConfigRequestBody: SetEmbeddingConfigRequestBody, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> VectorizationSettingsWrapper {
        return try await setVectorizationSettingsWithRequestBuilder(setEmbeddingConfigRequestBody: setEmbeddingConfigRequestBody, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Update vectorization settings
     
     See also:
     REST API Reference for setVectorizationSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-vectorization-settings/
     
     - PUT /api/2.0/ai/config/vectorization
     - Configures the embedding provider used for document vectorization at the portal level.  Vectorization enables semantic search and knowledge retrieval capabilities in AI chat sessions.  Allows selecting the embedding provider type and providing the API key for the chosen provider.  Only portal administrators can modify these settings.
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
     - parameter setEmbeddingConfigRequestBody: (body) The embedding provider configuration parameters. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<VectorizationSettingsWrapper> 
     */
    open class func setVectorizationSettingsWithRequestBuilder(setEmbeddingConfigRequestBody: SetEmbeddingConfigRequestBody, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<VectorizationSettingsWrapper> {
        let localVariablePath = "/api/2.0/ai/config/vectorization"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: setEmbeddingConfigRequestBody, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<VectorizationSettingsWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Update web search settings
     
     See also:
     REST API Reference for setWebSearchSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-web-search-settings/
     - parameter setWebSearchSettingsRequestBody: (body) The web search configuration parameters. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: WebSearchSettingsWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func setWebSearchSettings(setWebSearchSettingsRequestBody: SetWebSearchSettingsRequestBody, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> WebSearchSettingsWrapper {
        return try await setWebSearchSettingsWithRequestBuilder(setWebSearchSettingsRequestBody: setWebSearchSettingsRequestBody, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Update web search settings
     
     See also:
     REST API Reference for setWebSearchSettings Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-web-search-settings/
     
     - PUT /api/2.0/ai/config/web-search
     - Configures the web search integration for AI chat sessions at the portal level.  Allows enabling or disabling web search, selecting the search engine type, and providing the API key for the chosen engine.  Only portal administrators can modify these settings.
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
     - parameter setWebSearchSettingsRequestBody: (body) The web search configuration parameters. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<WebSearchSettingsWrapper> 
     */
    open class func setWebSearchSettingsWithRequestBuilder(setWebSearchSettingsRequestBody: SetWebSearchSettingsRequestBody, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<WebSearchSettingsWrapper> {
        let localVariablePath = "/api/2.0/ai/config/web-search"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: setWebSearchSettingsRequestBody, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<WebSearchSettingsWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
