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
     REST API Reference for aiSettingsGet Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-settings-get/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiAiSettingsWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiSettingsGet(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiAiSettingsWrapper {
        return try await aiSettingsGetWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get AI settings
     
     See also:
     REST API Reference for aiSettingsGet Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-settings-get/
     
     - GET /api/2.0/ai/config
     - Reports the portal's combined AI configuration and readiness.
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiAiSettingsWrapper> 
     */
    open class func aiSettingsGetWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiAiSettingsWrapper> {
        let localVariablePath = "/api/2.0/ai/config"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiAiSettingsWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Get user AI settings
     
     See also:
     REST API Reference for aiSettingsGetUser Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-settings-get-user/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiAiUserSettingsWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiSettingsGetUser(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiAiUserSettingsWrapper {
        return try await aiSettingsGetUserWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get user AI settings
     
     See also:
     REST API Reference for aiSettingsGetUser Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-settings-get-user/
     
     - GET /api/2.0/ai/config/user
     - Returns the current user's AI settings.
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiAiUserSettingsWrapper> 
     */
    open class func aiSettingsGetUserWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiAiUserSettingsWrapper> {
        let localVariablePath = "/api/2.0/ai/config/user"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiAiUserSettingsWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
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
     - Returns the portal's vectorization settings.
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

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Update user AI settings
     
     See also:
     REST API Reference for aiSettingsSetUser Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-settings-set-user/
     - parameter requestBody: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiAiUserSettingsWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiSettingsSetUser(requestBody: [String: JSONValue], apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiAiUserSettingsWrapper {
        return try await aiSettingsSetUserWithRequestBuilder(requestBody: requestBody, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Update user AI settings
     
     See also:
     REST API Reference for aiSettingsSetUser Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-settings-set-user/
     
     - PUT /api/2.0/ai/config/user
     - Updates the current user's AI settings.
     - parameter requestBody: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiAiUserSettingsWrapper> 
     */
    open class func aiSettingsSetUserWithRequestBuilder(requestBody: [String: JSONValue], apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiAiUserSettingsWrapper> {
        let localVariablePath = "/api/2.0/ai/config/user"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: requestBody, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiAiUserSettingsWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Update vectorization settings
     
     See also:
     REST API Reference for aiSettingsSetVectorization Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-settings-set-vectorization/
     - parameter requestBody: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiVectorizationSettingsWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiSettingsSetVectorization(requestBody: [String: JSONValue?], apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiVectorizationSettingsWrapper {
        return try await aiSettingsSetVectorizationWithRequestBuilder(requestBody: requestBody, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Update vectorization settings
     
     See also:
     REST API Reference for aiSettingsSetVectorization Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-settings-set-vectorization/
     
     - PUT /api/2.0/ai/config/vectorization
     - Updates the portal's vectorization settings.
     - parameter requestBody: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiVectorizationSettingsWrapper> 
     */
    open class func aiSettingsSetVectorizationWithRequestBuilder(requestBody: [String: JSONValue?], apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiVectorizationSettingsWrapper> {
        let localVariablePath = "/api/2.0/ai/config/vectorization"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: requestBody, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiVectorizationSettingsWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }
}
