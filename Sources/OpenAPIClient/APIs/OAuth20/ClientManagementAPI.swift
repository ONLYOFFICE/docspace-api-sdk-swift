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
     Change client activation status
     
     See also:
     REST API Reference for changeActivation Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/change-activation/
     - parameter clientId: (path) ID of the client to change activation for      - parameter changeClientActivationRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func changeActivation(clientId: String, changeClientActivationRequest: ChangeClientActivationRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await changeActivationWithRequestBuilder(clientId: clientId, changeClientActivationRequest: changeClientActivationRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Change client activation status
     
     See also:
     REST API Reference for changeActivation Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/change-activation/
     
     - PATCH /api/2.0/oauth2/clients/{clientId}/activation
     - Enables or disables an existing client and answers 200 with an empty body. A disabled client can no longer obtain new tokens, but the tokens and consents it already holds stay valid until they expire on their own: disable a client to stop new authorizations, delete it to end the existing ones. An administrator may change any client of the tenant, a plain user only the clients they created. The body carries the single activation flag, and a client the caller may not see is reported as not found rather than as forbidden.
     - API Key:
       - type: apiKey x-signature 
       - name: x-signature
     - parameter clientId: (path) ID of the client to change activation for 
     - parameter changeClientActivationRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func changeActivationWithRequestBuilder(clientId: String, changeClientActivationRequest: ChangeClientActivationRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<Void> {
        var localVariablePath = "/api/2.0/oauth2/clients/{clientId}/activation"
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

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

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
     
     - POST /api/2.0/oauth2/clients
     - Registers a new OAuth2 client in the caller's tenant and returns it. The body must carry a name, a description, a logo and at least one redirect URI, allowed origin and scope, and every scope named must already exist in the tenant's scope catalogue. Administrators and users may both register clients; the caller is recorded as the creator, which is what later restricts a plain user to the clients they created. The response is the stored client with its generated client ID and secret, and it is the first place either value can be read. Some deployments cap how many clients one tenant may hold, and reaching that cap is reported as 400 together with the validation failures.
     - API Key:
       - type: apiKey x-signature 
       - name: x-signature
     - parameter createClientRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ClientResponse> 
     */
    open class func createClientWithRequestBuilder(createClientRequest: CreateClientRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ClientResponse> {
        let localVariablePath = "/api/2.0/oauth2/clients"
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
     - parameter clientId: (path) ID of the client to delete 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func deleteClient(clientId: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await deleteClientWithRequestBuilder(clientId: clientId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Delete an OAuth2 client
     
     See also:
     REST API Reference for deleteClient Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-client/
     
     - DELETE /api/2.0/oauth2/clients/{clientId}
     - Deletes one client from the tenant permanently and answers 200 with an empty body. An administrator may delete any client of the tenant, a plain user only the clients they created, and a client the caller may not see is reported as not found rather than as forbidden. The authorizations and consents issued for the client are removed too, but that cleanup is driven by a message and completes on the authorization service after this call has already returned. A delete that removes no row answers 400. The operation cannot be undone.
     - API Key:
       - type: apiKey x-signature 
       - name: x-signature
     - parameter clientId: (path) ID of the client to delete 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func deleteClientWithRequestBuilder(clientId: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<Void> {
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

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Delete all tenant OAuth2 clients
     
     See also:
     REST API Reference for deleteTenantClients Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-tenant-clients/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func deleteTenantClients(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await deleteTenantClientsWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Delete all tenant OAuth2 clients
     
     See also:
     REST API Reference for deleteTenantClients Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-tenant-clients/
     
     - DELETE /api/2.0/oauth2/clients/tenant
     - Deletes every client registered in the current tenant and answers 200 with an empty body. Only an administrator may call it - for a plain user or a guest it is refused with 403 - and it removes the clients of all users of the tenant, not only those of the caller. The authorizations and consents of the deleted clients are cleaned up asynchronously on the authorization service, and the tenant's client cache is dropped as part of the call. Concurrent modification that survives the retries is reported as 400. The operation cannot be undone, and the response does not say how many clients were removed.
     - API Key:
       - type: apiKey x-signature 
       - name: x-signature
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func deleteTenantClientsWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<Void> {
        let localVariablePath = "/api/2.0/oauth2/clients/tenant"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Delete all user OAuth2 clients
     
     See also:
     REST API Reference for deleteUserClients Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-user-clients/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func deleteUserClients(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await deleteUserClientsWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Delete all user OAuth2 clients
     
     See also:
     REST API Reference for deleteUserClients Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-user-clients/
     
     - DELETE /api/2.0/oauth2/clients
     - Deletes every client the calling user created in the current tenant and answers 200 with an empty body. The caller's own identity always selects the set, so this never reaches clients created by somebody else, not even for an administrator. The authorizations and consents of the deleted clients are cleaned up asynchronously on the authorization service, and the tenant's client cache is dropped as part of the call. Concurrent modification that survives the retries is reported as 400. The operation cannot be undone, and the response does not say how many clients were removed.
     - API Key:
       - type: apiKey x-signature 
       - name: x-signature
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func deleteUserClientsWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<Void> {
        let localVariablePath = "/api/2.0/oauth2/clients"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Regenerate client secret
     
     See also:
     REST API Reference for regenerateSecret Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/regenerate-secret/
     - parameter clientId: (path) ID of the client to regenerate secret for 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ClientSecretResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func regenerateSecret(clientId: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> ClientSecretResponse {
        return try await regenerateSecretWithRequestBuilder(clientId: clientId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Regenerate client secret
     
     See also:
     REST API Reference for regenerateSecret Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/regenerate-secret/
     
     - PATCH /api/2.0/oauth2/clients/{clientId}/regenerate
     - Issues a new secret for the client and returns it. The previous secret stops working as soon as this call succeeds, there is no grace period and no way to recover it, so every deployed copy of the client has to be updated with the value returned here. An administrator may do this for any client of the tenant, a plain user only for the clients they created. Tokens already issued to the client keep working; only future client authentication is affected. The response carries the new secret and nothing else.
     - API Key:
       - type: apiKey x-signature 
       - name: x-signature
     - parameter clientId: (path) ID of the client to regenerate secret for 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ClientSecretResponse> 
     */
    open class func regenerateSecretWithRequestBuilder(clientId: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<ClientSecretResponse> {
        var localVariablePath = "/api/2.0/oauth2/clients/{clientId}/regenerate"
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
     - parameter clientId: (path) ID of the client to revoke consent for 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func revokeUserClient(clientId: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await revokeUserClientWithRequestBuilder(clientId: clientId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Revoke client consent
     
     See also:
     REST API Reference for revokeUserClient Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/revoke-user-client/
     
     - DELETE /api/2.0/oauth2/clients/{clientId}/revoke
     - Revokes the calling user's own consent for one client and answers 200 with an empty body. It touches only the caller's grant: other users keep their consents and the client itself stays registered. Guests may call it as well as users and administrators, because it can never reach anyone else's data. The revocation is carried out by the authorization service over gRPC, so a service that reports nothing was revoked produces 400 and a service that cannot be reached produces 503. Once it succeeds the user has to authorize the client again before it can act on their behalf.
     - API Key:
       - type: apiKey x-signature 
       - name: x-signature
     - parameter clientId: (path) ID of the client to revoke consent for 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func revokeUserClientWithRequestBuilder(clientId: String, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<Void> {
        var localVariablePath = "/api/2.0/oauth2/clients/{clientId}/revoke"
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

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Update an existing OAuth2 client
     
     See also:
     REST API Reference for updateClient Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/update-client/
     - parameter clientId: (path) ID of the client to update      - parameter updateClientRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func updateClient(clientId: String, updateClientRequest: UpdateClientRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await updateClientWithRequestBuilder(clientId: clientId, updateClientRequest: updateClientRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Update an existing OAuth2 client
     
     See also:
     REST API Reference for updateClient Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/update-client/
     
     - PUT /api/2.0/oauth2/clients/{clientId}
     - Updates the mutable settings of an existing client and answers 200 with an empty body. Only the fields carried in the request body change; the client ID, the secret, the tenant and the creator cannot be changed this way. An administrator may update any client of the tenant, a plain user only the clients they created, and a client the caller may not see is reported as not found rather than as forbidden. The write runs under optimistic locking and is retried a few times, so a request that still loses the race is rejected with 400 instead of silently overwriting a concurrent change. Nothing is returned in the body - read the client back to see the stored result.
     - API Key:
       - type: apiKey x-signature 
       - name: x-signature
     - parameter clientId: (path) ID of the client to update 
     - parameter updateClientRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func updateClientWithRequestBuilder(clientId: String, updateClientRequest: UpdateClientRequest, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<Void> {
        var localVariablePath = "/api/2.0/oauth2/clients/{clientId}"
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

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
