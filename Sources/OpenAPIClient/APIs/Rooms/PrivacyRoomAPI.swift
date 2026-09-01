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
     Deletes an encryption key and removes it from the system.
     
     See also:
     REST API Reference for deleteKeys Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-keys/
     - parameter id: (path) The unique identifier of the encryption key to be deleted. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func deleteKeys(id: UUID, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await deleteKeysWithRequestBuilder(id: id, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Deletes an encryption key and removes it from the system.
     
     See also:
     REST API Reference for deleteKeys Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-keys/
     
     - DELETE /api/2.0/privacyroom/keys/{id}
     - Deletes an encryption key and removes it from the system based on the provided key identifier.    Breaking change in DocSpace 4.0: the endpoint used to answer 200 with the caller's remaining  encryption keys and now answers 204 with no body. A client that read that list must call  `GET api/2.0/privacyroom/keys` instead.
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
     - parameter id: (path) The unique identifier of the encryption key to be deleted. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func deleteKeysWithRequestBuilder(id: UUID, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<Void> {
        var localVariablePath = "/api/2.0/privacyroom/keys/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
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
     Retrieves encryption keys associated with the current user.
     
     See also:
     REST API Reference for getUserKeys Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-user-keys/

     - parameter apiConfiguration: The configuration for the http request.
     - returns: EncryptionKeyArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getUserKeys(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> EncryptionKeyArrayWrapper {
        return try await getUserKeysWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Retrieves encryption keys associated with the current user.
     
     See also:
     REST API Reference for getUserKeys Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-user-keys/
     
     - GET /api/2.0/privacyroom/keys
     - Retrieves encryption keys associated with the current user.
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
     - returns: RequestBuilder<EncryptionKeyArrayWrapper> 
     */
    open class func getUserKeysWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<EncryptionKeyArrayWrapper> {
        let localVariablePath = "/api/2.0/privacyroom/keys"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<EncryptionKeyArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Retrieves the encryption keys associated with a specific privacy room.
     
     See also:
     REST API Reference for getUserKeysForRoom Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-user-keys-for-room/
     - parameter roomId: (path) The identifier of the privacy room. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: EncryptionKeyArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getUserKeysForRoom(roomId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> EncryptionKeyArrayWrapper {
        return try await getUserKeysForRoomWithRequestBuilder(roomId: roomId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Retrieves the encryption keys associated with a specific privacy room.
     
     See also:
     REST API Reference for getUserKeysForRoom Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-user-keys-for-room/
     
     - GET /api/2.0/privacyroom/{roomId}/access
     - Retrieves the encryption keys associated with a specific privacy room.
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
     - parameter roomId: (path) The identifier of the privacy room. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<EncryptionKeyArrayWrapper> 
     */
    open class func getUserKeysForRoomWithRequestBuilder(roomId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<EncryptionKeyArrayWrapper> {
        var localVariablePath = "/api/2.0/privacyroom/{roomId}/access"
        let roomIdPreEscape = "\(APIHelper.mapValueToPathItem(roomId))"
        let roomIdPostEscape = roomIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{roomId}", with: roomIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<EncryptionKeyArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Replaces an existing encryption key with a new one for the user.
     
     See also:
     REST API Reference for replaceKey Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/replace-key/
     - parameter encryptionKeyRequestDto: (body) The request object containing the public and private key information to replace the existing key. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: EncryptionKeyArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func replaceKey(encryptionKeyRequestDto: EncryptionKeyRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> EncryptionKeyArrayWrapper {
        return try await replaceKeyWithRequestBuilder(encryptionKeyRequestDto: encryptionKeyRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Replaces an existing encryption key with a new one for the user.
     
     See also:
     REST API Reference for replaceKey Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/replace-key/
     
     - PUT /api/2.0/privacyroom/keys
     - Replaces an existing encryption key with a new one for the user.
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
     - parameter encryptionKeyRequestDto: (body) The request object containing the public and private key information to replace the existing key. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<EncryptionKeyArrayWrapper> 
     */
    open class func replaceKeyWithRequestBuilder(encryptionKeyRequestDto: EncryptionKeyRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<EncryptionKeyArrayWrapper> {
        let localVariablePath = "/api/2.0/privacyroom/keys"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: encryptionKeyRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<EncryptionKeyArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Creates and sets encryption keys for the user.
     
     See also:
     REST API Reference for setKeys Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-keys/
     - parameter encryptionKeyRequestDto: (body) The request object containing public and private key information. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: EncryptionKeyArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func setKeys(encryptionKeyRequestDto: EncryptionKeyRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> EncryptionKeyArrayWrapper {
        return try await setKeysWithRequestBuilder(encryptionKeyRequestDto: encryptionKeyRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Creates and sets encryption keys for the user.
     
     See also:
     REST API Reference for setKeys Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-keys/
     
     - POST /api/2.0/privacyroom/keys
     - Creates and sets encryption keys for the user.
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
     - parameter encryptionKeyRequestDto: (body) The request object containing public and private key information. (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<EncryptionKeyArrayWrapper> 
     */
    open class func setKeysWithRequestBuilder(encryptionKeyRequestDto: EncryptionKeyRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<EncryptionKeyArrayWrapper> {
        let localVariablePath = "/api/2.0/privacyroom/keys"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: encryptionKeyRequestDto, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]


        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<EncryptionKeyArrayWrapper>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
