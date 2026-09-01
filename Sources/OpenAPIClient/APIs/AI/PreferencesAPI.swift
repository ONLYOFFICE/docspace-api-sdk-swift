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
     Clear deep mode
     
     See also:
     REST API Reference for aiPreferencesClearDeepMode Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-preferences-clear-deep-mode/
     - parameter body: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiSuccessResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiPreferencesClearDeepMode(body: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiSuccessResponse {
        return try await aiPreferencesClearDeepModeWithRequestBuilder(body: body, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Clear deep mode
     
     See also:
     REST API Reference for aiPreferencesClearDeepMode Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-preferences-clear-deep-mode/
     
     - DELETE /api/2.0/ai/preferences/clear-deep-mode
     - Drops the persisted deep-mode toggle of the scope, so later reads fall back to the configured default.
     - parameter body: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiSuccessResponse> 
     */
    open class func aiPreferencesClearDeepModeWithRequestBuilder(body: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiSuccessResponse> {
        let localVariablePath = "/api/2.0/ai/preferences/clear-deep-mode"
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
     Get deep mode
     
     See also:
     REST API Reference for aiPreferencesGetDeepMode Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-preferences-get-deep-mode/
     - parameter entityId: (query) The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Bool
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiPreferencesGetDeepMode(entityId: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> Bool {
        return try await aiPreferencesGetDeepModeWithRequestBuilder(entityId: entityId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get deep mode
     
     See also:
     REST API Reference for aiPreferencesGetDeepMode Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-preferences-get-deep-mode/
     
     - GET /api/2.0/ai/preferences/get-deep-mode
     - Returns the deep-mode toggle of the scope, falling back to the configured default when nothing has been persisted.
     - parameter entityId: (query) The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Bool> 
     */
    open class func aiPreferencesGetDeepModeWithRequestBuilder(entityId: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<Bool> {
        let localVariablePath = "/api/2.0/ai/preferences/get-deep-mode"
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
     Is deep mode set
     
     See also:
     REST API Reference for aiPreferencesIsDeepModeSet Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-preferences-is-deep-mode-set/
     - parameter entityId: (query) The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Bool
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiPreferencesIsDeepModeSet(entityId: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> Bool {
        return try await aiPreferencesIsDeepModeSetWithRequestBuilder(entityId: entityId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Is deep mode set
     
     See also:
     REST API Reference for aiPreferencesIsDeepModeSet Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-preferences-is-deep-mode-set/
     
     - GET /api/2.0/ai/preferences/is-deep-mode-set
     - Tells whether the scope has an explicitly persisted deep-mode value, whichever way that value is set.
     - parameter entityId: (query) The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Bool> 
     */
    open class func aiPreferencesIsDeepModeSetWithRequestBuilder(entityId: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<Bool> {
        let localVariablePath = "/api/2.0/ai/preferences/is-deep-mode-set"
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
     Set deep mode
     
     See also:
     REST API Reference for aiPreferencesSetDeepMode Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-preferences-set-deep-mode/
     - parameter aiPreferencesSetDeepModeRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiSuccessResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiPreferencesSetDeepMode(aiPreferencesSetDeepModeRequest: AiPreferencesSetDeepModeRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiSuccessResponse {
        return try await aiPreferencesSetDeepModeWithRequestBuilder(aiPreferencesSetDeepModeRequest: aiPreferencesSetDeepModeRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Set deep mode
     
     See also:
     REST API Reference for aiPreferencesSetDeepMode Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-preferences-set-deep-mode/
     
     - PUT /api/2.0/ai/preferences/set-deep-mode
     - Persists the deep-mode toggle of the scope. Idempotent - there is no need to check whether a value already exists.
     - parameter aiPreferencesSetDeepModeRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiSuccessResponse> 
     */
    open class func aiPreferencesSetDeepModeWithRequestBuilder(aiPreferencesSetDeepModeRequest: AiPreferencesSetDeepModeRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiSuccessResponse> {
        let localVariablePath = "/api/2.0/ai/preferences/set-deep-mode"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: aiPreferencesSetDeepModeRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiSuccessResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }
}
