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
     Get client details
     
     See also:
     REST API Reference for getClient Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-client/
     - parameter clientId: (path) ID of the client to retrieve 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ClientResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getClient(clientId: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ClientResponse {
        return try await getClientWithRequestBuilder(clientId: clientId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get client details
     
     See also:
     REST API Reference for getClient Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-client/
     
     - GET /api/2.0/oauth2/clients/{clientId}
     - Returns the whole stored record of one client: its name and description, its secret, scopes, redirect URIs, allowed origins, logout redirect URIs and audit fields. An administrator sees any client of the tenant, a plain user only the clients they created, and a guest none of them. Whatever the caller may not see is reported as 404 rather than 403, so absence and lack of access are deliberately indistinguishable, and an identifier that is not a valid client ID is reported the same way. The response is a single object, not a collection.
     - API Key:
       - type: apiKey x-signature 
       - name: x-signature
     - parameter clientId: (path) ID of the client to retrieve 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ClientResponse> 
     */
    open class func getClientWithRequestBuilder(clientId: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ClientResponse> {
        var localVariablePath = "/api/2.0/oauth2/clients/{clientId}"
        let clientIdPreEscape = "\(APIHelper.mapValueToPathItem(clientId))"
        let clientIdPostEscape = clientIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{clientId}", with: clientIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ClientResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get client info
     
     See also:
     REST API Reference for getClientInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-client-info/
     - parameter clientId: (path) ID of the client to retrieve 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ClientInfoResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getClientInfo(clientId: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ClientInfoResponse {
        return try await getClientInfoWithRequestBuilder(clientId: clientId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get client info
     
     See also:
     REST API Reference for getClientInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-client-info/
     
     - GET /api/2.0/oauth2/clients/{clientId}/info
     - Retrieves the detailed information for a client with the ID specified in the request. It returns the consent-facing subset of the client - name, description, logo, the website, terms and policy URLs, authentication methods and scopes - and deliberately omits the secret, the redirect URIs and the allowed origins, which is what makes it safe to render on a consent screen. An administrator sees any client of the tenant, a plain user only the clients they created, and a guest none of them. A client the caller may not see is reported as 404, exactly like an unknown one.
     - API Key:
       - type: apiKey x-signature 
       - name: x-signature
     - parameter clientId: (path) ID of the client to retrieve 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ClientInfoResponse> 
     */
    open class func getClientInfoWithRequestBuilder(clientId: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ClientInfoResponse> {
        var localVariablePath = "/api/2.0/oauth2/clients/{clientId}/info"
        let clientIdPreEscape = "\(APIHelper.mapValueToPathItem(clientId))"
        let clientIdPostEscape = clientIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{clientId}", with: clientIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ClientInfoResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     List clients
     
     See also:
     REST API Reference for getClients Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-clients/
     - parameter limit: (query) How many entries to return, between 1 and 50. Defaults to 30 when omitted. (optional, default to 30)     - parameter lastClientId: (query) ID of the last retrieved client (optional)     - parameter lastCreatedOn: (query) Date of the last retrieved client (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: PageableClientResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getClients(limit: Int? = nil, lastClientId: String? = nil, lastCreatedOn: Date? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> PageableClientResponse {
        return try await getClientsWithRequestBuilder(limit: limit, lastClientId: lastClientId, lastCreatedOn: lastCreatedOn, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     List clients
     
     See also:
     REST API Reference for getClients Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-clients/
     
     - GET /api/2.0/oauth2/clients
     - Returns one page of the tenant's clients, newest first, each in the same full form as the single-client read. An administrator sees every client of the tenant, a plain user only the clients they created. Paging is keyset-based rather than offset-based: limit sets the page size, and last_client_id and last_created_on are carried over from the previous page to ask for the next one. The limit defaults to 30 and has to lie between 1 and 50; a value outside that range, or a last_created_on that cannot be parsed as a date, is rejected with 400.
     - API Key:
       - type: apiKey x-signature 
       - name: x-signature
     - parameter limit: (query) How many entries to return, between 1 and 50. Defaults to 30 when omitted. (optional, default to 30)
     - parameter lastClientId: (query) ID of the last retrieved client (optional)
     - parameter lastCreatedOn: (query) Date of the last retrieved client (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<PageableClientResponse> 
     */
    open class func getClientsWithRequestBuilder(limit: Int? = nil, lastClientId: String? = nil, lastCreatedOn: Date? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<PageableClientResponse> {
        let localVariablePath = "/api/2.0/oauth2/clients"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "limit": (wrappedValue: limit?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "last_client_id": (wrappedValue: lastClientId?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "last_created_on": (wrappedValue: lastCreatedOn?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<PageableClientResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     List client info
     
     See also:
     REST API Reference for getClientsInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-clients-info/
     - parameter limit: (query) How many entries to return, between 1 and 50. It has no default and has to be sent on every call.      - parameter lastClientId: (query) ID of the last retrieved client (optional)     - parameter lastCreatedOn: (query) Date of the last retrieved client (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: PageableClientInfoResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getClientsInfo(limit: Int, lastClientId: String? = nil, lastCreatedOn: Date? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> PageableClientInfoResponse {
        return try await getClientsInfoWithRequestBuilder(limit: limit, lastClientId: lastClientId, lastCreatedOn: lastCreatedOn, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     List client info
     
     See also:
     REST API Reference for getClientsInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-clients-info/
     
     - GET /api/2.0/oauth2/clients/info
     - Retrieves a paginated list of information for all clients, each in the same consent-facing form as the single-client info read. An administrator sees every client of the tenant, a plain user only the clients they created. Paging is keyset-based: limit sets the page size, and last_client_id and last_created_on are carried over from the previous page. Unlike the full client listing, limit has no default here - it has to be supplied on every call and has to lie between 1 and 50, and a missing or out-of-range value is rejected with 400.
     - API Key:
       - type: apiKey x-signature 
       - name: x-signature
     - parameter limit: (query) How many entries to return, between 1 and 50. It has no default and has to be sent on every call. 
     - parameter lastClientId: (query) ID of the last retrieved client (optional)
     - parameter lastCreatedOn: (query) Date of the last retrieved client (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<PageableClientInfoResponse> 
     */
    open class func getClientsInfoWithRequestBuilder(limit: Int, lastClientId: String? = nil, lastCreatedOn: Date? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<PageableClientInfoResponse> {
        let localVariablePath = "/api/2.0/oauth2/clients/info"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "limit": (wrappedValue: limit.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "last_client_id": (wrappedValue: lastClientId?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "last_created_on": (wrappedValue: lastCreatedOn?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<PageableClientInfoResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     List user consents
     
     See also:
     REST API Reference for getConsents Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-consents/
     - parameter limit: (query) How many entries to return, between 1 and 50. It has no default and has to be sent on every call.      - parameter lastModifiedOn: (query) Date of the last retrieved consent (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: PageableModificationResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getConsents(limit: Int, lastModifiedOn: Date? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> PageableModificationResponse {
        return try await getConsentsWithRequestBuilder(limit: limit, lastModifiedOn: lastModifiedOn, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     List user consents
     
     See also:
     REST API Reference for getConsents Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-consents/
     
     - GET /api/2.0/oauth2/clients/consents
     - Retrieves a paginated list of user consents: the clients the calling user has authorized, each with the scopes granted, the moment the consent was last changed and the client's consent-facing details. It always reports the caller's own consents and nothing else - there is no role check on this endpoint, so guests may call it too, and no parameter widens it to another user. The consents are read from the authorization service over gRPC, so an authorization service that cannot be reached surfaces as 503. Paging is keyset-based on last_modified_on, and limit has no default: it has to be supplied on every call and has to lie between 1 and 50.
     - API Key:
       - type: apiKey x-signature 
       - name: x-signature
     - parameter limit: (query) How many entries to return, between 1 and 50. It has no default and has to be sent on every call. 
     - parameter lastModifiedOn: (query) Date of the last retrieved consent (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<PageableModificationResponse> 
     */
    open class func getConsentsWithRequestBuilder(limit: Int, lastModifiedOn: Date? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<PageableModificationResponse> {
        let localVariablePath = "/api/2.0/oauth2/clients/consents"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "limit": (wrappedValue: limit.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "last_modified_on": (wrappedValue: lastModifiedOn?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<PageableModificationResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get public client info
     
     See also:
     REST API Reference for getPublicClientInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-public-client-info/
     - parameter clientId: (path) ID of the client to retrieve 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ClientInfoResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getPublicClientInfo(clientId: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ClientInfoResponse {
        return try await getPublicClientInfoWithRequestBuilder(clientId: clientId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get public client info
     
     See also:
     REST API Reference for getPublicClientInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-public-client-info/
     
     - GET /api/2.0/oauth2/clients/{clientId}/public/info
     - Returns the same consent-facing client information as the signed read, but without requiring a portal signature. It is meant for a login or consent page that has to render the client before the user is known, so it resolves the client by ID alone: there is no authentication, no tenant scoping and no creator check, and any caller who knows a client ID can read that client's public details. It still exposes no secret, no redirect URIs and no allowed origins. Being unauthenticated it is rate-limited on a separate, tighter budget than the signed endpoints. An unknown client ID, and an identifier that is not a client ID at all, are both reported as 404.
     - parameter clientId: (path) ID of the client to retrieve 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ClientInfoResponse> 
     */
    open class func getPublicClientInfoWithRequestBuilder(clientId: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ClientInfoResponse> {
        var localVariablePath = "/api/2.0/oauth2/clients/{clientId}/public/info"
        let clientIdPreEscape = "\(APIHelper.mapValueToPathItem(clientId))"
        let clientIdPostEscape = clientIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{clientId}", with: clientIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ClientInfoResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }
}
