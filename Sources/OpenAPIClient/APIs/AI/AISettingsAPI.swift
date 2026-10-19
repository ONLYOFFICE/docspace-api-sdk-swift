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

open class AISettingsAPIApi {

    /**
     Get AI settings
     
     See also:
     REST API Reference for aiSettingsGet Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-settings-get/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiSettingsWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiSettingsGet(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiSettingsWrapper {
        return try await aiSettingsGetWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get AI settings
     
     See also:
     REST API Reference for aiSettingsGet Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-settings-get/
     
     - GET /api/2.0/ai/config
     - Reports the portal's AI configuration and whether AI is usable at all, which is the first call a client makes before offering any AI feature. It takes no parameters and is proxied unchanged to the DocSpace AI service, so the answer is that service's settings payload. Among other things it says whether the portal runs on the central AI gateway, which decides whether provider profiles can be edited here at all. This is a read-only operation.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiSettingsWrapper> 
     */
    open class func aiSettingsGetWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiSettingsWrapper> {
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
     Get the tool permission mode
     
     See also:
     REST API Reference for aiSettingsGetToolMode Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-settings-get-tool-mode/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiSuccessResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiSettingsGetToolMode(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiSuccessResponse {
        return try await aiSettingsGetToolModeWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the tool permission mode
     
     See also:
     REST API Reference for aiSettingsGetToolMode Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-settings-get-tool-mode/
     
     - GET /api/2.0/ai/config/tool-mode
     - Returns the calling user's tool permission mode as the DocSpace AI service spells it - `{ mode }` with the service's `ToolPermissionMode` enum (`Ask`, `Auto`, `Allow`), proxied unchanged. The chat reads the same value in its own spelling through `GET api/2.0/ai/preferences/get-tool-permission-mode`. This is a read-only operation.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiSuccessResponse> 
     */
    open class func aiSettingsGetToolModeWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiSuccessResponse> {
        let localVariablePath = "/api/2.0/ai/config/tool-mode"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiSuccessResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get user AI settings
     
     See also:
     REST API Reference for aiSettingsGetUser Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-settings-get-user/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiUserSettingsWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiSettingsGetUser(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiUserSettingsWrapper {
        return try await aiSettingsGetUserWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get user AI settings
     
     See also:
     REST API Reference for aiSettingsGetUser Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-settings-get-user/
     
     - GET /api/2.0/ai/config/user
     - Returns the AI settings of the calling user, as opposed to the portal-wide ones. It takes no parameters - the user is the authenticated caller, and there is no way to read somebody else's settings - and is proxied unchanged to the DocSpace AI service. Use `GET api/2.0/ai/config` for the portal-wide configuration. This is a read-only operation.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiUserSettingsWrapper> 
     */
    open class func aiSettingsGetUserWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiUserSettingsWrapper> {
        let localVariablePath = "/api/2.0/ai/config/user"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiUserSettingsWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get vectorization settings
     
     See also:
     REST API Reference for aiSettingsGetVectorization Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-settings-get-vectorization/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiVectorizationSettingsWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiSettingsGetVectorization(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiVectorizationSettingsWrapper {
        return try await aiSettingsGetVectorizationWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get vectorization settings
     
     See also:
     REST API Reference for aiSettingsGetVectorization Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-settings-get-vectorization/
     
     - GET /api/2.0/ai/config/vectorization
     - Returns the portal's vectorization settings - the embedding provider and the options used when portal content is indexed for retrieval. It takes no parameters and is proxied unchanged to the DocSpace AI service. Vectorization is a portal-wide setting, so there is no room-scoped form of it. Change it with `PUT api/2.0/ai/config/vectorization`.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiVectorizationSettingsWrapper> 
     */
    open class func aiSettingsGetVectorizationWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiVectorizationSettingsWrapper> {
        let localVariablePath = "/api/2.0/ai/config/vectorization"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiVectorizationSettingsWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Set the tool permission mode
     
     See also:
     REST API Reference for aiSettingsSetToolMode Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-settings-set-tool-mode/
     - parameter aiSettingsSetToolModeRequest: (body) `{ mode }` with the AI service's `ToolPermissionMode` enum, proxied unchanged; the service rejects anything outside the enum. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiSuccessResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiSettingsSetToolMode(aiSettingsSetToolModeRequest: [String: JSONValue?], apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiSuccessResponse {
        return try await aiSettingsSetToolModeWithRequestBuilder(aiSettingsSetToolModeRequest: aiSettingsSetToolModeRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Set the tool permission mode
     
     See also:
     REST API Reference for aiSettingsSetToolMode Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-settings-set-tool-mode/
     
     - PUT /api/2.0/ai/config/tool-mode
     - Stores the calling user's tool permission mode and returns the stored result. The body (`{ mode }`) is proxied unchanged to the DocSpace AI service, which rejects a value outside its `ToolPermissionMode` enum. The mode applies to every chat of the user in the portal.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter aiSettingsSetToolModeRequest: (body) `{ mode }` with the AI service's `ToolPermissionMode` enum, proxied unchanged; the service rejects anything outside the enum. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiSuccessResponse> 
     */
    open class func aiSettingsSetToolModeWithRequestBuilder(aiSettingsSetToolModeRequest: [String: JSONValue?], apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiSuccessResponse> {
        let localVariablePath = "/api/2.0/ai/config/tool-mode"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: aiSettingsSetToolModeRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiSuccessResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Update user AI settings
     
     See also:
     REST API Reference for aiSettingsSetUser Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-settings-set-user/
     - parameter aiSettingsSetUserRequest: (body) The user's AI settings: `chatRecommendedModelVisible` as a boolean, required. Read the current one with `GET api/2.0/ai/config/user` and send it back changed. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiUserSettingsWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiSettingsSetUser(aiSettingsSetUserRequest: [String: JSONValue?], apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiUserSettingsWrapper {
        return try await aiSettingsSetUserWithRequestBuilder(aiSettingsSetUserRequest: aiSettingsSetUserRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Update user AI settings
     
     See also:
     REST API Reference for aiSettingsSetUser Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-settings-set-user/
     
     - PUT /api/2.0/ai/config/user
     - Replaces the AI settings of the calling user and returns the stored result. `chatRecommendedModelVisible` is required and has to be a real boolean - a body the JSON parser cannot read, such as one sent as text/plain, used to arrive empty and answer 200 having stored nothing. The body is then proxied to the DocSpace AI service, which validates the rest, so a rejected value comes back with that service's verdict. Only the caller's own settings can be written. Portal-wide configuration is not touched by this operation.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter aiSettingsSetUserRequest: (body) The user's AI settings: `chatRecommendedModelVisible` as a boolean, required. Read the current one with `GET api/2.0/ai/config/user` and send it back changed. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiUserSettingsWrapper> 
     */
    open class func aiSettingsSetUserWithRequestBuilder(aiSettingsSetUserRequest: [String: JSONValue?], apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiUserSettingsWrapper> {
        let localVariablePath = "/api/2.0/ai/config/user"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: aiSettingsSetUserRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiUserSettingsWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Update vectorization settings
     
     See also:
     REST API Reference for aiSettingsSetVectorization Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-settings-set-vectorization/
     - parameter aiSettingsSetVectorizationRequest: (body) The portal's vectorization settings, proxied unchanged to the DocSpace AI service, which owns and validates the shape. Read the current one with `GET api/2.0/ai/config/vectorization` and send it back changed. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiVectorizationSettingsWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiSettingsSetVectorization(aiSettingsSetVectorizationRequest: [String: JSONValue?], apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiVectorizationSettingsWrapper {
        return try await aiSettingsSetVectorizationWithRequestBuilder(aiSettingsSetVectorizationRequest: aiSettingsSetVectorizationRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Update vectorization settings
     
     See also:
     REST API Reference for aiSettingsSetVectorization Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-settings-set-vectorization/
     
     - PUT /api/2.0/ai/config/vectorization
     - Replaces the portal's vectorization settings and returns the stored result. The body is proxied unchanged to the DocSpace AI service, which validates it, so a rejected value is reported with that service's own verdict rather than being checked here. Changing the embedding provider does not re-index anything already indexed - start that separately with `POST api/2.0/ai/vectorization/tasks`. This is a portal-wide setting and requires the permissions the AI service demands for it.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter aiSettingsSetVectorizationRequest: (body) The portal's vectorization settings, proxied unchanged to the DocSpace AI service, which owns and validates the shape. Read the current one with `GET api/2.0/ai/config/vectorization` and send it back changed. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiVectorizationSettingsWrapper> 
     */
    open class func aiSettingsSetVectorizationWithRequestBuilder(aiSettingsSetVectorizationRequest: [String: JSONValue?], apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiVectorizationSettingsWrapper> {
        let localVariablePath = "/api/2.0/ai/config/vectorization"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: aiSettingsSetVectorizationRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiVectorizationSettingsWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
