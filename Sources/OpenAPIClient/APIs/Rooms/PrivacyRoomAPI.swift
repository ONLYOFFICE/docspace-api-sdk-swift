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
     Delete an encryption key
     
     See also:
     REST API Reference for deleteKeys Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-keys/
     - parameter id: (path) The pair to delete, taken from the `id` of an entry of `GET api/2.0/privacyroom/keys`. Only the caller's own  pairs can be named here. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func deleteKeys(id: UUID, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await deleteKeysWithRequestBuilder(id: id, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Delete an encryption key
     
     See also:
     REST API Reference for deleteKeys Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-keys/
     
     - DELETE /api/2.0/privacyroom/keys/{id}
     - Removes one encryption key pair from the calling user's own key set and answers 204 with no body. The pair is  named by the `id` of an entry of `GET api/2.0/privacyroom/keys`; the caller's other pairs stay as they are.  The call is destructive and cannot be repeated: the key material is gone for good, a second delete of the same  `id`, like an `id` that was never stored, is answered with 404, and there is no parameter for another user's  keys, so an authenticated member only ever deletes their own while a guest is refused. Deleting the last key  the caller holds locks them out of the private rooms they belong to, their own rooms included: the rooms and  their content survive untouched and stay listed as private, but `GET api/2.0/privacyroom/{roomId}/access` then  refuses the caller until a new key is stored with `POST api/2.0/privacyroom/keys`. Before DocSpace 4.0 the  call answered 200 with the caller's remaining keys, so a client that read that list has to call  `GET api/2.0/privacyroom/keys` instead.
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
     - parameter id: (path) The pair to delete, taken from the `id` of an entry of `GET api/2.0/privacyroom/keys`. Only the caller's own  pairs can be named here. 
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
     Get own encryption keys
     
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
     Get own encryption keys
     
     See also:
     REST API Reference for getUserKeys Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-user-keys/
     
     - GET /api/2.0/privacyroom/keys
     - Returns every encryption key pair the calling user holds, the encrypted private half included, which is the  material a client needs in order to decrypt content in a private room. The set is personal and there is no  parameter for another user's keys: an authenticated caller reads only their own, and a guest, who cannot own  key material at all, always reads an empty set. The call is read-only. An empty answer, whether an empty list  or none at all, means no key has been created yet, and until `POST api/2.0/privacyroom/keys` creates one the  user cannot be invited to a private room. Each entry carries the pair's `id`, its owner in `userId`, the  moment the material was stored in `date`, the public half, the private half encrypted with the user's  password, and the portal-wide crypto engine in `cryptoEngineId`. For the keys that open a whole private room  use `GET api/2.0/privacyroom/{roomId}/access`, and for the keys a single file is shared with use  `GET api/2.0/files/file/{fileId}/publickeys`; this operation is about the caller alone.
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
     Get private room access keys
     
     See also:
     REST API Reference for getUserKeysForRoom Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-user-keys-for-room/
     - parameter roomId: (path) The private room whose access keys are read. Take it from the `id` of the room returned by  `POST api/2.0/files/rooms` or listed by `GET api/2.0/files/rooms`. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: EncryptionKeyArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getUserKeysForRoom(roomId: Int, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> EncryptionKeyArrayWrapper {
        return try await getUserKeysForRoomWithRequestBuilder(roomId: roomId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get private room access keys
     
     See also:
     REST API Reference for getUserKeysForRoom Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/get-user-keys-for-room/
     
     - GET /api/2.0/privacyroom/{roomId}/access
     - Returns the encryption keys that give access to a private room: one entry per key held by each of its members,  which is what a client needs in order to encrypt a file key for everyone allowed to open the room's content.  Only the caller's own entries carry `privateKeyEnc`; another member's entry carries the public half alone, and  an entry with no public half is not reported as access at all. The room has to be a private one, a room  created without private mode holds no access keys and the call is refused, and it has to still exist: an  unknown room, or one already moved to Trash, is reported as missing, while an archived private room still  answers. Access follows room membership and not portal role: any member from read access upwards receives the  full set, whereas a DocSpace administrator who is not a member is refused, and so is a caller holding no key  of their own, the room creator included once they delete their last key. The call is read-only. For the keys  of a single file use `GET api/2.0/files/file/{fileId}/publickeys`.
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
     - parameter roomId: (path) The private room whose access keys are read. Take it from the `id` of the room returned by  `POST api/2.0/files/rooms` or listed by `GET api/2.0/files/rooms`. 
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
     Rotate an encryption key
     
     See also:
     REST API Reference for replaceKey Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/replace-key/
     - parameter encryptionKeyRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: EncryptionKeyArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func replaceKey(encryptionKeyRequestDto: EncryptionKeyRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> EncryptionKeyArrayWrapper {
        return try await replaceKeyWithRequestBuilder(encryptionKeyRequestDto: encryptionKeyRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Rotate an encryption key
     
     See also:
     REST API Reference for replaceKey Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/replace-key/
     
     - PUT /api/2.0/privacyroom/keys
     - Rotates one encryption key pair of the calling user: the entry whose `id` matches is overwritten with the  submitted `publicKey` and `privateKeyEnc`, and the caller's other pairs are left untouched. The pair has to  exist already, an `id` that is not in the caller's set is answered with 404, and a first key is created with  `POST api/2.0/privacyroom/keys`. This is a full replacement rather than a merge: both halves are mandatory,  and a request that omits or blanks one of them is rejected as invalid with the stored pair surviving  unchanged, so a rotation that means to keep the private half has to send it again. Omitting `id` targets the  all-zero pair, the one a client that never sets an id keeps rotating. Every authenticated member rotates their  own keys and only their own, and a guest is refused. The call is mutating, and repeating it with the same body  leaves the same state. It answers with every key the caller holds afterwards, and from then on  `GET api/2.0/privacyroom/{roomId}/access` reports the new public half for this member.
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
     - parameter encryptionKeyRequestDto: (body)  (optional)
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
     Create an encryption key
     
     See also:
     REST API Reference for setKeys Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-keys/
     - parameter encryptionKeyRequestDto: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: EncryptionKeyArrayWrapper
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func setKeys(encryptionKeyRequestDto: EncryptionKeyRequestDto? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> EncryptionKeyArrayWrapper {
        return try await setKeysWithRequestBuilder(encryptionKeyRequestDto: encryptionKeyRequestDto, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Create an encryption key
     
     See also:
     REST API Reference for setKeys Operation
     https://api.onlyoffice.com/docspace/api-backend/usage-api/set-keys/
     
     - POST /api/2.0/privacyroom/keys
     - Stores a new encryption key pair for the calling user and answers with that user's whole key set. The material  is end-to-end: `publicKey` is the half other members use to encrypt file keys for this user, while  `privateKeyEnc` arrives already encrypted with the user's own password, so the portal keeps it as opaque text.  A member must hold at least one key before they can be invited to a private room, which makes this the first  call of the private-room flow. Every authenticated member manages their own keys and only their own, there is  no parameter for somebody else's, and a guest is refused, which is also why a guest cannot become a member of  a private room. The call is mutating and is not safe to repeat: `id` names the pair inside the caller's set  and an `id` that is already stored is answered with 409, while a request that omits or blanks either half is  rejected as invalid and stores nothing. A successful call answers 201 with every key the caller now holds. To  change the material of an existing pair use `PUT api/2.0/privacyroom/keys`.
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
     - parameter encryptionKeyRequestDto: (body)  (optional)
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
