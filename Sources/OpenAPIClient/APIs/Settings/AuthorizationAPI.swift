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
     Get the authorization services
     
     See also:
     REST API Reference for getAuthServices Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-auth-services/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: AuthServiceRequestsArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getAuthServices(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> AuthServiceRequestsArrayWrapper {
        return try await getAuthServicesWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get the authorization services
     
     See also:
     REST API Reference for getAuthServices Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-auth-services/
     
     - GET /api/2.0/settings/authservice
     - Returns the catalogue of third-party storage and authorization providers DocSpace can integrate with (for  example Amazon S3, Dropbox, Google, or Telegram), including whichever keys were last saved for each one that  currently has any configured. Requires Owner or DocSpaceAdmin (the EditPortalSettings permission). This is a  read-only, idempotent call, and the list is not paginated; entries are ordered by the provider's configured  display order. Only providers that expose at least one manageable key are included, so a provider with nothing  to configure is omitted entirely. Save or change a provider's keys with `POST api/2.0/settings/authservice`.
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
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AuthServiceRequestsArrayWrapper> 
     */
    open class func getAuthServicesWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<AuthServiceRequestsArrayWrapper> {
        let localVariablePath = "/api/2.0/settings/authservice"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AuthServiceRequestsArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Save the authorization keys
     
     See also:
     REST API Reference for saveAuthKeys Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/save-auth-keys/
     - parameter authServiceRequestsDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: BooleanWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func saveAuthKeys(authServiceRequestsDto: AuthServiceRequestsDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> BooleanWrapper {
        return try await saveAuthKeysWithRequestBuilder(authServiceRequestsDto: authServiceRequestsDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Save the authorization keys
     
     See also:
     REST API Reference for saveAuthKeys Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/save-auth-keys/
     
     - POST /api/2.0/settings/authservice
     - Saves the authorization keys for one third-party storage or authorization provider, identified by name, or  clears them when every submitted key is left empty. Requires Owner or DocSpaceAdmin (the EditPortalSettings  permission); a provider that does not allow its keys to be changed from the API rejects the call outright. A  provider that is only available on a paid plan additionally requires the portal's tariff to include  third-party storage, or Standalone licensing, before the call is accepted. Keys that fail the provider's own  validation are cleared and the call is rejected rather than left partially applied. This is a mutating,  idempotent call: resaving identical keys succeeds and reports no change. It returns whether the keys actually  changed, not the keys themselves; connecting Telegram or an external database through this call also triggers  the matching real-time connection update.
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
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter authServiceRequestsDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<BooleanWrapper> 
     */
    open class func saveAuthKeysWithRequestBuilder(authServiceRequestsDto: AuthServiceRequestsDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<BooleanWrapper> {
        let localVariablePath = "/api/2.0/settings/authservice"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: authServiceRequestsDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BooleanWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Test external database connection
     
     See also:
     REST API Reference for testExternalDatabaseConnection Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/test-external-database-connection/
     - parameter externalDatabaseSettings: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ConnectionTestResultWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func testExternalDatabaseConnection(externalDatabaseSettings: ExternalDatabaseSettings? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ConnectionTestResultWrapper {
        return try await testExternalDatabaseConnectionWithRequestBuilder(externalDatabaseSettings: externalDatabaseSettings, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Test external database connection
     
     See also:
     REST API Reference for testExternalDatabaseConnection Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/test-external-database-connection/
     
     - POST /api/2.0/settings/authservice/externaldb/test
     - Probes connectivity to an external database using the settings supplied in the request, without saving them or  affecting the portal's own configuration. Requires Owner or DocSpaceAdmin (the EditPortalSettings permission).  SQLite is only accepted as a target on a Standalone (self-hosted) installation; requesting it on SaaS is  reported as a failed connection rather than an error. This is a read-only call, safe to retry. A failed  connection is not an HTTP error: the response always comes back as a normal success with `success=false` and  an `error` message describing what went wrong.
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
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Reset(Int64)]
     - parameter externalDatabaseSettings: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ConnectionTestResultWrapper> 
     */
    open class func testExternalDatabaseConnectionWithRequestBuilder(externalDatabaseSettings: ExternalDatabaseSettings? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ConnectionTestResultWrapper> {
        let localVariablePath = "/api/2.0/settings/authservice/externaldb/test"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: externalDatabaseSettings, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ConnectionTestResultWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
