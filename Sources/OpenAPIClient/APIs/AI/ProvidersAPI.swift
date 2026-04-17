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
var fields: String?

    /**
     Add an AI provider
     
     See also:
     REST API Reference for addProvider Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/add-provider/
     - parameter createProviderRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiProviderWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func addProvider(createProviderRequestDto: CreateProviderRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiProviderWrapper {
        return try await addProviderWithRequestBuilder(createProviderRequestDto: createProviderRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Add an AI provider
     
     See also:
     REST API Reference for addProvider Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/add-provider/
     
     - POST /api/2.0/ai/providers
     - Registers a new AI provider for the current tenant by specifying its type, display title, API endpoint URL, and authentication key.  The provider becomes available for AI chat conversations after creation. This action is rate-limited.
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
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int)]
     - parameter createProviderRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiProviderWrapper> 
     */
    open class func addProviderWithRequestBuilder(createProviderRequestDto: CreateProviderRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiProviderWrapper> {
        let localVariablePath = "/api/2.0/ai/providers"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createProviderRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiProviderWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Delete AI providers
     
     See also:
     REST API Reference for deleteProviders Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-providers/
     - parameter removeProviderRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func deleteProviders(removeProviderRequestDto: RemoveProviderRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await deleteProvidersWithRequestBuilder(removeProviderRequestDto: removeProviderRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Delete AI providers
     
     See also:
     REST API Reference for deleteProviders Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-providers/
     
     - DELETE /api/2.0/ai/providers
     - Permanently deletes one or more AI providers by their identifiers.  All specified providers are removed from the current tenant. This action cannot be undone.
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
     - parameter removeProviderRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func deleteProvidersWithRequestBuilder(removeProviderRequestDto: RemoveProviderRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<Void> {
        let localVariablePath = "/api/2.0/ai/providers"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: removeProviderRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get available AI provider types
     
     See also:
     REST API Reference for getAvailableProviders Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-available-providers/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: ProviderSettingsArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getAvailableProviders(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ProviderSettingsArrayWrapper {
        return try await getAvailableProvidersWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get available AI provider types
     
     See also:
     REST API Reference for getAvailableProviders Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-available-providers/
     
     - GET /api/2.0/ai/providers/available
     - Returns the list of AI provider types that are available for configuration on the current instance.  Each entry includes the provider type identifier and the default API endpoint URL.
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
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int)]
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ProviderSettingsArrayWrapper> 
     */
    open class func getAvailableProvidersWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ProviderSettingsArrayWrapper> {
        let localVariablePath = "/api/2.0/ai/providers/available"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ProviderSettingsArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get the default AI provider
     
     See also:
     REST API Reference for getDefaultProvider Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-default-provider/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: DefaultProviderWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getDefaultProvider(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> DefaultProviderWrapper {
        return try await getDefaultProviderWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the default AI provider
     
     See also:
     REST API Reference for getDefaultProvider Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-default-provider/
     
     - GET /api/2.0/ai/providers/default
     - Returns the default AI provider and model configured for the current tenant.  Returns null if the tenant does not have any registered providers.
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
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int)]
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<DefaultProviderWrapper> 
     */
    open class func getDefaultProviderWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<DefaultProviderWrapper> {
        let localVariablePath = "/api/2.0/ai/providers/default"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<DefaultProviderWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get all models for a provider with their settings
     
     See also:
     REST API Reference for getProviderModels Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-provider-models/
     - parameter providerId: (path) The identifier of the AI provider. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ModelSettingsArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getProviderModels(providerId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ModelSettingsArrayWrapper {
        return try await getProviderModelsWithRequestBuilder(providerId: providerId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get all models for a provider with their settings
     
     See also:
     REST API Reference for getProviderModels Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-provider-models/
     
     - GET /api/2.0/ai/providers/{providerId}/models
     - Returns the full list of AI models available from a provider, including both recommended and additional models.  Each model includes its current settings: enabled state, display alias, and capabilities (vision, tool calling, thinking).  Recommended models are enabled by default and their alias and capabilities come from configuration.  Additional models are disabled by default and can be configured by the admin.
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
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int)]
     - parameter providerId: (path) The identifier of the AI provider. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ModelSettingsArrayWrapper> 
     */
    open class func getProviderModelsWithRequestBuilder(providerId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ModelSettingsArrayWrapper> {
        var localVariablePath = "/api/2.0/ai/providers/{providerId}/models"
        let providerIdPreEscape = "\(APIHelper.mapValueToPathItem(providerId))"
        let providerIdPostEscape = providerIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{providerId}", with: providerIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ModelSettingsArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get AI providers
     
     See also:
     REST API Reference for getProviders Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-providers/
     - parameter startIndex: (query) The number of items to skip before returning results (zero-based offset). Defaults to 0. (optional)     - parameter count: (query) The maximum number of items to return per page. Defaults to 100. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiProviderArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getProviders(startIndex: Int? = nil, count: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiProviderArrayWrapper {
        return try await getProvidersWithRequestBuilder(startIndex: startIndex, count: count, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get AI providers
     
     See also:
     REST API Reference for getProviders Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-providers/
     
     - GET /api/2.0/ai/providers
     - Returns a paginated list of AI providers configured for the current tenant.  Supports pagination via the startIndex and count query parameters. The total number of providers is included in the response metadata.
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
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int)]
     - parameter startIndex: (query) The number of items to skip before returning results (zero-based offset). Defaults to 0. (optional)
     - parameter count: (query) The maximum number of items to return per page. Defaults to 100. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiProviderArrayWrapper> 
     */
    open class func getProvidersWithRequestBuilder(startIndex: Int? = nil, count: Int? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiProviderArrayWrapper> {
        let localVariablePath = "/api/2.0/ai/providers"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "startIndex": (wrappedValue: startIndex?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "count": (wrappedValue: count?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]

        if let fields = self.fields {
            localVariableNillableHeaders["fields"] = fields
            self.fields = nil
        }

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiProviderArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Preview models for a new AI provider
     
     See also:
     REST API Reference for previewProviderModels Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/preview-provider-models/
     - parameter previewProviderModelsRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ModelSettingsArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func previewProviderModels(previewProviderModelsRequestDto: PreviewProviderModelsRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ModelSettingsArrayWrapper {
        return try await previewProviderModelsWithRequestBuilder(previewProviderModelsRequestDto: previewProviderModelsRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Preview models for a new AI provider
     
     See also:
     REST API Reference for previewProviderModels Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/preview-provider-models/
     
     - POST /api/2.0/ai/providers/models/preview
     - Connects to the specified AI provider using the provided credentials and returns the available models  with their default settings. This is used to preview models before saving the provider.  Recommended models are enabled by default with configuration-defined settings.  Additional models are disabled by default with empty capabilities.
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
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int)]
     - parameter previewProviderModelsRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ModelSettingsArrayWrapper> 
     */
    open class func previewProviderModelsWithRequestBuilder(previewProviderModelsRequestDto: PreviewProviderModelsRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ModelSettingsArrayWrapper> {
        let localVariablePath = "/api/2.0/ai/providers/models/preview"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: previewProviderModelsRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ModelSettingsArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Set the default AI provider
     
     See also:
     REST API Reference for setDefaultProvider Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-default-provider/
     - parameter setDefaultProviderRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: DefaultProviderWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func setDefaultProvider(setDefaultProviderRequestDto: SetDefaultProviderRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> DefaultProviderWrapper {
        return try await setDefaultProviderWithRequestBuilder(setDefaultProviderRequestDto: setDefaultProviderRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Set the default AI provider
     
     See also:
     REST API Reference for setDefaultProvider Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-default-provider/
     
     - PUT /api/2.0/ai/providers/default
     - Sets the default AI provider and model for the current tenant.  The specified provider and model will be used as the default for all new AI chat sessions within the tenant.
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
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int)]
     - parameter setDefaultProviderRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<DefaultProviderWrapper> 
     */
    open class func setDefaultProviderWithRequestBuilder(setDefaultProviderRequestDto: SetDefaultProviderRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<DefaultProviderWrapper> {
        let localVariablePath = "/api/2.0/ai/providers/default"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: setDefaultProviderRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<DefaultProviderWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Update an AI provider
     
     See also:
     REST API Reference for updateProvider Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/update-provider/
     - parameter id: (path) The identifier of the AI provider to update.      - parameter updateProviderBody: (body) The AI provider configuration parameters to update. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiProviderWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func updateProvider(id: Int, updateProviderBody: UpdateProviderBody, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiProviderWrapper {
        return try await updateProviderWithRequestBuilder(id: id, updateProviderBody: updateProviderBody, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Update an AI provider
     
     See also:
     REST API Reference for updateProvider Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/update-provider/
     
     - PUT /api/2.0/ai/providers/{id}
     - Updates the configuration of an existing AI provider, including its display title, API endpoint URL, and authentication key.  Only the fields provided in the request body will be updated. This action is rate-limited.
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
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int)]
     - parameter id: (path) The identifier of the AI provider to update. 
     - parameter updateProviderBody: (body) The AI provider configuration parameters to update. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiProviderWrapper> 
     */
    open class func updateProviderWithRequestBuilder(id: Int, updateProviderBody: UpdateProviderBody, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiProviderWrapper> {
        var localVariablePath = "/api/2.0/ai/providers/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateProviderBody, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiProviderWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
extension AIProvidersAPIApi {
    @discardableResult
    public func withFields(_ fields: String) -> AIProvidersAPIApi {
        self.fields = fields
        return self
    }
}
