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
     Change the client activation status
     
     See also:
     REST API Reference for changeActivation Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/change-activation/
     - parameter clientId: (path) The client identifier.      - parameter changeClientActivationRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: JSONValue
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func changeActivation(clientId: String, changeClientActivationRequest: ChangeClientActivationRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> JSONValue {
        return try await changeActivationWithRequestBuilder(clientId: clientId, changeClientActivationRequest: changeClientActivationRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Change the client activation status
     
     See also:
     REST API Reference for changeActivation Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/change-activation/
     
     - PATCH /api/2.0/clients/{clientId}/activation
     - Activates or deactivates an OAuth2 client. When deactivated, the client cannot request new access tokens, but existing tokens will remain valid until they expire.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: asc_auth_key
     - parameter clientId: (path) The client identifier. 
     - parameter changeClientActivationRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<JSONValue> 
     */
    open class func changeActivationWithRequestBuilder(clientId: String, changeClientActivationRequest: ChangeClientActivationRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<JSONValue> {
        var localVariablePath = "/api/2.0/clients/{clientId}/activation"
        let clientIdPreEscape = "\(APIHelper.mapValueToPathItem(clientId))"
        let clientIdPostEscape = clientIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{clientId}", with: clientIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: changeClientActivationRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<JSONValue>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Create a new OAuth2 client
     
     See also:
     REST API Reference for createClient Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-client/
     - parameter createClientRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ClientResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func createClient(createClientRequest: CreateClientRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ClientResponse {
        return try await createClientWithRequestBuilder(createClientRequest: createClientRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Create a new OAuth2 client
     
     See also:
     REST API Reference for createClient Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/create-client/
     
     - POST /api/2.0/clients
     - Creates a new OAuth2 client with the specified configuration. The client will be created with the provided scopes, redirect URIs, and other settings. Returns the created client details including the generated client ID.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: asc_auth_key
     - parameter createClientRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ClientResponse> 
     */
    open class func createClientWithRequestBuilder(createClientRequest: CreateClientRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ClientResponse> {
        let localVariablePath = "/api/2.0/clients"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createClientRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ClientResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Delete an OAuth2 client
     
     See also:
     REST API Reference for deleteClient Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-client/
     - parameter clientId: (path) The client identifier. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: JSONValue
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func deleteClient(clientId: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> JSONValue {
        return try await deleteClientWithRequestBuilder(clientId: clientId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Delete an OAuth2 client
     
     See also:
     REST API Reference for deleteClient Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-client/
     
     - DELETE /api/2.0/clients/{clientId}
     - Permanently deletes an OAuth2 client and all associated data. All access and refresh tokens issued to this client will be invalidated. This operation cannot be undone.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: asc_auth_key
     - parameter clientId: (path) The client identifier. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<JSONValue> 
     */
    open class func deleteClientWithRequestBuilder(clientId: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<JSONValue> {
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

        let localVariableRequestBuilder: RequestBuilder<JSONValue>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Regenerate the client secret
     
     See also:
     REST API Reference for regenerateSecret Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/regenerate-secret/
     - parameter clientId: (path) The client identifier. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ClientSecretResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func regenerateSecret(clientId: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ClientSecretResponse {
        return try await regenerateSecretWithRequestBuilder(clientId: clientId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Regenerate the client secret
     
     See also:
     REST API Reference for regenerateSecret Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/regenerate-secret/
     
     - PATCH /api/2.0/clients/{clientId}/regenerate
     - Generates a new client secret for the specified OAuth2 client. The old secret will be immediately invalidated. This operation should be used with caution as it requires updating the secret in all client applications.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: asc_auth_key
     - parameter clientId: (path) The client identifier. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ClientSecretResponse> 
     */
    open class func regenerateSecretWithRequestBuilder(clientId: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ClientSecretResponse> {
        var localVariablePath = "/api/2.0/clients/{clientId}/regenerate"
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

        let localVariableRequestBuilder: RequestBuilder<ClientSecretResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Revoke client consent
     
     See also:
     REST API Reference for revokeUserClient Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/revoke-user-client/
     - parameter clientId: (path) The client identifier. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: JSONValue
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func revokeUserClient(clientId: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> JSONValue {
        return try await revokeUserClientWithRequestBuilder(clientId: clientId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Revoke client consent
     
     See also:
     REST API Reference for revokeUserClient Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/revoke-user-client/
     
     - DELETE /api/2.0/clients/{clientId}/revoke
     - Revokes all user consents for the specified OAuth2 client. This will invalidate all access tokens and refresh tokens issued to this client for the current user. The user will need to re-authorize the client to access their resources.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: asc_auth_key
     - parameter clientId: (path) The client identifier. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<JSONValue> 
     */
    open class func revokeUserClientWithRequestBuilder(clientId: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<JSONValue> {
        var localVariablePath = "/api/2.0/clients/{clientId}/revoke"
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

        let localVariableRequestBuilder: RequestBuilder<JSONValue>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Update an existing OAuth2 client
     
     See also:
     REST API Reference for updateClient Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/update-client/
     - parameter clientId: (path) The client identifier.      - parameter updateClientRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: JSONValue
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func updateClient(clientId: String, updateClientRequest: UpdateClientRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> JSONValue {
        return try await updateClientWithRequestBuilder(clientId: clientId, updateClientRequest: updateClientRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Update an existing OAuth2 client
     
     See also:
     REST API Reference for updateClient Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/update-client/
     
     - PUT /api/2.0/clients/{clientId}
     - Updates the configuration of an existing OAuth2 client, allowing modifications to the client name, description, redirect URIs, and other settings. The client ID cannot be modified.
     - API Key:
       - type: apiKey asc_auth_key 
       - name: asc_auth_key
     - parameter clientId: (path) The client identifier. 
     - parameter updateClientRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<JSONValue> 
     */
    open class func updateClientWithRequestBuilder(clientId: String, updateClientRequest: UpdateClientRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<JSONValue> {
        var localVariablePath = "/api/2.0/clients/{clientId}"
        let clientIdPreEscape = "\(APIHelper.mapValueToPathItem(clientId))"
        let clientIdPostEscape = clientIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{clientId}", with: clientIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateClientRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<JSONValue>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
