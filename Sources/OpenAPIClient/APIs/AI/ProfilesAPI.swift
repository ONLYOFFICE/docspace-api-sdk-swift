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
     Create a provider profile
     
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
     Create a provider profile
     
     See also:
     REST API Reference for aiProfilesCreate Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-create/
     
     - POST /api/2.0/ai/profiles/create
     - Creates an AI provider profile - the endpoint, credentials and model that a chat round runs on - and returns it. The name has to be unique, the credentials are probed against the live provider before anything is stored, and the portal's first profile also takes the `Default` assignment slot. Two inputs are refused outright: a `baseUrl` pointing at a private network address, and `providerType: external`, which delegates transport to the host application and therefore cannot work for a profile the server manages. On a portal running the AI gateway, profiles are managed centrally and this operation answers 403.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
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

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Delete a provider profile
     
     See also:
     REST API Reference for aiProfilesDelete Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-delete/
     - parameter body: (body) The ID of the profile to delete, as a bare JSON string. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiSuccessResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiProfilesDelete(body: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiSuccessResponse {
        return try await aiProfilesDeleteWithRequestBuilder(body: body, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Delete a provider profile
     
     See also:
     REST API Reference for aiProfilesDelete Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-delete/
     
     - DELETE /api/2.0/ai/profiles/delete
     - Deletes an AI provider profile and cleans up every assignment pointing at it: the `Default` slot moves to the first remaining profile and the other slots are left unbound. The ID is required and may be sent in the body or as a query parameter. An unknown ID is not reported - the call answers success without deleting anything. Threads already bound to the profile keep the stored reference, so a round on such a thread falls back to whatever the scope resolves to.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter body: (body) The ID of the profile to delete, as a bare JSON string. 
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

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get a provider profile
     
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
     Get a provider profile
     
     See also:
     REST API Reference for aiProfilesGetById Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-get-by-id/
     
     - GET /api/2.0/ai/profiles/get-by-id
     - Returns one AI provider profile by its ID, with its secrets stripped: neither the API key nor the custom headers are ever sent back, on any portal. The ID is required and is read from the query, and an unknown one answers 404. The `baseUrl` in the answer is the one that was stored, not the internal gateway address a round actually dials, so it cannot be used to reach the provider directly. Use `GET api/2.0/ai/profiles/list` to enumerate profiles instead of reading them one by one.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
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

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     List provider profiles
     
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
     List provider profiles
     
     See also:
     REST API Reference for aiProfilesList Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-list/
     
     - GET /api/2.0/ai/profiles/list
     - Lists the portal's AI provider profiles with their secrets stripped, the same way the single-profile read does. It takes no parameters and is not paginated, because a portal holds few profiles. On a portal running the AI gateway the answer is synthesised from the gateway's own catalogue rather than from stored records. The IDs in the answer are what the assignment operations and every round's `profileId` accept.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
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

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
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
     - Lists the models a stored profile's provider currently offers, asking the provider itself rather than reading a cached list. `profileId` is required and is read from the query. A failure is reported with the provider's own verdict: an unusable key comes back as 400 and a provider that is unreachable or broken as 502, while a missing profile or a caller without access keeps the status the portal gave it. Use `POST api/2.0/ai/profiles/list-provider-models` to probe an endpoint that has no profile yet.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
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

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
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
     - Lists the models an endpoint offers for credentials supplied in the request, before any profile exists - this is what a provider-setup form calls to fill its model picker. `providerType` and `baseUrl` are both required, and a 400 for either names the offending input in a `field` member so the form can highlight it; a `baseUrl` pointing at a private network address is refused as well. For `providerType: onlyoffice` the answer comes from the portal gateway's catalogue, which carries richer capability data than the provider's own listing and matches what `GET api/2.0/ai/profiles/list` reports; a portal without that gateway falls back to asking the provider. A provider that is unreachable or broken is reported as 502, and one that rejects the key as 400.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
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

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Test a profile's provider
     
     See also:
     REST API Reference for aiProfilesTestConnection Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-test-connection/
     - parameter body: (body) The ID of the profile to probe, as a bare JSON string. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: AiProfilesTestConnection200Response
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func aiProfilesTestConnection(body: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AiProfilesTestConnection200Response {
        return try await aiProfilesTestConnectionWithRequestBuilder(body: body, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Test a profile's provider
     
     See also:
     REST API Reference for aiProfilesTestConnection Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-test-connection/
     
     - POST /api/2.0/ai/profiles/test-connection
     - Probes a stored profile's credentials against its provider and reports the outcome in the answer, writing nothing - this is what a Test button calls so that a failure does not commit anything. `profileId` is required and may be sent in the body or as a query parameter. The result is carried in the body rather than in the status, so a failed probe still answers 200 and the caller has to read the payload. To validate credentials that are not stored yet, use `POST api/2.0/ai/profiles/list-provider-models`.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter body: (body) The ID of the profile to probe, as a bare JSON string. 
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

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Update a provider profile
     
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
     Update a provider profile
     
     See also:
     REST API Reference for aiProfilesUpdate Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-update/
     
     - PUT /api/2.0/ai/profiles/update
     - Replaces a stored AI provider profile and returns it, re-checking name uniqueness and probing the credentials against the live provider again. The same two inputs are refused as on create - a private-network `baseUrl` and `providerType: external` - and the whole profile is overwritten by the one supplied rather than merged. On a portal running the AI gateway this answers 403, because profiles are managed centrally there. A profile that is bound to an action or an agent keeps those bindings.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: cookieAuth
     - Bearer Token:
       - type: http
       - name: bearerAuth
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

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
