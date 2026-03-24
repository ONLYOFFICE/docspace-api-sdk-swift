//
//  Copyright (c) Ascensio System SIA 2025
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
     - parameter clientId: (path) The client identifier. 
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
     
     - GET /api/2.0/clients/{clientId}
     - Retrieves detailed information about a specific OAuth2 client including its name, description, redirect URIs, and scopes.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: asc_auth_key
     - parameter clientId: (path) The client identifier. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ClientResponse> 
     */
    open class func getClientWithRequestBuilder(clientId: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ClientResponse> {
        var localVariablePath = "/api/2.0/clients/{clientId}"
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
     Get detailed client information
     
     See also:
     REST API Reference for getClientInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-client-info/
     - parameter clientId: (path) The client identifier. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ClientInfoResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getClientInfo(clientId: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ClientInfoResponse {
        return try await getClientInfoWithRequestBuilder(clientId: clientId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get detailed client information
     
     See also:
     REST API Reference for getClientInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-client-info/
     
     - GET /api/2.0/clients/{clientId}/info
     - Retrieves the detailed information for a client with the ID specified in the request.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: asc_auth_key
     - parameter clientId: (path) The client identifier. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ClientInfoResponse> 
     */
    open class func getClientInfoWithRequestBuilder(clientId: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ClientInfoResponse> {
        var localVariablePath = "/api/2.0/clients/{clientId}/info"
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
     Get clients
     
     See also:
     REST API Reference for getClients Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-clients/
     - parameter limit: (query) The maximum number of results returned per page.      - parameter lastClientId: (query) The ID of the last retrieved client. (optional)     - parameter lastCreatedOn: (query) The creation date of the last retrieved client. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: PageableResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getClients(limit: Int, lastClientId: String? = nil, lastCreatedOn: Date? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> PageableResponse {
        return try await getClientsWithRequestBuilder(limit: limit, lastClientId: lastClientId, lastCreatedOn: lastCreatedOn, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get clients
     
     See also:
     REST API Reference for getClients Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-clients/
     
     - GET /api/2.0/clients
     - Retrieves a paginated list of OAuth2 clients. The results can be paginated using the 'limit' parameter and the last seen client ID or creation date.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: asc_auth_key
     - parameter limit: (query) The maximum number of results returned per page. 
     - parameter lastClientId: (query) The ID of the last retrieved client. (optional)
     - parameter lastCreatedOn: (query) The creation date of the last retrieved client. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<PageableResponse> 
     */
    open class func getClientsWithRequestBuilder(limit: Int, lastClientId: String? = nil, lastCreatedOn: Date? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<PageableResponse> {
        let localVariablePath = "/api/2.0/clients"
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

        let localVariableRequestBuilder: RequestBuilder<PageableResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get detailed information of clients
     
     See also:
     REST API Reference for getClientsInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-clients-info/
     - parameter limit: (query) The maximum number of results returned per page.      - parameter lastClientId: (query) The identifier of the last retrieved client. (optional)     - parameter lastCreatedOn: (query) The creation date of the last retrieved client. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: PageableResponseClientInfoResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getClientsInfo(limit: Int, lastClientId: String? = nil, lastCreatedOn: Date? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> PageableResponseClientInfoResponse {
        return try await getClientsInfoWithRequestBuilder(limit: limit, lastClientId: lastClientId, lastCreatedOn: lastCreatedOn, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get detailed information of clients
     
     See also:
     REST API Reference for getClientsInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-clients-info/
     
     - GET /api/2.0/clients/info
     - Retrieves a paginated list of information for all clients.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: asc_auth_key
     - parameter limit: (query) The maximum number of results returned per page. 
     - parameter lastClientId: (query) The identifier of the last retrieved client. (optional)
     - parameter lastCreatedOn: (query) The creation date of the last retrieved client. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<PageableResponseClientInfoResponse> 
     */
    open class func getClientsInfoWithRequestBuilder(limit: Int, lastClientId: String? = nil, lastCreatedOn: Date? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<PageableResponseClientInfoResponse> {
        let localVariablePath = "/api/2.0/clients/info"
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

        let localVariableRequestBuilder: RequestBuilder<PageableResponseClientInfoResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get user consents
     
     See also:
     REST API Reference for getConsents Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-consents/
     - parameter limit: (query) The maximum number of results returned per page.      - parameter lastModifiedOn: (query) The date when the user consent was last modified. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: PageableModificationResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getConsents(limit: Int, lastModifiedOn: Date? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> PageableModificationResponse {
        return try await getConsentsWithRequestBuilder(limit: limit, lastModifiedOn: lastModifiedOn, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get user consents
     
     See also:
     REST API Reference for getConsents Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-consents/
     
     - GET /api/2.0/clients/consents
     - Retrieves a paginated list of user consents.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: asc_auth_key
     - parameter limit: (query) The maximum number of results returned per page. 
     - parameter lastModifiedOn: (query) The date when the user consent was last modified. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<PageableModificationResponse> 
     */
    open class func getConsentsWithRequestBuilder(limit: Int, lastModifiedOn: Date? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<PageableModificationResponse> {
        let localVariablePath = "/api/2.0/clients/consents"
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
     Get public client information
     
     See also:
     REST API Reference for getPublicClientInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-public-client-info/
     - parameter clientId: (path) The client identifier. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ClientInfoResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getPublicClientInfo(clientId: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ClientInfoResponse {
        return try await getPublicClientInfoWithRequestBuilder(clientId: clientId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get public client information
     
     See also:
     REST API Reference for getPublicClientInfo Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-public-client-info/
     
     - GET /api/2.0/clients/{clientId}/public/info
     - Returns the public information for a client with the ID secified din the request.
     - parameter clientId: (path) The client identifier. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ClientInfoResponse> 
     */
    open class func getPublicClientInfoWithRequestBuilder(clientId: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ClientInfoResponse> {
        var localVariablePath = "/api/2.0/clients/{clientId}/public/info"
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
