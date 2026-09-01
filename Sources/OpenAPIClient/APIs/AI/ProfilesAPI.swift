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
     Create
     
     See also:
     REST API Reference for aiProfilesCreate Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-create/
     - parameter aiCreateProfileInput: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiProfileMutationResult
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiProfilesCreate(aiCreateProfileInput: AiCreateProfileInput, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiProfileMutationResult {
        return try await aiProfilesCreateWithRequestBuilder(aiCreateProfileInput: aiCreateProfileInput, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Create
     
     See also:
     REST API Reference for aiProfilesCreate Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-create/
     
     - POST /api/2.0/ai/profiles/create
     - Creates an AI provider profile. The name must be unique and the credentials are validated against the provider before the profile is stored; the portal's first profile also takes the `Default` assignment slot.
     - parameter aiCreateProfileInput: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiProfileMutationResult> 
     */
    open class func aiProfilesCreateWithRequestBuilder(aiCreateProfileInput: AiCreateProfileInput, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiProfileMutationResult> {
        let localVariablePath = "/api/2.0/ai/profiles/create"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: aiCreateProfileInput, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiProfileMutationResult>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Delete
     
     See also:
     REST API Reference for aiProfilesDelete Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-delete/
     - parameter body: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiSuccessResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiProfilesDelete(body: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiSuccessResponse {
        return try await aiProfilesDeleteWithRequestBuilder(body: body, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Delete
     
     See also:
     REST API Reference for aiProfilesDelete Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-delete/
     
     - DELETE /api/2.0/ai/profiles/delete
     - Deletes an AI provider profile and cleans up the assignments pointing at it - the `Default` slot moves to the first remaining profile, the other slots are unbound.
     - parameter body: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiSuccessResponse> 
     */
    open class func aiProfilesDeleteWithRequestBuilder(body: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiSuccessResponse> {
        let localVariablePath = "/api/2.0/ai/profiles/delete"
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
     Get by id
     
     See also:
     REST API Reference for aiProfilesGetById Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-get-by-id/
     - parameter id: (query) The AI provider profile identifier. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiProfilesGetById200Response
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiProfilesGetById(id: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiProfilesGetById200Response {
        return try await aiProfilesGetByIdWithRequestBuilder(id: id, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get by id
     
     See also:
     REST API Reference for aiProfilesGetById Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-get-by-id/
     
     - GET /api/2.0/ai/profiles/get-by-id
     - Returns one AI provider profile, or an empty result when the identifier is unknown.
     - parameter id: (query) The AI provider profile identifier. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiProfilesGetById200Response> 
     */
    open class func aiProfilesGetByIdWithRequestBuilder(id: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiProfilesGetById200Response> {
        let localVariablePath = "/api/2.0/ai/profiles/get-by-id"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "id": (wrappedValue: id.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiProfilesGetById200Response>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     List
     
     See also:
     REST API Reference for aiProfilesList Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-list/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: [AiProfile]
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiProfilesList(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> [AiProfile] {
        return try await aiProfilesListWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     List
     
     See also:
     REST API Reference for aiProfilesList Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-list/
     
     - GET /api/2.0/ai/profiles/list
     - Lists the portal's AI provider profiles.
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<[AiProfile]> 
     */
    open class func aiProfilesListWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<[AiProfile]> {
        let localVariablePath = "/api/2.0/ai/profiles/list"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[AiProfile]>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     List models
     
     See also:
     REST API Reference for aiProfilesListModels Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-list-models/
     - parameter profileId: (query) The AI provider profile identifier. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: [AiModel]
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiProfilesListModels(profileId: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> [AiModel] {
        return try await aiProfilesListModelsWithRequestBuilder(profileId: profileId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     List models
     
     See also:
     REST API Reference for aiProfilesListModels Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-list-models/
     
     - GET /api/2.0/ai/profiles/list-models
     - Lists the models the given profile's provider offers, as reported by the provider itself.
     - parameter profileId: (query) The AI provider profile identifier. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<[AiModel]> 
     */
    open class func aiProfilesListModelsWithRequestBuilder(profileId: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<[AiModel]> {
        let localVariablePath = "/api/2.0/ai/profiles/list-models"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "profileId": (wrappedValue: profileId.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[AiModel]>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     List provider models
     
     See also:
     REST API Reference for aiProfilesListProviderModels Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-list-provider-models/
     - parameter aiProfilesListProviderModelsRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: [AiModel]
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiProfilesListProviderModels(aiProfilesListProviderModelsRequest: AiProfilesListProviderModelsRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> [AiModel] {
        return try await aiProfilesListProviderModelsWithRequestBuilder(aiProfilesListProviderModelsRequest: aiProfilesListProviderModelsRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     List provider models
     
     See also:
     REST API Reference for aiProfilesListProviderModels Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-list-provider-models/
     
     - POST /api/2.0/ai/profiles/list-provider-models
     - Lists the models a provider offers for the supplied endpoint and key, before any profile is created from them.
     - parameter aiProfilesListProviderModelsRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<[AiModel]> 
     */
    open class func aiProfilesListProviderModelsWithRequestBuilder(aiProfilesListProviderModelsRequest: AiProfilesListProviderModelsRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<[AiModel]> {
        let localVariablePath = "/api/2.0/ai/profiles/list-provider-models"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: aiProfilesListProviderModelsRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[AiModel]>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Test connection
     
     See also:
     REST API Reference for aiProfilesTestConnection Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-test-connection/
     - parameter body: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiProfilesTestConnection200Response
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiProfilesTestConnection(body: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiProfilesTestConnection200Response {
        return try await aiProfilesTestConnectionWithRequestBuilder(body: body, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Test connection
     
     See also:
     REST API Reference for aiProfilesTestConnection Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-test-connection/
     
     - POST /api/2.0/ai/profiles/test-connection
     - Checks a stored profile's credentials against its provider and reports the provider's own error when the call fails. Nothing is written.
     - parameter body: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiProfilesTestConnection200Response> 
     */
    open class func aiProfilesTestConnectionWithRequestBuilder(body: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiProfilesTestConnection200Response> {
        let localVariablePath = "/api/2.0/ai/profiles/test-connection"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiProfilesTestConnection200Response>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Update
     
     See also:
     REST API Reference for aiProfilesUpdate Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-update/
     - parameter aiProfile: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiProfileMutationResult
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiProfilesUpdate(aiProfile: AiProfile, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiProfileMutationResult {
        return try await aiProfilesUpdateWithRequestBuilder(aiProfile: aiProfile, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Update
     
     See also:
     REST API Reference for aiProfilesUpdate Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-update/
     
     - PUT /api/2.0/ai/profiles/update
     - Updates an AI provider profile, re-checking name uniqueness and the provider credentials.
     - parameter aiProfile: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AiProfileMutationResult> 
     */
    open class func aiProfilesUpdateWithRequestBuilder(aiProfile: AiProfile, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AiProfileMutationResult> {
        let localVariablePath = "/api/2.0/ai/profiles/update"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: aiProfile, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AiProfileMutationResult>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }
}
