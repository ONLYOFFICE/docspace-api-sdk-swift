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
     - parameter body: (body) The ID of the room whose preference is cleared, as a bare JSON string. Send an empty body to clear the portal-wide preference. 
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
     - Removes the stored extended-thinking setting of a scope (the depth and, with it, the deep-mode toggle), after which reads fall back to the configured default rather than to false. `entityId` picks a room and omitting it clears the portal-wide preference. Clearing a scope that has no stored value is not an error. This differs from storing false, which is an explicit choice a later read reports as set.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter body: (body) The ID of the room whose preference is cleared, as a bare JSON string. Send an empty body to clear the portal-wide preference. 
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

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
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
     - Returns the deep-mode toggle of a scope, as a bare boolean: whether the stored extended-thinking depth is above `off`. `entityId` picks a room and omitting it reads the portal-wide preference. A scope that has never had a value stored falls back to the configured default, so the answer never distinguishes off from unset - ask `GET api/2.0/ai/preferences/is-deep-mode-set` for that. This is a read-only operation.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
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

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get reasoning level
     
     See also:
     REST API Reference for aiPreferencesGetReasoningLevel Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-preferences-get-reasoning-level/
     - parameter entityId: (query) The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiAiReasoningLevel
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiPreferencesGetReasoningLevel(entityId: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiAiReasoningLevel {
        return try await aiPreferencesGetReasoningLevelWithRequestBuilder(entityId: entityId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get reasoning level
     
     See also:
     REST API Reference for aiPreferencesGetReasoningLevel Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-preferences-get-reasoning-level/
     
     - GET /api/2.0/ai/preferences/get-reasoning-level
     - Returns the effective extended-thinking depth of the scope: `off` while deep mode is off, otherwise the persisted depth (`low`, `medium`, `high`, `max`), falling back to the default depth (`medium`) when none has been stored. `entityId` picks a room and omitting it reads the portal-wide preference. Providers clamp the depth to what the model accepts.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter entityId: (query) The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiAiReasoningLevel> 
     */
    open class func aiPreferencesGetReasoningLevelWithRequestBuilder(entityId: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiAiReasoningLevel> {
        let localVariablePath = "/api/2.0/ai/preferences/get-reasoning-level"
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

        let localVariableRequestBuilder: RequestBuilder<AiAiReasoningLevel>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
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
     - Tells whether a scope has an explicitly persisted extended-thinking setting of its own, as opposed to inheriting the configured default. `entityId` picks a room and omitting it asks about the portal-wide preference. A true answer means a value was stored, whether that value is on or off - read the value itself with `GET api/2.0/ai/preferences/get-deep-mode`. This is the check a settings screen uses to show an explicit override rather than an inherited state.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
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

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
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
     - Stores the deep-mode toggle of a scope. `false` stores the `off` depth; `true` keeps the depth already stored and falls back to the default depth (`medium`) when none is. `value` has to be a real boolean: a string, a number or an absent value is rejected rather than coerced, so the string false cannot silently switch the setting on and an empty request cannot silently switch it off. `entityId` picks a room and omitting it writes the portal-wide preference. It is idempotent, so there is no need to read the current value first.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
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

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Set reasoning level
     
     See also:
     REST API Reference for aiPreferencesSetReasoningLevel Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-preferences-set-reasoning-level/
     - parameter aiPreferencesSetReasoningLevelRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiSuccessResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiPreferencesSetReasoningLevel(aiPreferencesSetReasoningLevelRequest: AiPreferencesSetReasoningLevelRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiSuccessResponse {
        return try await aiPreferencesSetReasoningLevelWithRequestBuilder(aiPreferencesSetReasoningLevelRequest: aiPreferencesSetReasoningLevelRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Set reasoning level
     
     See also:
     REST API Reference for aiPreferencesSetReasoningLevel Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-preferences-set-reasoning-level/
     
     - PUT /api/2.0/ai/preferences/set-reasoning-level
     - Persists the extended-thinking depth of the scope as its single stored value: a depth turns deep mode on at that depth, `off` turns it off and replaces the stored depth (a later deep-mode `true` without a depth lands on `medium`). `entityId` picks a room and omitting it writes the portal-wide preference. Idempotent.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter aiPreferencesSetReasoningLevelRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiSuccessResponse> 
     */
    open class func aiPreferencesSetReasoningLevelWithRequestBuilder(aiPreferencesSetReasoningLevelRequest: AiPreferencesSetReasoningLevelRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiSuccessResponse> {
        let localVariablePath = "/api/2.0/ai/preferences/set-reasoning-level"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: aiPreferencesSetReasoningLevelRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiSuccessResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
